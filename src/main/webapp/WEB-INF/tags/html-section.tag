<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<li><textarea
		placeholder="<spring:message code="formatting.form.input.html"/>"
		class="uk-textarea" name="htmlText" rows="15">${htmlResult}</textarea><div class="uk-margin">
		<button type="submit"
			class="uk-button uk-button-primary uk-width-1-3 uk-align-center"
			onclick="return IsHtmlString();">
			<spring:message code="formatting.form.button.process" />
		</button>
	</div></li>