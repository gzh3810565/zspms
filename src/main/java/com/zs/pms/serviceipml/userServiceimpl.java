package com.zs.pms.serviceipml;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zs.pms.dao.UserDao;
import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
import com.zs.pms.service.userService;

@Service
public class userServiceimpl implements userService {
	@Autowired
	UserDao dao;

	@Override
	public List<TPermission> queryByUid(int id) {
		// TODO Auto-generated method stub
		return dao.queryByUid(id);
	}

	@Override
	public int insertUser(TUser a) {
		// TODO Auto-generated method stub
		return 0;
	}

}
