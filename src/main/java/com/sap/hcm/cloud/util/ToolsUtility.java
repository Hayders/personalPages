package com.sap.hcm.cloud.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class ToolsUtility {

	public String inputstreamToString(InputStream inputStream) throws IOException {
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"UTF-8"));
		StringBuffer stringBuffer = new StringBuffer();
		String output = "";
		while ((output = bufferedReader.readLine()) != null) {
			stringBuffer.append(output);
		}
		return stringBuffer.toString();
	}

}
