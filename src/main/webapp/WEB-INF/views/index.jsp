<!DOCTYPE html>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>
    <title><spring:message code="website.title"/></title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <spring:url value="/resources/themes/uikit.min.css" var="uikitCss" />
	<link href="${uikitCss}" rel="stylesheet" />
</head>
<body>
    <div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky">
        <nav class="uk-navbar-container" uk-navbar>
            <div class="uk-navbar-right">
                <ul class="uk-navbar-nav">
                    <li class="uk-parent"><a href="#learn" uk-scroll><spring:message code="navbar.menu.learn"/></a></li>
                    <li class="uk-parent"><a href="#changelog" uk-scroll><spring:message code="navbar.menu.changelog"/></a></li>
                    <li class="uk-parent"><a href="#contact" uk-scroll><spring:message code="navbar.menu.contact"/></a></li>
                    <li class="uk-parent" ><a href="#about" uk-scroll><spring:message code="navbar.menu.about"/></a></li>
                </ul>
            </div>
        </nav>
    </div>
    <section class="uk-section uk-section-muted uk-section-xsmall" uk-scrollspy="cls:uk-animation-slide-right-medium">
        <div class="uk-container uk-container-small">
        <form method="POST" action="/pretty" name="formFormatting">
        	 <div class="uk-position-relative uk-margin-medium">
                <ul uk-tab class="uk-tab" uk-switcher>
                     <li aria-expanded="true" class="uk-active" uk-tooltip="Implemented"><a href="#"><spring:message code="formatting.header.tooltip.json"/></a></li>
                     <li uk-tooltip="In progress"><a href="#" ><spring:message code="formatting.header.tooltip.xml"/></a></li>
                      <li uk-tooltip="Not allowed"><a href="#" ><spring:message code="formatting.header.tooltip.html"/></a></li>
                      <li uk-tooltip="Not allowed"><a href="#" ><spring:message code="formatting.header.tooltip.javascript"/></a></li>
                      <li uk-tooltip="Not allowed"><a href="#" ><spring:message code="formatting.header.tooltip.css"/></a></li>
                      <li uk-tooltip="Not allowed"><a href="#" ><spring:message code="formatting.header.tooltip.sql"/></a></li>
                      <li uk-tooltip="Not allowed"><a href="#" ><spring:message code="formatting.header.tooltip.java"/></a></li>
                </ul>
                <ul class="uk-switcher uk-margin">
                    	<tags:json-section />
                		<tags:xml-section />
 						<tags:html-section />
						<tags:javascript-section />
						<tags:css-section />
						<tags:sql-section />
						<tags:java-section />
                </ul>
                <div class="uk-position-top-right">
                    <ul class="uk-iconnav">
                        <li>
                         	<a class="js-copy" uk-tooltip="Copy to Clipboard" aria-expanded="false" onclick="copyToClipboard()">
          						<img class="uk-icon" src="resources/images/icon-clipboard.svg" uk-svg="" hidden="true">
							</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="uk-margin">
                <button type="submit" class="uk-button uk-button-primary uk-width-1-3 uk-align-center" onclick="return IsJsonString();"><spring:message code="formatting.form.button.process"/></button>
            </div>
        </form>
        </div>
    </section>
    <section id="contact" class="uk-section uk-section-muted uk-section-xsmall" uk-scrollspy="cls:uk-animation-slide-right-medium">
        <div class="uk-container uk-container-small">
         	<hr class="uk-divider-icon">
            <h2 class="uk-heading-line uk-text-center uk-text-uppercase"><spring:message code="contact.section.name"/></h2>
            <hr class="uk-divider-icon">
            <p class="uk-text-center"><spring:message code="contact.section.text"/></p>
            <form method="POST" action="/contact">
                <div class="uk-margin">
                    <input class="uk-input" type="text" name="name" placeholder="<spring:message code="contact.form.input.name"/>">
                </div>
                <div class="uk-margin">
                    <input class="uk-input" type="email" name="email" placeholder="<spring:message code="contact.form.input.email"/>">
                </div>
                <div class="uk-margin">
                    <textarea class="uk-textarea" name="message" placeholder="<spring:message code="contact.form.input.message"/>" rows="6"></textarea>
                </div>
                <div class="uk-margin">
                    <button type="submit" class="uk-button uk-button-primary uk-width-1-3 uk-align-center" id="send"
                        data-loading-text="<i class='fa fa-cog fa-spin'></i>"><spring:message code="contact.form.button.send"/></button>
                </div>
            </form>
        </div>
    </section>
    <section id="about" class="uk-section uk-section-muted uk-section-xsmall" uk-scrollspy="cls:uk-animation-slide-left-medium">
        <div class="uk-container uk-container-small">
       		<hr class="uk-divider-icon">
            <h2 class="uk-heading-line uk-text-center uk-text-uppercase"><spring:message code="about.section.name"/></h2>
            <hr class="uk-divider-icon">
            <p class="uk-text-center"><spring:message code="about.section.text"/></p>
        </div>
    </section>
    <spring:url value="/resources/scripts/jquery-3.3.1.min.js" var="jqueyJs" />
    <spring:url value="/resources/scripts/uikit-icons.min.js" var="uikitIcons" />
	<spring:url value="/resources/scripts/uikit.min.js" var="uikitJs" />
	<spring:url value="/resources/scripts/index.js" var="indexJs" />
	<script src="${jqueyJs}"></script>
	<script src="${uikitIcons}"></script>
	<script src="${uikitJs}"></script>
	<script src="${indexJs}"></script>
</body>
</html>