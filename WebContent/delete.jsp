<%@page import="com.estsoft.db.MySQLWebDBConnection"%>
<%@page import="com.estsoft.guestbook.vo.GuestbookVO"%>
<%@page import="com.estsoft.guestbook.dao.GuestbookDao"%>
<%
	Long no = Long.parseLong( request.getParameter( "no" ) );
	String password = request.getParameter( "password" );

	GuestbookVO vo = new GuestbookVO();
	vo.setNo( no );
	vo.setPassword(password);
	
	GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
	dao.delete( vo );
	
	response.sendRedirect( "/guestbook" );
%>
