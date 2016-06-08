import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

public class ArffWriter {

	public void createArffFile(String[] words, String path, HashMap<ScoreKey, Double> selectedWordsScores) {
		PrintWriter writer = null;
		try {
			writer = new PrintWriter("test.arff", "UTF-8");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		writer.println("@RELATION movies");
		
		for(int i = 0; i < words.length; i++)
		{
			writer.println("@ATTRIBUTE " + words[i] + "  NUMERIC");
		}
		
		writer.println("@ATTRIBUTE class {Positive,Negative}");
		
		writer.println("@DATA");
		
		writeReviewData(path + "neg", writer, words, "Negative", selectedWordsScores, 0, 0.50);
		writeReviewData(path + "pos", writer, words, "Positive", selectedWordsScores, 50, 0.50);
		
		writer.close();
	}
	
	private void writeReviewData(String path, PrintWriter writer, String[] words, String classificator, HashMap<ScoreKey, Double> selectedWordsScores, int currentGlobalProgress, double multiplier)
	{
		String basePath = new File("").getAbsolutePath();
	    System.out.println(basePath + path);
	    
		File directory = new File(basePath + path);
		File[] files = directory.listFiles();
		int total = files.length;
		int i = 0;
		for (File file : files)
		{
		   i++;
		   if (FilenameUtils.getExtension(file.getName()).equals("txt"))
		   {
			   Double progress = currentGlobalProgress + ((double) i / (double) total) * multiplier * 100;
		       writeArff(file, writer, words, classificator, selectedWordsScores);
		       
		       if(i % 100 == 0)
		       {
		    	   System.out.println("Written arff section " + i + " / " + total +". Progress = " + String.format("%.2f", progress) + "%");
		       }
		   }
		}
	}
	
	private void writeArff(File file, PrintWriter writer, String[] words, String classificator, HashMap<ScoreKey, Double> selectedWordsScores) {
		Integer[] data = new Integer[words.length];
		
		for(int i = 0; i < data.length; i++)
		{
			data[i] = 0;
		}
		
		String review = null;
		
		try {
			review = FileUtils.readFileToString(file, "UTF-8");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.exit(-1);
		}
		
		String[] reviewWords = TextUtils.splitWords(review);
		
		boolean hasMatch = false;
		
		for(int i = 0; i < words.length; i++)
		{
			for(int j = 0; j < reviewWords.length; j++)
			{
				String selectedWord = words[i];
				String reviewWord = reviewWords[j];
				
				if(selectedWord.equals(reviewWord))
				{
					if(!hasMatch)
					{
						hasMatch = true;
					}
					
					data[i]++;
				}
				else
				{
					for(Map.Entry<ScoreKey, Double> scoreEntry : selectedWordsScores.entrySet())
			        {
						ScoreKey scoreKey = scoreEntry.getKey();
						if(scoreKey.k1 == reviewWord || scoreKey.k2 == reviewWord)
						{
							if(!hasMatch)
							{
								hasMatch = true;
							}
							
							data[i]++;
						}			    		
			        }
				}
			}
		}
		
		if(!hasMatch)
		{
			// Skips reviews without any of the selected words
			return;
		}
		
		StringBuilder dataStr = new StringBuilder();
		
		for(int i = 0; i < data.length; i++)
		{
			dataStr.append(data[i] + ",");
		}
		
		dataStr.append(classificator);
		
		writer.println(dataStr.toString());
	}
}
