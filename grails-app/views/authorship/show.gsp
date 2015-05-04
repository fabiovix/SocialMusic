
<%@ page import="br.com.ufes.dwws.socialMusic.Authorship" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'authorship.label', default: 'Authorship')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-authorship" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-authorship" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list authorship">
			
				<g:if test="${authorshipInstance?.albuns}">
				<li class="fieldcontain">
					<span id="albuns-label" class="property-label"><g:message code="authorship.albuns.label" default="Albuns" /></span>
					
						<g:each in="${authorshipInstance.albuns}" var="a">
						<span class="property-value" aria-labelledby="albuns-label"><g:link controller="album" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${authorshipInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="authorship.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${authorshipInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorshipInstance?.page}">
				<li class="fieldcontain">
					<span id="page-label" class="property-label"><g:message code="authorship.page.label" default="Page" /></span>
					
						<span class="property-value" aria-labelledby="page-label"><g:fieldValue bean="${authorshipInstance}" field="page"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:authorshipInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${authorshipInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
