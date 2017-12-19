package com.sap.hcm.cloud.service;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sap.hcm.cloud.util.DoubanMoiveHelper;

@Service
public class MoiveService {

	private static Logger logger = LoggerFactory.getLogger(MoiveService.class);

	@Autowired
	DoubanMoiveHelper doubanMoiveHelper;

	public String getMoiveList(boolean forceload) {
		String moiveList = null;
		try {
			moiveList = doubanMoiveHelper.getTheaterMoives(forceload);
		} catch (IOException e) {
			logger.error("Failed to get moive list");
			logger.error("RootCause:" + e.getMessage());
		}
		return moiveList;
	}

}
