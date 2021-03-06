package LdStore.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.PaginatesDto;
import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;
import LdStore.Service.Admin.UserAdminServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;
import LdStore.Service.User.UserServiceImpl;

@Controller
public class UserManagerController extends BaseAdminController{
	@Autowired
	UserAdminServiceImpl adminUserServiceImpl = new UserAdminServiceImpl();
	
	@Autowired
	UserServiceImpl userServiceImpl = new UserServiceImpl();
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	private int totalProductsPage = 10;
	
	@RequestMapping(value={"/admin/quan-ly-tai-khoan"})
	public ModelAndView AllUser(@RequestParam(value="s", required = false) String s ,@RequestParam(value="page", required = false) String currentPage) {
		if(s == null) {
			s = "";
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		int totalData = adminUserServiceImpl.AdminSerchUserByName(s).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.setViewName("admin/account/alluser");
		_mvShare.addObject("AdminEditUserStatus",null);
		_mvShare.addObject("namesearch",s);
		_mvShare.addObject("AdminUser", adminUserServiceImpl.AdminSerchUserByNamePaginate(s,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	@RequestMapping(value={"/admin/them-tai-khoan"},method = RequestMethod.GET)
	public ModelAndView adduser() {
		try {
			_mvShare.setViewName("admin/account/adduser");
			_mvShare.addObject("AdminAddUser", new User());
			_mvShare.addObject("AdminAddUserStatus",null);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/admin/them-tai-khoan"},method = RequestMethod.POST)
	public ModelAndView adduser(HttpServletRequest request ,@ModelAttribute User user) {
		try {
			User adduser =  user;
			if(userServiceImpl.CheckAddUser(user)) {
				 
				_mvShare.addObject("AdminAddUserStatus","T??n User ho???c Email ???? t???n t???i");
			}else { 
				if(userServiceImpl.checkvalid(adduser) == null) {
					int count = userServiceImpl.AddUser(adduser); 
					if(count > 0) {
					  _mvShare.addObject("AdminAddUserStatus","ok");
					  }
					else {
					  _mvShare.addObject("AdminAddUserStatus", "Th??m kh??ng th??nh c??ng");
					  } 
				}else {
					_mvShare.addObject("AdminAddUserStatus",userServiceImpl.checkvalid(adduser) );
				}
				
			  }
			_mvShare.setViewName("admin/account/adduser");
			_mvShare.addObject("AdminAddUser", new User());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/admin/thong-tin-tai-khoan/{id}"})
	public ModelAndView chitiet( @PathVariable int id ) {
		try {
			_mvShare.setViewName("admin/account/detailuser");
			_mvShare.addObject("AdmindetailUser",adminUserServiceImpl.AdminUserById(id));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value={"/admin/cap-nhat-tai-khoan/{id}"},method = RequestMethod.GET)
	public ModelAndView edituser(@PathVariable int id) {
		try {
			_mvShare.addObject("AdminEditUser", adminUserServiceImpl.AdminUserById(id));
			_mvShare.addObject("AdminEditPassUserStatus", null);
			_mvShare.setViewName("admin/account/updateuser");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value={"/admin/cap-nhat-tai-khoan/{id}"},method = RequestMethod.POST)
	public ModelAndView edituser(@PathVariable int id,@ModelAttribute User user,HttpSession session) {
		try {
			User adduser =  user;
			if(userServiceImpl.AdminCheckAddUser(user)) {
				 
				_mvShare.addObject("AdminEditUserStatus","T??n User ho???c Email ???? t???n t???i");
			}else { 
				if(userServiceImpl.checkvalid(adduser) == null) {
					int count = adminUserServiceImpl.AdminEditUser(adduser); 
					if(count > 0) {
					  _mvShare.addObject("AdminEditUserStatus","ok");
					  int idadmin = (int) session.getAttribute("id_user");
					  if(id == idadmin) {
						 session.setAttribute("InfoAdmin", adminUserServiceImpl.AdminUserById(idadmin)); 
					  }
					  
					  }
					else {
					  _mvShare.addObject("AdminEditUserStatus", "C???p nh???t kh??ng th??nh c??ng");
					  } 
				}else {
					_mvShare.addObject("AdminEditUserStatus",userServiceImpl.checkvalid(adduser) );
				}
			  }
			_mvShare.setViewName("admin/account/updateuser");
			_mvShare.addObject("AdminEditUser", adminUserServiceImpl.AdminUserById(id));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value={"admin/doi-mat-khau/{id}"},method = RequestMethod.GET)
	public ModelAndView Changepass(HttpSession session,@PathVariable int id) {
		try {
			_mvShare.addObject("changepassword", new ChangePassword());
			_mvShare.setViewName("admin/account/changepassword");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return _mvShare;
	}
	@RequestMapping(value={"admin/doi-mat-khau/{id}"},method = RequestMethod.POST)
	public String Changepass(HttpServletRequest request ,HttpSession session,@PathVariable int id,@ModelAttribute ChangePassword changepassword) {
		try {
			String count = adminUserServiceImpl.ChangePass(changepassword); 
			if(count != null ) {
				_mvShare.addObject("AdminEditPassUserStatus", count);
			}
			else {
			  _mvShare.addObject("AdminEditPassUserStatus", "ok");
			  }
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "admin/deleteuser/{id}")
	public String DeleteProvider(HttpServletRequest request, @PathVariable int id) {
		try {
			if(adminUserServiceImpl.AdminDeleteUser(id) > 0) {
				_mvShare.addObject("statusOkDeleteUser","X??a th??nh c??ng");
			}else {
				_mvShare.addObject("statusNoDeleteUser","X??a kh??ng th??nh c??ng");
			}
		} catch (Exception e) {
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value={"/admin/tai-khoan"},method = RequestMethod.GET)
	public ModelAndView inforuser(HttpSession session) {
		try {
			
			int id = (int) session.getAttribute("id_user");
			_mvShare.addObject("AdminEditUser", adminUserServiceImpl.AdminUserById(id));
			_mvShare.setViewName("admin/profile/infouser");
			_mvShare.addObject("AdminEditUserStatus",null);
			_mvShare.addObject("AdminEditPassUserStatus", null);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return _mvShare;
	}

	@RequestMapping(value={"/admin/tai-khoan"},method = RequestMethod.POST)
	public String Editinforuser(HttpServletRequest request , HttpSession session,@ModelAttribute User user) {
		int count = userServiceImpl.EditUser(user); 
		if(count > 0) {
			_mvShare.addObject("AdminEditUserStatus","ok");
			int id = (int) session.getAttribute("id_user");
			session.setAttribute("InfoAdmin", adminUserServiceImpl.AdminUserById(id));
		  }
		else {
		  _mvShare.addObject("status", "Ch???nh s???a kh??ng th??nh c??ng");
		  } 
		return "redirect:"+ request.getHeader("Referer");
	}
	@RequestMapping(value={"/admin/tai-khoan/doi-mat-khau"},method = RequestMethod.GET)
	public ModelAndView Changepass(HttpSession session) {
		if(session.getAttribute("InfoAdmin") == null ) {
		}else {
			_mvShare.addObject("changepassword", new ChangePassword());
			_mvShare.setViewName("admin/profile/changepassword");
		}
		return _mvShare;
	}
	@RequestMapping(value={"/admin/tai-khoan/doi-mat-khau"},method = RequestMethod.POST)
	public String Changepass(HttpServletRequest request , HttpSession session,@ModelAttribute ChangePassword changepassword) {
		String count = userServiceImpl.ChangePass(changepassword); 
		if(count == null ) {
		  _mvShare.addObject("AdminEditPassUserStatus", "ok");
		  int id = (int) session.getAttribute("id_user");
		  session.setAttribute("InfoAdmin", adminUserServiceImpl.AdminUserById(id));
		  }
		else {
		  _mvShare.addObject("AdminEditPassUserStatus", count);
		  
		  } 
		return "redirect:"+ request.getHeader("Referer");
	}
}