<%@page import="java.io.UncheckedIOException"%>
<%@ page import="java.util.*"%>

<html>

<body>
	<h1 align="center">Product Recommendation JSP</h1>

	<p>You might want to try the following:</p>

	<ul>
		<% 
			@SuppressWarnings("unchecked")
			List<String> styles = (List<String>)request.getAttribute("recommendedProducts");
			Iterator<String> iterator = styles.iterator();
			while(iterator.hasNext()){
				out.print(String.format("<li>%s</i>", iterator.next()));
			}
		%>
	</ul>

</body>

</html>