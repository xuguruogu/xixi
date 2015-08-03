package com.xuguruogu.lingxi.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.MenuDao;
import com.xuguruogu.lingxi.entity.Menu;
import com.xuguruogu.lingxi.entity.Page;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	private MenuDao menuDao;
	
	@RequestMapping("/menu")
	public String menu(Model model){
		System.out.println("[controller]/menu");
		model.addAttribute("page", new Page());
		return "menu/menu";
	}
	
	@RequestMapping("/menuList")
	public String menuList(Model model){
		System.out.println("[controller]/menuList");
		List<Menu> menuList = menuDao.select_by_page(new Menu(), new Page());
		model.addAttribute("menuList", menuList);
		return "menu/menuList";
	}
	
	@RequestMapping("/toAdd")
	public String toAddMenu(Model model){
		System.out.println("[controller]/toAddMenu");
		List<Menu> menuList = menuDao.selectParentMenu();
		model.addAttribute("menuList", menuList);
		return "menu/addMenu";
	}
	
	@RequestMapping("/add")
	public @ResponseBody String addMenu(Menu menu){
		System.out.println("[controller]/addMenu");
		if(menu==null){
			return "error";
		}
		try {
			if(menuDao.checkName(menu.getMenuName())>0){
				return "no";
			}
			System.out.println(JSON.toJSON(menu)+"================");
			menuDao.insert(menu);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/toUpdate")
	public String toUpdateMenu(int id, Model model){
		System.out.println("[controller]/toUpdateMenu");
		Menu menu = menuDao.select_by_id(new Menu(), id);
		if(menu.getParentID()!=0){
			List<Menu> menuList = menuDao.selectParentMenu();
			model.addAttribute("menuList", menuList);
		}
		model.addAttribute("menu", menu);
		return "menu/updateMenu";
	}
	
	@RequestMapping("/update")
	public @ResponseBody String updateMenu(Menu menu){
		System.out.println("[controller]/updateMenu");
		if(menu==null){
			return "error";
		}
		try {
			menuDao.update(menu);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String deleteMenu(int[] ids){
		System.out.println("[controller]/deleteMenu");
		try {
			for(int id:ids){
				//检查是否有子菜单
				if(menuDao.check(id)){
					return "no1";
				}
				//检查是否有角色拥有
				if(menuDao.checkRole(id)){
					return "no2";
				}
				menuDao.delete_by_id(new Menu(), id);
			}
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
}
