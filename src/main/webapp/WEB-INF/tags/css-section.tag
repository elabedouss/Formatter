<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<li><textarea placeholder="<spring:message code="formatting.form.input.css"/>" class="uk-textarea"
		name="cssText" rows="15">${cssResult}</textarea></li>