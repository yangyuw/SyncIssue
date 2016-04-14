package com.andy;

import java.util.ArrayList;
import java.util.List;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class GetUrl {

	private String url;
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public  void gitclone(String url){
		 Process process = null; 
		 String line = ""; 
		 List<String> processList = new ArrayList<String>();  
	        try {  
	            process = Runtime.getRuntime().exec("git clone "+ url +" /winter");  
	            BufferedReader input = new BufferedReader(new InputStreamReader(process.getInputStream()));  
	            line = input.readLine();
	            while ((line = input.readLine()) != null) {  
	                processList.add(line);  
	            }  

	            input.close();  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        }   
	}
}
