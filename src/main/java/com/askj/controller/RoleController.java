package com.askj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.askj.dao.MenuDao;
import com.askj.dao.RoleDao;
import com.askj.dao.RootDao;
import com.askj.dao.UserDao;
import com.askj.entity.Menu;
import com.askj.entity.Page;
import com.askj.entity.Role;
import com.askj.entity.Root;

@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private MenuDao menuDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RootDao rootDao;
	
	@RequestMapping("/role")
	public String role(Model model, Page page){
		System.out.println("[controller]/role");
		int roleCount = roleDao.selectCount(page);
		model.addAttribute("roleCount", roleCount);
		model.addAttribute("page", page);
		return "role/role";
	}
	
	@RequestMapping("/roleList")
	public String roleList(Model model, Page page){
		System.out.println("[controller]/roleList");
		if(page==null){
			page = new Page();
		}
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Role> roleList = roleDao.select_by_page(new Role(), page);
		model.addAttribute("roleList", roleList);
		return "role/roleList";
	}
	
	@RequestMapping("/toAdd")
	public String toAddRole(Model model){
		System.out.println("[controller]/toAddRole");
		List<Menu> parentMenus = menuDao.selectParentMenu();
		List<Menu> sonMenus = menuDao.selectAllSon();
		model.addAttribute("parentMenus", parentMenus);
		model.addAttribute("sonMenus", sonMenus);
		return "role/addRole";
	}
	
	@RequestMapping("/add")
	public String addRole(HttpServletRequest req){
		System.out.println("[controller]/addRole");
		String roleName = req.getParameter("roleName");
		Role role = new Role(roleName);
		roleDao.insert(role);
		System.out.println("刚插入的role："+JSON.toJSONString(role));
		int roleID = roleDao.select_last_insert();
		System.out.println("刚插入的role的id="+roleID);
		String[] menus = req.getParameterValues("menus");
		System.out.println("===="+JSON.toJSONString(menus));
		for(String menuid : menus){
			int id = Integer.parseInt(menuid);
			Root root = new Root(roleID, new Menu(id));
			rootDao.insert(root);
		}
		return "role/role";
	}
	
	
	@RequestMapping("/checkname")
	public @ResponseBody String checkName(HttpServletRequest req){
		try {
			String rolename = req.getParameter("rolename");
			if(roleDao.checkName(rolename)){
				return "no";
			}else{
				return "yes";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/details")
	public String details(Model model,int roleID){
		System.out.println("[controller]/role/details");
		System.out.println("roleID = "+roleID);
		List<Root> rootlist = rootDao.select_by_roleID(roleID);
		System.out.println("权限详情："+JSON.toJSONString(rootlist));
		model.addAttribute("hehe", 111);
		model.addAttribute("rootlist", rootlist);
		return "role/details";
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String deleteRole(int[] ids){
		System.out.println("[controller]/deleteRole");
		try {
			for(int id:ids){
				if(userDao.checkRole(id)){
					return "no";
				}
				roleDao.delete_by_id(new Role(), id);
				rootDao.delete_by_roleID(id);
			}
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/toUpdate")
	public String toUpdateRole(Model model, int roleID){
		System.out.println("[controller]/toUpdateRole");
		Role role = roleDao.select_by_id(new Role(), roleID);
		List<Root> rootList = rootDao.select_by_roleID(roleID);
		model.addAttribute("role", role);
		model.addAttribute("rootList", rootList);
		List<Menu> parentMenus = menuDao.selectParentMenu();
		List<Menu> sonMenus = menuDao.selectAllSon();
		model.addAttribute("parentMenus", parentMenus);
		model.addAttribute("sonMenus", sonMenus);
		return "role/updateRole";
	}
	
	@RequestMapping("/update")
	public String updateRole(HttpServletRequest req){
		System.out.println("[controller]/updateRole");
		int roleID = Integer.parseInt(req.getParameter("roleID"));
		rootDao.delete_by_roleID(roleID);
		String[] menus = req.getParameterValues("menus");
		for(String menuid : menus){
			int id = Integer.parseInt(menuid);
			Root root = new Root(roleID, new Menu(id));
			rootDao.insert(root);
		}
		return "redirect:role";
	}
}
