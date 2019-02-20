package aaa;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zs.pms.po.TDep;
import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
import com.zs.pms.service.userService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationcontext.xml")
public class test {
	@Autowired
	userService us;

	@Test
	public void test1() {
		for (TPermission a : us.queryByUid(1001)) {
			System.out.println(a.getPname());
		}

	}
	
	/**
	 * 新增
	 */
	@Test
	public void  testInsert() {
		TUser user=new TUser();
		TDep dep =new TDep();
		dep.setId(6);
		user.setDept(dep);
		user.setEmail("insert@123.com");
		user.setIsenable(1);
		user.setLoginname("xzdier");
		user.setPassword("insert123");
		user.setPic("insert123.jpg");
		user.setRealname("新增数据");
		user.setSex("男");
		user.setCreator(1000);
		
		user.setBirthday(new Date());
		
		System.out.println(us.insertUser(user));
		
	}

	
	
}
