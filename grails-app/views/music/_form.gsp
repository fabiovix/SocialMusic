<%@ page import="br.com.ufes.dwws.socialMusic.Music" %>



<div class="fieldcontain ${hasErrors(bean: musicInstance, field: 'album', 'error')} required">
	<label for="album">
		<g:message code="music.album.label" default="Album" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="album" name="album.id" from="${br.com.ufes.dwws.socialMusic.Album.list()}" optionKey="id" required="" value="${musicInstance?.album?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: musicInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="music.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${musicInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: musicInstance, field: 'urls', 'error')} ">
	<label for="urls">
		<g:message code="music.urls.label" default="Urls" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${musicInstance?.urls?}" var="u">
    <li><g:link controller="musicURL" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="musicURL" action="create" params="['music.id': musicInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'musicURL.label', default: 'MusicURL')])}</g:link>
</li>
</ul>

</div>

