
<%@ page import="br.com.ufes.dwws.socialMusic.Music" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'music.label', default: 'Music')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-music" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-music" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list music">
			
				<g:if test="${musicInstance?.album}">
				<li class="fieldcontain">
					<span id="album-label" class="property-label"><g:message code="music.album.label" default="Album" /></span>
					
						<span class="property-value" aria-labelledby="album-label"><g:link controller="album" action="show" id="${musicInstance?.album?.id}">${musicInstance?.album?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${musicInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="music.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${musicInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${musicInstance?.urls}">
				<li class="fieldcontain">
					<span id="urls-label" class="property-label"><g:message code="music.urls.label" default="Urls" /></span>
					
						<g:each in="${musicInstance.urls}" var="u">
						<span class="property-value" aria-labelledby="urls-label"><g:link controller="musicURL" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:musicInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${musicInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
