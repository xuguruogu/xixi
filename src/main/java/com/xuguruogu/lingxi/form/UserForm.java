package com.xuguruogu.lingxi.form;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.RoleDao;
import com.xuguruogu.lingxi.dao.RootDao;
import com.xuguruogu.lingxi.dao.UserDao;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.Role;
import com.xuguruogu.lingxi.entity.Root;
import com.xuguruogu.lingxi.entity.User;

@Controller
@RequestMapping("/form/user")
public class UserForm {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private RootDao rootDao;
	/**
	 * 登录验证
	 * @param user
	 * @param resp
	 * @param req
	 */
	@RequestMapping("/login")
	public @ResponseBody String login(User user, HttpServletResponse resp, HttpServletRequest req){
		System.out.println("[controller]登录验证");
		try {
			if(user==null){
				return "no";
			}
			User u = userDao.login(user);
			if(u!=null){
				if(u.getStatus()==0){
					req.getSession().setAttribute("loginUser", u);
					System.out.println(JSON.toJSON(user));
					return "yes";
				}else{
					return "stop";
				}
			}else{
				return "no";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	/**
	 * 跳转至修改用户信息页面
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/toUpdate")
	public String toUpdateUser(Model model, HttpServletRequest req, int id){
		List<Role> roleList = roleDao.selectAll();
		User user = userDao.select_by_id(new User(), id);
		model.addAttribute("roleList", roleList);
		model.addAttribute("user", user);
		return "user/updateUser";
	}
	
	/**
	 * 修改信息
	 * @param user
	 * @param resp
	 */
	@RequestMapping("/update")
	public @ResponseBody String update(User user, HttpServletResponse resp){
		try {
			if(user==null){
				return "no";
			}
			userDao.update(user);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	/**
	 * 跳转至个人信息页面
	 * @param model
	 * @param req
	 * @return
	 */
	@RequestMapping("/userInfo")
	public String userInfo(Model model, HttpServletRequest req){
		System.out.println("[controller]返回用户信息列表");
		User u = (User) req.getSession().getAttribute("loginUser");
		User user = userDao.select_by_id(new User(), u.getId());
		model.addAttribute("user", user);
		return "user/userInfo";
	}
	
	/**
	 * 跳转至用户管理页面
	 * @param model
	 * @param page
	 * @return
	 */
	@RequestMapping("/user")
	public String user(Model model,Page page){
		if(page==null){
			page = new Page();
		}
		int userCount = userDao.selectCount(page);
		model.addAttribute("userCount", userCount);
		model.addAttribute("page", page);
		return "user/user";
	}
	
	/**
	 * 返回用户信息列表
	 * @param model
	 * @param page
	 * @return
	 */
	@RequestMapping("/userList")
	public String userList(Model model,Page page){
		if(page==null){
			page = new Page();
		}
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<User> userList = userDao.select_by_page(new User(), page);
		List<Role> roleList = roleDao.selectAll();
		model.addAttribute("roleList", roleList);
		model.addAttribute("userList", userList);
		return "user/userList";
	}
	
	/**
	 * 跳转至添加用户页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAddUser(Model model){
		System.out.println("[controller]跳转至添加用户页面");
		List<Role> roleList = roleDao.selectAll();
		model.addAttribute("roleList", roleList);
		return "user/addUser";
	}
	
	@RequestMapping("/add")
	public @ResponseBody String addUser(User user){
		if(user==null){
			return "error";
		}
		try {
			int count = userDao.checkUsername(user.getUsername());
			if(count>0){
				return "no";
			}
			user.setSA(false);
			userDao.insert(user);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String delete(int[] ids){
		try {
			for(int id:ids){
				userDao.delete_by_id(new User(), id);
			}
			return "yes";
		} catch (Exception e) {
			return "no";
		}
	}
	
	@RequestMapping("/updateStatus")
	public @ResponseBody String updateStatus(int id){
		System.out.println("[controller]更改用户状态");
		try {
			User user = userDao.select_by_id(new User(), id);
			if(user==null){
				return "no";
			}
			if(user.getStatus()==0){
				user.setStatus(1);
			}else{
				user.setStatus(0);
			}
			userDao.update(user);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "no";
		}
	}
	//=======================页面
	/**
	 * 退出系统
	 */
	@RequestMapping("/exit")
	public @ResponseBody String exit(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("[controller]登出系统");
		try {
			req.getSession().removeAttribute("loginUser");
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	/**
	 * 跳转到系统主页面
	 */
	@RequestMapping("/main")
	public String main(){
		return "main";
	}
	@RequestMapping("/top")
	public String top(){
		return "top";
	}
	@RequestMapping("/left")
	public String left(Model model, HttpServletRequest req){
		User user = (User) req.getSession().getAttribute("loginUser");
		if(user.isSA()){
			return "adminleft";
		}else{
			List<Root> rootList = rootDao.select_by_roleID(user.getRoleID());
			model.addAttribute("rootList", rootList);
			System.out.println("===rootlist:"+JSON.toJSONString(rootList));
			return "left";
		}
	}
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
}
