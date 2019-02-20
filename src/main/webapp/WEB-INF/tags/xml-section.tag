<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<li><textarea placeholder="<spring:message code="formatting.form.input.xml"/>" class="uk-textarea"
		name="xmlText" rows="15">${xmlResult}</textarea></li>
