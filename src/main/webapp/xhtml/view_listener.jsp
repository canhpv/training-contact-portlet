<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page import="org.exo.test.portlet.ContactInfoBean"%>
<portlet:defineObjects/>

<%!ContactInfoBean contactInfo = null;%>
<%
//retrieve the object from the session
contactInfo = (ContactInfoBean) renderRequest.getPortletSession().getAttribute("contactInfo");

if (contactInfo != null) {

%>
<div>
<table>
<tbody>
<tr>
<th>Name:</th>
<td><%=contactInfo.getName() %></td>
</tr>
<tr>
<th>Email:</th>
<td><%=contactInfo.getEmail() %></td>
</tr>
</tbody>
</table>
</div>
<% } else {
%><p>No contact information.</p><%
}
%>