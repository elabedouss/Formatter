<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<li><textarea
		placeholder="<spring:message code="formatting.form.input.javascript"/>"
		class="uk-textarea" name="javascriptText" rows="15">${javascriptResult}</textarea>
	<div class="uk-margin">
		<button type="submit"
			class="uk-button uk-button-primary uk-width-1-3 uk-align-center"
			onclick="return IsJavascriptString();">
			<spring:message code="formatting.form.button.process" />
		</button>
	</div></li>