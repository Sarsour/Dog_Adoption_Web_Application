package dispatcher;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import business.Dog;
import business.Item;
import business.User;
import business.VerticalPageNavigation;
import data.UserDB;
import util.MailUtilGmail;
import util.MailUtilLocal;
import util.MailUtilYahoo;


@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String[] ORGNIZATION_MENU_OPTIONS = {"test1", "test2"};
	public static final List<String> organizationOptions = 
		    Collections.unmodifiableList(Arrays.asList("About Us", "Adoption News", "Contact Us"));
	public static final List<String> adoptablesOptions = 
		    Collections.unmodifiableList(Arrays.asList("Dogs"));
	public static final List<String> suppliesOptions = 
		    Collections.unmodifiableList(Arrays.asList("All Items", "Suggested Items", "Policy"));
	public static final List<String> cartOptions = 
		    Collections.unmodifiableList(Arrays.asList("View Cart", "Checkout"));
	public static final List<String> membershipOptions = 
		    Collections.unmodifiableList(Arrays.asList("Log In/Out", "My Profile", "Order History", "Cancel Membership"));
	String email;

	public Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		// Default URL and initalize session
		ServletContext sc = getServletContext();
		HttpSession session = request.getSession();
		String url = "/cart.jsp";
        
		// Get site content
		// TODO need to set as param in session for both
		ArrayList<Dog> dogList = UserDB.getDogs();
		ArrayList<Item> itemList = UserDB.getItems();
		
        // Action - get user action and set to "edit" if null
        String action = request.getParameter("action");
        if (action == null) {
            action = "edit";
        }
        
        // Action - user confirms selections
        if (action.equals("navigation")) {
			url = navigate(request, response);
		} else if (action.equals("confirm")) {
            url = "/show_information.jsp";
            User user = (User) session.getAttribute("user");   
            
            // send email to user
            String to = email;
            String from = "email_list@murach.com";
            String subject = "Registration Confirmation";
            String body = "";
            boolean isBodyHTML = false;

            try {
            	System.out.println("sending mail");
                //MailUtilLocal.sendMail(to, from, subject, body, isBodyHTML);
                MailUtilGmail.sendMail(to, from, subject, body, isBodyHTML);
            } catch (MessagingException e) {
                String errorMessage
                        = "ERROR: Unable to send email. "
                        + "Check Tomcat logs for details.<br>"
                        + "NOTE: You may need to configure your system "
                        + "as described in chapter 14.<br>"
                        + "ERROR MESSAGE: " + e.getMessage();
                request.setAttribute("errorMessage", errorMessage);
                this.log(
                        "Unable to send email. \n"
                        + "Here is the email you tried to send: \n"
                        + "=====================================\n"
                        + "TO: " + email + "\n"
                        + "FROM: " + from + "\n"
                        + "SUBJECT: " + subject + "\n"
                        + "\n"
                        + body + "\n\n");
            }
        }
        
        // Action - user wants to add or edit selections
        else if (action.equals("add")||action.equals("edit")) {
        	User user = (User) session.getAttribute("user");
        	
        	if (user == null||action.equals("add")) {

        	}
				
	        else if (action.equals("edit")) {
				url = "/edit_information.jsp";
			}
	        		
        }
        
        // Action - user removing a course
        else if (action.equals("remove")) {


        }
        
		// Session
        User user = (User) session.getAttribute("user");
        request.setAttribute("user", user);
		sc.getRequestDispatcher(url).forward(request, response);

	}
	
	private String navigate(HttpServletRequest request,
			HttpServletResponse response) {
		String page = request.getParameter("page");
		String location = request.getParameter("option");
		HttpSession session = request.getSession();
		location = location.replaceAll("\\s+","");
		location = location.replaceAll("/","");
		VerticalPageNavigation verticalPageNavigation = new VerticalPageNavigation(organizationOptions, "org");
		switch(page) {
			case "adopt":
				verticalPageNavigation.setNavOptions(adoptablesOptions);
				verticalPageNavigation.setPage(page);
				break;
			case "order":
				verticalPageNavigation.setNavOptions(suppliesOptions);
				verticalPageNavigation.setPage(page);
				break;
			case "cart":
				verticalPageNavigation.setNavOptions(cartOptions);
				verticalPageNavigation.setPage(page);
				break;
			case "membership":
				verticalPageNavigation.setNavOptions(membershipOptions);
				verticalPageNavigation.setPage(page);
				break;
		}
		session.setAttribute("verticalPageNavigation", verticalPageNavigation);
		return "/"+ page + location +".jsp";
	}

}
