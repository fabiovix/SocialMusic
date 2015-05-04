<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><g:layoutTitle default="Grails"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
	<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
	<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'night_sky/css', file: 'style.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
	<g:layoutHead/>
	<r:layoutResources />
</head>
<body>


<div id="main">

	<div id="menubar">
		<div id="welcome">
			<h1><a href="#">Social Music</a></h1>
		</div><!--close welcome-->
		<div id="menu_items">
			<ul id="menu">
				<g:if test="${request.getSession(false)?.objeto}">
					<li class="current"><g:link uri="/"><g:message code="default.button.home.label" default="Início"/></g:link></li>
					<li><g:link uri="/profile/"><g:message code="default.button.profile.label" default="Profile"/></g:link></li>
					<li><g:link uri="/album"><g:message code="default.button.myAlbum.label" default="Albuns"/></g:link></li>
					<li><g:link uri="/authorship"><g:message code="default.button.myBands.label" default="Bandas"/></g:link></li>
					<li ><g:link uri="/music"><g:message code="default.button.myMusics.label" default="Musicas"/></g:link></li>
					<li ><g:link uri="/account/signOut">Sair</g:link></li>
				</g:if>
				<g:else>
					<li><g:link uri="/account/loginForm">Entrar</g:link></li>
				</g:else>

			</ul>
		</div><!--close menu-->
	</div><!--close menubar-->
</div>

<g:layoutBody/>
<r:layoutResources />


</body>
</html>
