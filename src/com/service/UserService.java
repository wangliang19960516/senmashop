package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.entity.Users;


@Service	// 注解为service层spring管理bean
@Transactional	// 注解此类所有方法加入spring事务, 具体设置默认
public class UserService {

	@Resource		//spring注入类对象
	private UserDao userDao;
	
	/**
	 * 验证用户密码
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean checkUser(String username, String password){
		return userDao.getByUsernameAndPassword(username, password) != null;
	}

	/**
	 * 用户是否存在
	 * @param username
	 * @return
	 */
	public boolean isExist(String username) {
		return userDao.getByUsername(username) != null;
	}

	/**
	 * 添加
	 * @param user
	 * @return
	 */
	public boolean add(Users user) {
		user.setPassword(user.getPassword());
		user.setPayword(user.getPayword());
		return userDao.save(user) > 0;
	}
	
	/**
	 * 通过id获取
	 * @param userid
	 * @return
	 */
	public Users get(int userid){
		return userDao.get(Users.class, userid);
	}
	
	/**
	 * 通过username获取
	 * @param username
	 * @return
	 */
	public Users get(String username){
		return userDao.getByUsername(username);
	}
	
	/**
	 * 列表
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<Users> getList(int page, int rows) {
		return userDao.getList(page, rows);
	}

	/**
	 * 总数
	 * @return
	 */
	public long getTotal() {
		return userDao.getTotal();
	}

	/**
	 * 更新
	 * @param user
	 */
	public boolean update(Users user) {
		return userDao.update(user);
	}

	/**
	 * 删除
	 * @param id
	 */
	public boolean delete(Users user) {
		return userDao.delete(user);
	}
	
}
