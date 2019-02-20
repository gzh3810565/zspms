package com.zs.pms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
import com.zs.pms.vo.QueryUser;

@Repository
public interface UserDao {
	
	public List<TUser> QueryByPage(QueryUser a);
	
	public List<TPermission> queryByUid(int id);

	public void AddUser(TUser u);

	public void DelUser(TUser u);

	public void UpdateUser(TUser u);

	public List<TUser> QueryByCon(QueryUser a);

	public int insertUser(TUser a);

	
	
}
