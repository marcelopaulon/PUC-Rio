import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

public class PreProcessor {
	private String path;
	
	List<String> stopWords;
	
	private HashMap<String, Integer> bagOfWordsNeg;
	private HashMap<String, Integer> bagOfWordsPos;
	
	private HashMap<ScoreKey, Double> scores;
	
	public PreProcessor(String path, List<String> stopWords)
	{
		this.bagOfWordsNeg = new HashMap<String, Integer>();
		this.bagOfWordsPos = new HashMap<String, Integer>();
		this.scores = new HashMap<ScoreKey, Double>();
		this.path = path;
		this.stopWords = stopWords;
	}
	
	public void start(int numWords)
	{
		populateRawReviews(path + "neg", 0, 0.50, bagOfWordsNeg);
		populateRawReviews(path + "pos", 50, 0.50, bagOfWordsPos);
		
		System.out.println("Count neg: " + bagOfWordsNeg.size());
		System.out.println("Count pos: " + bagOfWordsPos.size());
		
		removeSimilarWords(bagOfWordsNeg);
		removeSimilarWords(bagOfWordsPos);
		
		Map<String, Integer> mapNeg = Utils.sortByValueDesc(this.bagOfWordsNeg);
		Map<String, Integer> mapPos = Utils.sortByValueDesc(this.bagOfWordsPos);
		String[] words = new String[numWords];
				
		int i = 0;
		
		for(Map.Entry<String, Integer> entry : mapNeg.entrySet())
    	{
			if(mapPos.containsKey(entry.getKey()) && mapPos.get(entry.getKey()) > 0.25 * entry.getValue()) 
			{
				continue;
			}
			
			if(i >= numWords / 2) break;
			
			words[i] = entry.getKey();
			
			i++;
    	}
		
		for(Map.Entry<String, Integer> entry : mapPos.entrySet())
    	{
			if(mapNeg.containsKey(entry.getKey()) && mapNeg.get(entry.getKey()) > 0.30 * entry.getValue())
			{
				continue;
			}
			
			if(i >= numWords) break;
			
			words[i] = entry.getKey();
			
			i++;
    	}
		
		HashMap<ScoreKey, Double> selectedWordsScores = new HashMap<ScoreKey, Double>();
		
		List<String> wordsList = Arrays.asList(words);
		
		for(Map.Entry<ScoreKey, Double> scoreEntry : scores.entrySet())
    	{
			if(wordsList.contains(scoreEntry.getKey().k1) || wordsList.contains(scoreEntry.getKey().k2))
			{
				selectedWordsScores.put(scoreEntry.getKey(), scoreEntry.getValue());
			}
    	}
		
		new ArffWriter().createArffFile(words, path, selectedWordsScores);
	}
	
	private void removeSimilarWords(HashMap<String, Integer> bagOfWords)
	{
		int threshold = (int) (bagOfWords.size() * 0.001);
		Double temp = (double) bagOfWords.size();
		
		Map<String, Integer> map = Utils.sortByValue(bagOfWords);
		
		temp = temp * temp / 1000000;
		int total = temp.intValue();
		int current = 0;
		int currentM = 0;
		
		int mapSize = map.size();
		
		for(Map.Entry<String, Integer> entry2 : map.entrySet())
    	{
			String key2 = entry2.getKey(); 
			int key2Length = key2.length();
			
			if(key2Length < 4) 
			{
				current += mapSize;
				continue;
			}
			
	        for(Map.Entry<String, Integer> entry : map.entrySet())
	        {
	        	current++;

	        	String key1 = entry.getKey();
	        	int key1Length = key1.length();
	        	
	        	if(key1Length < 4) continue;
	        	
	        	if(current >= 1000000)
	        	{
	        		current = 0;
	        		currentM++;
		        	Double progress = ((double) currentM / (double) total) * 100;
		        	System.out.println("Score computation: " + currentM + "M / " + total + "M (" + String.format("%.2f", progress) + "%)");
	        	}
	        	
	        	if(key1 == key2) continue;
	        	if(Math.abs(entry.getValue() - entry2.getValue()) < threshold) continue;
	        	if(Math.abs(key1Length - key2Length) > 5) continue;
	        	
	        	double score = StrikeAMatch.compareStrings(key1, key2);
	        	
	        	if(score > 0.90)
	        	{
	        		ScoreKey scoreKey = new ScoreKey(key2, entry2.getValue(), key1, entry.getValue());
		        	
	        		scores.put(scoreKey, score);
	        	}
	        }
    	}
		
		total = scores.size();
		current = 0;
		
        for(Map.Entry<ScoreKey, Double> scoreEntry : scores.entrySet())
        {
        	current++;
        	
        	ScoreKey scoreKey = scoreEntry.getKey();
        	
    		if(scoreKey.k1Count > scoreKey.k2Count)
    		{
    			bagOfWords.put(scoreKey.k1, scoreKey.k1Count + 1);
    			bagOfWords.remove(scoreKey.k2);
        		System.out.println(scoreKey.k2 + " = " + scoreKey.k1);
    		}
    		else
    		{
    			bagOfWords.put(scoreKey.k2, scoreKey.k2Count + 1);
    			bagOfWords.remove(scoreKey.k1);
        		System.out.println(scoreKey.k1 + " = " + scoreKey.k2);
    		}
    		    		
    		Double progress = ((double) current / (double) total) * 100;
    		System.out.println("Word replacement: " + current + " / " + total + " (" + String.format("%.2f", progress) + "%)");
        }
	}
	
	private void populateRawReviews(String path, Integer currentGlobalProgress, Double multiplier, HashMap<String, Integer> map) {
	    String basePath = new File("").getAbsolutePath();
	    System.out.println(basePath + path);
	    
		File directory= new File(basePath + path);
		File[] files = directory.listFiles();
		int total = files.length;
		int i = 0;
		for (File file : files)
		{
		   i++;
		   if (FilenameUtils.getExtension(file.getName()).equals("txt"))
		   {
			   Double progress = currentGlobalProgress + ((double) i / (double) total) * multiplier * 100;
		       processFile(file, map);
		       
		       if(i % 100 == 0)
		       {
		    	   System.out.println("Processed file " + i + " / " + total +". Progress = " + String.format("%.2f", progress) + "%");
		       }
		   }
		}
	}

	private void processFile(File file, HashMap<String, Integer> map) 
	{
		String review = null;
		
		try {
			review = FileUtils.readFileToString(file, "UTF-8");
		} catch (IOException e) {
			e.printStackTrace();
			System.exit(-1);
		}
		
		String[] words = TextUtils.splitWords(review);
		
		for(int i = 0; i < words.length; i++)
		{
			if(words[i].length() < 2) continue;
			
			String word = words[i];
			
			if(stopWords.contains(word)) 
			{
				continue;
			}
			
			if(map.containsKey(word))
			{
				map.put(word, map.get(word) + 1);
			}
			else
			{
				map.put(word, 1);
			}
		}
	}
	
	public static void main(String[] args) {
		String basePath = new File("").getAbsolutePath();
		String path = "\\dataset\\movie_review_dataset\\all\\";
		
		List<String> stopWords = new ArrayList<String>();
		File stopWordsFile = new File(basePath + "\\dataset\\stopwords_eng.txt");
		String[] stopWordsArr = null;
		
		try {
			stopWordsArr = FileUtils.readFileToString(stopWordsFile, "UTF-8").split("\n");
		} catch (IOException e1) {
			e1.printStackTrace();
			System.exit(-1);
		}
		
		for(int i = 0; i < stopWordsArr.length; i++)
		{
			stopWords.add(stopWordsArr[i].trim().toLowerCase());
		}
		
		new PreProcessor(path, stopWords).start(80);
	}

}
