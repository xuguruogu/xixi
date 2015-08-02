package com.xuguruogu.lingxi.form;

import java.io.File;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.CustomerDao;
import com.xuguruogu.lingxi.dao.LoginLogDao;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.LoginLog;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.util.DataUtil;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.mail.SimpleMailSender;

@Controller
@RequestMapping("/form/customer")
public class CustomerForm {
	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private LoginLogDao loginLogDao;
	
	/**
	 * 注册用户
	 * @param customer
	 * @return
	 */
	@RequestMapping(value="/regist",method=RequestMethod.POST)//@RequestParam MultipartFile file, 
	public synchronized @ResponseBody String regist(Customer customer, HttpServletRequest req){
		p("regist");
		try {
			//验证
			if(customer==null){
				return "{\"checked\":\"3\"}";
			}else if(customer.getEmail()==null||
					customer.getEmail().trim().equals("")||
					customer.getPassword()==null||
					customer.getPassword().trim().equals("")||
					customer.getNickname()==null||
					customer.getNickname().trim().equals("")){
				return "{\"checked\":\"3\"}";
			}
			
			if(customerDao.checkEmail(customer.getEmail().trim())!=null){
				System.out.println("该邮箱"+customer.getEmail()+"已被注册");
				return "{\"checked\":\"1\"}";
			}
			
			/*System.out.println("==="+JSON.toJSONString(file));
			//上传头像
			if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")){
				//获取时间戳
				String time = DateUtil.now("yyyyMMdd");
				//文件名称
				String filename = file.getOriginalFilename();
				Random ran = new Random();
				ran.nextInt(7);
				//处理一下
				filename = filename.substring(0, filename.lastIndexOf("."))+(int)((Math.random()*9+1)*100000)+filename.substring(filename.lastIndexOf("."));
				//获取上传的路径
				String path = req.getSession().getServletContext().getRealPath("/resource/imgUpload")+"/"+time+"/"+filename;
				System.out.println("文件保存路径"+path);
				String headPic = ("resource/imgUpload/"+time+"/"+filename).trim();
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
				customer.setHeadPic(headPic);
			}
			*/
			String time = DateUtil.now("yyyy-MM-dd HH:mm:ss");
			customer.setRegistTime(time);
			customer.setStatus(0);
			customerDao.regist(customer);
			System.out.println("注册完成");
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	/**
	 * 学校列表
	 * @return
	 */
	@RequestMapping(value="/schoollist", produces="text/html;charset=UTF-8")
	public @ResponseBody String schoolList(){
		p("schoollist");
		try {
			List<String> list = DataUtil.getSchool();
			String json = JSON.toJSONString(list);
			String res = "{\"list\":"+json+",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 上传图片
	 * @param file
	 * @param req
	 * @return
	 */
	@RequestMapping("/uploadImg")
	public @ResponseBody String uploadImg(@RequestParam MultipartFile file, HttpServletRequest req){
		p("uploadImg");
		try {
			//上传头像
			if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")){
				//获取时间戳
				String time = DateUtil.now("yyyyMMdd");
				//文件名称
				String filename = file.getOriginalFilename();
				Random ran = new Random();
				ran.nextInt(7);
				//处理一下
				filename = filename.substring(0, filename.lastIndexOf("."))+(int)((Math.random()*9+1)*100000)+filename.substring(filename.lastIndexOf("."));
				//获取上传的路径
				String path = req.getSession().getServletContext().getRealPath("/resource/imgUpload")+"/"+time+"/"+filename;
				System.out.println("文件保存路径"+path);
				String headPic = ("resource/imgUpload/"+time+"/"+filename).trim();
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
				String res = "{\"checked\":\"0\",\"headPic\":\""+headPic+"\"}";
				return res;
			}else{
				return "";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 用户登录
	 * @param customer
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST,produces="text/html;charset=UTF-8")
	public @ResponseBody String login(Customer customer){
		p("login");
		try {
			customer.setEmail(customer.getEmail().trim());
			customer.setPassword(customer.getPassword().trim());
			Customer cus = customerDao.login(customer);
			if(cus==null){
				System.out.println("用户名或密码错误："+JSON.toJSONString(customer));
				return "{\"checked\":\"1\"}";
			}else{
//				if(cus.getStatus()==0){
					System.out.println("登录成功："+JSON.toJSONString(cus));
					String info = JSON.toJSONString(cus);
					info = info.substring(0, info.lastIndexOf("}"))+",\"checked\":\"0\"}";
					LoginLog log = new LoginLog(cus, DateUtil.now("yyyy-MM-dd HH:mm:ss"));
					loginLogDao.insert(log);
					return info;
//				}else{
//					System.out.println("帐号停用："+JSON.toJSONString(cus));
//					return "{\"checked\":\"2\"}";
//				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	/**
	 * 用户信息修改
	 * @param customer
	 * @param req
	 * @return
	 */
	@RequestMapping("/update")
	public @ResponseBody String update(Customer customer, HttpServletRequest req){
		p("update");
		try {
			//如果上传的图片，将图片上传，并将图片路径加入customer中
			/*if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")){
				//获取时间戳
				String time = DateUtil.now("yyyyMMdd");
				//文件名称
				String filename = file.getOriginalFilename();
				Random ran = new Random();
				ran.nextInt(7);
				//处理一下
				filename = filename.substring(0, filename.lastIndexOf("."))+(int)((Math.random()*9+1)*100000)+filename.substring(filename.lastIndexOf("."));
				//获取上传的路径
				String path = req.getSession().getServletContext().getRealPath("/resource/imgUpload")+"/"+time+"/"+filename;
				System.out.println("文件保存路径"+path);
				String headPic = ("resource/imgUpload/"+time+"/"+filename).trim();
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
				customer.setHeadPic(headPic);
			}
			*/
			customerDao.update(customer);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	@RequestMapping(value = "/updatepsw", method = RequestMethod.POST)
	public @ResponseBody String updatePsw(Customer customer){
		p("updatepsw");
		try {
			customerDao.updatePassword(customer);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	@RequestMapping(value = "/look", produces = "text/html;charset=UTF-8")
	public @ResponseBody String lookCustomer(int customerID){
		p("look");
		try {
			Customer customer = customerDao.look(customerID);
			if(customer==null){
				return "{\"checked\":\"1\"}";
			}
			String json = JSON.toJSONString(customer);
			String res = json.substring(0, json.lastIndexOf("}")) + ",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	//===================后台
	@RequestMapping("/customer")
	public String customer(Model model, Page page){
		p("customer");
		page = page==null?new Page():page;
		System.out.println("page:"+JSON.toJSONString(page));
		int count = customerDao.selectCount(new Customer(), page);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		return "customer/customer";
	}
	
	@RequestMapping("/customerList")
	public String customerList(Model model, Page page){
		p("customerList");
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Customer> customerList = customerDao.select_by_page(new Customer(), page);
		model.addAttribute("customerList", customerList);
		return "customer/customerList";
	}
	
	/**
	 * 修改帐号状态
	 * @param customerId
	 * @return
	 */
	@RequestMapping("/updateStatus")
	public @ResponseBody String updateStatus(String customerID){
		p("updateStatus");
		System.out.println("customerID=="+customerID);
		try {
			int id = Integer.parseInt(customerID);
			Customer customer = customerDao.select_by_id(new Customer(), id);
			if(customer.getStatus()==0){
				customer.setStatus(1);
			}else{
				customer.setStatus(0);
			}
			customerDao.updateStatus(customer);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 找回密码
	 * @return
	 */
	@RequestMapping("/findpwd")
	public @ResponseBody String findPassword(String email){
		p("findpwd");
		try {
			Customer customer = customerDao.checkEmail(email);
			if(customer==null){
				//没有该邮箱
				return "{\"checked\":\"1\"}";
			}
			SimpleMailSender.sendEmail(email, customer.getNickname(), customer.getPassword());
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	@RequestMapping("/lookcustomer")
	public String lookCustomer(Model model, int customerID){
		p("lookcustomer");
		Customer customer = customerDao.select_by_id(new Customer(), customerID);
		model.addAttribute("customer", customer);
		return "customer/customerInfo";
	}
	
	private static void p(String str){
		System.out.println("[controller]/customer/regist");
	}
}
