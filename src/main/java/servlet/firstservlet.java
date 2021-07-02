package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class firstservlet {
	ArrayList<String> arr=new ArrayList<String>();
	@RequestMapping("/")
	public void homepage(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		res.sendRedirect("home.jsp");
	}
	
	@RequestMapping("/home")
	public void page(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String id=req.getParameter("itemid");
		System.out.println(id);
		res.sendRedirect("home.jsp");
	}
	
	@RequestMapping("/admin")
	public void admin(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String cousines=req.getParameter("cousines");
		arr.add(cousines);
		
		HttpSession ses=req.getSession();
		ses.setAttribute("list", arr);
		
		//System.out.print(arr);
		res.sendRedirect("admin.jsp");
	}

}
