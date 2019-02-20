<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<li class="uk-active"><textarea placeholder="<spring:message code="formatting.form.input.json"/>"
		class="uk-textarea" name="jsonText" rows="15">${jsonResult}</textarea></li>