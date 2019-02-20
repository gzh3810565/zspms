package com.zs.pms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
public interface userService {
	
	public List<TPermission> queryByUid(int id);
	
	public int insertUser(TUser a);
	
}
