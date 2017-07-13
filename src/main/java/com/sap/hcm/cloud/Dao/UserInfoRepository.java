package com.sap.hcm.cloud.Dao;

import org.springframework.data.repository.CrudRepository;

import com.sap.hcm.cloud.entity.UserInfo;

public interface UserInfoRepository extends CrudRepository<UserInfo, String> {

}
