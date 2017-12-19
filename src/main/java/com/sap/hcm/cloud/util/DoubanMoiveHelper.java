package com.sap.hcm.cloud.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class DoubanMoiveHelper implements Constants {
	
	@Value("${DoubanMoive.url}")
	private String serviceUrl;
	
	public String getTheaterMoives(Boolean forceload) throws IOException{
		if (forceload) {
			InputStream content = this.execute(serviceUrl, APPLICATION_JSON, HTTP_METHOD_GET);
			return new ToolsUtility().inputstreamToString(content);
		}
		return null;
	}
	
	private InputStream execute(String absolutUrl, String acceptHeader, String httpMethod) throws IOException{
		HttpsURLConnection  connection = initializeConnection(absolutUrl, acceptHeader, httpMethod);
		connection.connect();
		InputStream inputStream = connection.getInputStream();
		
		return inputStream;
	}
	
	private HttpsURLConnection initializeConnection(String absolutUrl, String acceptHeader, String httpMethod) throws IOException{
		URL url = new URL(absolutUrl);
		HttpsURLConnection connection = null;
		
		connection = (HttpsURLConnection) url.openConnection();
		connection.setRequestMethod(httpMethod);
		connection.setRequestProperty(HTTP_HEADER_ACCEPT, acceptHeader);
		
		return connection;
		
	}

}
