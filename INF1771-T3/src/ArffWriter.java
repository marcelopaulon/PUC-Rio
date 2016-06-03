import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

public class ArffWriter {

	public void createArffFile(String[] words, String path) {
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
		
		writeReviewData(path + "all\\neg", writer, words, "Negative", 0, 0.50);
		writeReviewData(path + "all\\pos", writer, words, "Positive", 50, 0.50);
		
		writer.close();
	}
	
	private void writeReviewData(String path, PrintWriter writer, String[] words, String classificator, int currentGlobalProgress, double multiplier)
	{
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
		       writeArff(file, writer, words, classificator);
		       
		       if(i % 100 == 0)
		       {
		    	   System.out.println("Written arff section " + i + " / " + total +". Progress = " + String.format("%.2f", progress) + "%");
		       }
		   }
		}
	}
	
	private void writeArff(File file, PrintWriter writer, String[] words, String classificator) {
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
		
		for(int i = 0; i < words.length; i++)
		{
			for(int j = 0; j < reviewWords.length; j++)
			{
				if(words[i].equals(reviewWords[j]))
				{
					data[i]++;
				}
			}
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
