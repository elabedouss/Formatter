<!DOCTYPE html>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>
    <title>Formatter</title>
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
                    <li class="uk-parent"><a href="#learn" uk-scroll>Learn</a></li>
                    <li class="uk-parent"><a href="#changelog" uk-scroll>Changelog</a></li>
                    <li class="uk-parent"><a href="#contact" uk-scroll>Contact</a></li>
                    <li class="uk-parent" ><a href="#about" uk-scroll>About</a></li>
                </ul>
            </div>
        </nav>
    </div>
    <section class="uk-section uk-section-muted uk-section-xsmall" uk-scrollspy="cls:uk-animation-slide-right-medium">
        <div class="uk-container uk-container-small">
        <form method="POST" action="/pretty" name="formFormatting">
        	 <div class="uk-position-relative uk-margin-medium">
                <ul uk-tab class="uk-tab" uk-switcher>
                     <li aria-expanded="true" class="uk-active" uk-tooltip="Implemented"><a href="#">JSON</a></li>
                     <li uk-tooltip="In progress"><a href="#" >XML</a></li>
                      <li uk-tooltip="Not allowed"><a href="#" >HTML</a></li>
                      <li uk-tooltip="Not allowed"><a href="#" >JAVASCRIPT</a></li>
                      <li uk-tooltip="Not allowed"><a href="#" >CSS</a></li>
                      <li uk-tooltip="Not allowed"><a href="#" >SQL</a></li>
                      <li uk-tooltip="Not allowed"><a href="#" >JAVA</a></li>
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
                <button type="submit" class="uk-button uk-button-primary uk-width-1-3 uk-align-center" onclick="return IsJsonString();">Process</button>
            </div>
        </form>
        </div>
    </section>
    <section id="contact" class="uk-section uk-section-muted uk-section-xsmall" uk-scrollspy="cls:uk-animation-slide-right-medium">
        <div class="uk-container uk-container-small">
         	<hr class="uk-divider-icon">
            <h2 class="uk-heading-line uk-text-center uk-text-uppercase">Contact</h2>
            <hr class="uk-divider-icon">
            <p class="uk-text-center">Over the years the JSON Formatter &amp; Validator has been immensely improved
                through the
                feedback and suggestions of its users. We encourage you to continue to pass along any new
                recommendations, requests or bug reports.</p>
            <form method="POST" action="/contact">
                <div class="uk-margin">
                    <input class="uk-input" type="text" name="name" placeholder="Name">
                </div>
                <div class="uk-margin">
                    <input class="uk-input" type="email" name="email" placeholder="Email Address">
                </div>
                <div class="uk-margin">
                    <textarea placeholder="Message" class="uk-textarea" name="message" rows="6"></textarea>
                </div>
                <div class="uk-margin">
                    <button type="submit" class="uk-button uk-button-primary uk-width-1-3 uk-align-center" id="send"
                        data-loading-text="<i class='fa fa-cog fa-spin'></i>">Send</button>
                </div>
            </form>
        </div>
    </section>
    <section id="about" class="uk-section uk-section-muted uk-section-xsmall" uk-scrollspy="cls:uk-animation-slide-left-medium">
        <div class="uk-container uk-container-small">
       		<hr class="uk-divider-icon">
            <h2 class="uk-heading-line uk-text-center uk-text-uppercase">About</h2>
            <hr class="uk-divider-icon">
            <p class="uk-text-center">The JSON Formatter was created to help with debugging. As JSON data is often
                output without line breaks to save space, it is extremely difficult to actually read and make sense of
                it. This little tool hoped to solve the problem by formatting the JSON data so that it is easy to read
                and debug by human beings.</p>
            <p class="uk-text-center">Shortly after it was created, JSON validation was added following the description
                set out by Douglas Crockford of json.org in RFC 4627. It has since been expanded to also validate both
                current competing JSON standards RFC 7159 and ECMA-404.</p>
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