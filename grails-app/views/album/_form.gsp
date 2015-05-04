<%@ page import="br.com.ufes.dwws.socialMusic.Album" %>



<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'musics', 'error')} ">
	<label for="musics">
		<g:message code="album.musics.label" default="Musics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${albumInstance?.musics?}" var="m">
    <li><g:link controller="music" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="music" action="create" params="['album.id': albumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'music.label', default: 'Music')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="album.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${albumInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'page', 'error')} ">
	<label for="page">
		<g:message code="album.page.label" default="Page" />
		
	</label>
	<g:textField name="page" value="${albumInstance?.page}"/>
</div>

