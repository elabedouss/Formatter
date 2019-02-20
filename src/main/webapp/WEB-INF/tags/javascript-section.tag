<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<li><textarea placeholder="<spring:message code="formatting.form.input.javascript"/>" class="uk-textarea"
		name="javascriptText" rows="15">${javascriptResult}</textarea></li>