import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

public class PreProcessor {
	private String path;
	
	private HashMap<String, Integer> bagOfWords;
	
	public PreProcessor(String path)
	{
		this.bagOfWords = new HashMap<String, Integer>();
		this.path = path;
	}
	
	public void start()
	{
		populateRawReviews(path + "neg", 0, 0.50);
		populateRawReviews(path + "pos", 50, 0.50);
		
		System.out.println("Count: " + bagOfWords.size());
		
		removeSimilarWords();
		
		Map<String, Integer> map = Utils.sortByValue(this.bagOfWords);
		String[] words = new String[500];
		
		int minimumPresence = (int) (bagOfWords.size() * 0.005);
		
		int i = 0;
		for(Map.Entry<String, Integer> entry : map.entrySet())
    	{
			if(entry.getValue() < minimumPresence) continue;
			if(i >= 500) break;
			
			words[i] = entry.getKey();
			
			i++;
    	}
		
		new ArffWriter().createArffFile(words, path);
	}
	


	private void removeSimilarWords()
	{
		int threshold = (int) (bagOfWords.size() * 0.001);
		Double temp = (double) bagOfWords.size();
		
		Map<String, Integer> map = Utils.sortByValue(this.bagOfWords);
		HashMap<ScoreKey, Double> scores = new HashMap<ScoreKey, Double>();
		
		temp = temp * temp / 1000000;
		int total = temp.intValue();
		int current = 0;
		int currentM = 0;
		
		for(Map.Entry<String, Integer> entry2 : map.entrySet())
    	{
	        for(Map.Entry<String, Integer> entry : map.entrySet())
	        {
	        	current++;

	        	if(current == 1000000)
	        	{
	        		current = 0;
	        		currentM++;
		        	Double progress = ((double) currentM / (double) total) * 100;
		        	System.out.println("Score computation: " + currentM + "M / " + total + "M (" + String.format("%.2f", progress) + "%)");
	        	}
	        	
	        	if(entry.getKey() == entry2.getKey()) continue;
	        	if(Math.abs(entry.getValue() - entry2.getValue()) < threshold) continue;
	        	if(Math.abs(entry.getKey().length() - entry2.getKey().length()) > 5) continue;
	        	
	        	ScoreKey scoreKey = new ScoreKey(entry2.getKey(), entry2.getValue(), entry.getKey(), entry.getValue());
	        	
	        	double score = StrikeAMatch.compareStrings(entry.getKey(), entry2.getKey());
	        	
	        	if(score > 0.95)
	        	{
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
    			this.bagOfWords.put(scoreKey.k1, scoreKey.k1Count + 1);
    			this.bagOfWords.remove(scoreKey.k2);
        		System.out.println(scoreKey.k2 + " = " + scoreKey.k1);
    		}
    		else
    		{
    			this.bagOfWords.put(scoreKey.k2, scoreKey.k2Count + 1);
    			this.bagOfWords.remove(scoreKey.k1);
        		System.out.println(scoreKey.k1 + " = " + scoreKey.k2);
    		}
    		    		
    		Double progress = ((double) current / (double) total) * 100;
    		System.out.println("Word replacement: " + current + " / " + total + " (" + String.format("%.2f", progress) + "%)");
        }
	}
	
	private void populateRawReviews(String path, Integer currentGlobalProgress, Double multiplier) {
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
		       processFile(file);
		       
		       if(i % 100 == 0)
		       {
		    	   System.out.println("Processed file " + i + " / " + total +". Progress = " + String.format("%.2f", progress) + "%");
		       }
		   }
		}
	}

	private void processFile(File file) 
	{
		String review = null;
		
		try {
			review = FileUtils.readFileToString(file, "UTF-8");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.exit(-1);
		}
		
		String[] words = TextUtils.splitWords(review);
		
		for(int i = 0; i < words.length; i++)
		{
			if(words[i].length() < 2) continue;
			
			if(this.bagOfWords.containsKey(words[i]))
			{
				this.bagOfWords.put(words[i], this.bagOfWords.get(words[i]) + 1);
			}
			else
			{
				this.bagOfWords.put(words[i], 1);
			}
		}
	}
	
	public static void main(String[] args) {
		String path = "\\dataset\\movie_review_dataset\\all\\";
		new PreProcessor(path).start();
	}

}
