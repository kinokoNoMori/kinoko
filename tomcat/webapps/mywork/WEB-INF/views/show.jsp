<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.*" %> 
<%@ page import="Member.Member" %> 
<!DOCTYPE html>


<html> 
    <head>
        <title>JavToSql</title>
    </head>
    
    <body>
        <% List<Member> members = (List<Member>)request.getAttribute("members"); %>
            
        <% for (Member member: members) {%>
          <%= member.getId() %> 
          <%= member.getName() %> 
          <%= member.getLevel() %> 
        <% } %>
        
    </body>
</html>
