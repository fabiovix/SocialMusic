<%@ page import="br.com.ufes.dwws.socialMusic.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="profile.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${profileInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'avatarURL', 'error')} required">
	<label for="avatarURL">
		<g:message code="profile.avatarURL.label" default="Avatar URL" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="avatarURL" required="" value="${profileInstance?.avatarURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="profile.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${br.com.ufes.dwws.socialMusic.Account.list()}" optionKey="id" required="" value="${profileInstance?.account?.id}" class="many-to-one"/>
</div>

