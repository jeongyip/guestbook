<%@page import="com.estsoft.guestbook.vo.GuestbookVO"%>
<%@page import="com.estsoft.guestbook.dao.GuestbookDao"%>
<%@page import="com.estsoft.db.MySQLWebDBConnection"%>
<%
	request.setCharacterEncoding( "UTF-8" );

	String name = request.getParameter( "name" );
	String password = request.getParameter( "password" );
	String message = request.getParameter( "content" );
	
	GuestbookVO vo = new GuestbookVO();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
	dao.insert(vo);
	
	response.sendRedirect( "/guestbook" );
%>
