package kr.co.smart_bicycle.at;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.smart_bicycle.dao.MemberDAO;
import kr.co.smart_bicycle.vo.MemberVO;

public class RegisterMemberAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url = "menu.jsp";
		MemberVO mvo = new MemberVO();
		
		mvo.setId(request.getParameter("ID"));
		mvo.setPw(request.getParameter("PW"));
		mvo.setAge(Integer.parseInt(request.getParameter("AGE")));
		mvo.setSex(request.getParameter("SEX"));
		//String today = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());//오늘 날짜는 사용자가 입력하는것이 아니기 때문에 직접 설정해서 db에 넘겨준다.
		//mvo.setRegister_date(today);
		
		
		MemberDAO mdao = MemberDAO.getInstance();
		mdao.insertMember(mvo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
