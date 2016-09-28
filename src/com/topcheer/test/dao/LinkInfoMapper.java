package com.topcheer.test.dao;

import com.topcheer.test.dto.LinkInfo;


public interface LinkInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LinkInfo record);

    int insertSelective(LinkInfo record);

    LinkInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LinkInfo record);

    int updateByPrimaryKey(LinkInfo record);
}