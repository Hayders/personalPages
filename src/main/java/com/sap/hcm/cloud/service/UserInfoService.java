package com.sap.hcm.cloud.service;



import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sap.hcm.cloud.entity.UserInfo;

@Service
public class UserInfoService {

	@PersistenceContext
	private EntityManager entityManager;

	private static final Logger logger = LoggerFactory.getLogger(UserInfoService.class);

	/**
	 * persist UserInfo
	 * 
	 * @param userInfo
	 * @return
	 */
	public UserInfo saveUserInfo(UserInfo userInfo) {

		if (userInfo.getUserId() != null) {
			try {
				entityManager.persist(userInfo);
				return userInfo;
			} catch (PersistenceException e) {
				logger.error("save employee failed with error " + e.getMessage());
			}
		} else {
			logger.error("Employee userId is null");
		}

		return null;
	}

	/**
	 * query UserInfo by userId
	 * 
	 * @param userId
	 * @return
	 */

	public UserInfo getUserInfoById(String userId) {
		UserInfo userInfo = null;
		try {
			userInfo = entityManager.find(UserInfo.class, userId);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (PersistenceException e) {
			e.printStackTrace();
		}

		return userInfo;
	}
}
