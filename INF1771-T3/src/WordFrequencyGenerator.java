import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

public class WordFrequencyGenerator {

	private String path;
	private String[] wordList;
	private HashMap<String, Integer> bagOfWords;
	
	String basePath = new File("").getAbsolutePath();
	
	public WordFrequencyGenerator(String path, String wordspath)
	{
		File file = new File(basePath + wordspath);
		
		this.wordList = null;
		
		try {
			wordList = FileUtils.readFileToString(file, "UTF-8").split("\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.exit(-1);
		}
		
		if(this.wordList == null) System.exit(-1);
		
		this.bagOfWords = new HashMap<String, Integer>();
		this.path = path;
	}
	
	public void start()
	{
		bagOfWords.clear();
		for(int i = 0; i < wordList.length; i++)
		{
			bagOfWords.put(wordList[i].trim().toLowerCase(), 0);
		}
		
		countWordsInRawReviews(path + "neg", 0, 0.50);
		countWordsInRawReviews(path + "pos", 50, 0.50);
		
		PrintWriter writer = null;
		try {
			writer = new PrintWriter("wfg_output.txt", "UTF-8");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(String selectedWord : wordList)
		{
			String word = selectedWord.trim().toLowerCase();
			for(int i = 0; i < bagOfWords.get(word); i++)
			{
				writer.print(word + " ");
			}
			
			writer.println("");
		}
		
		writer.close();
	}
	
	private void countWordsInRawReviews(String path, Integer currentGlobalProgress, Double multiplier) {
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
			String word = words[i].trim().toLowerCase();
			if(word.length() < 2) continue;
			
			if(this.bagOfWords.containsKey(word))
			{
				this.bagOfWords.put(word, this.bagOfWords.get(word) + 1);
			}
		}
	}

	public static void main(String[] args) {
		String path = "\\dataset\\movie_review_dataset\\all\\";
		String wordspath = "\\results\\model_tfidf250s\\model_tfidf250s_Words.txt";
		new WordFrequencyGenerator(path, wordspath).start();
	}
}
