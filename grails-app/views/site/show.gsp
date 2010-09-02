
<%@ page import="com.hannonhill.integrator.Site" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="site.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: siteInstance, field: "id")}</td>
                            
                        </tr>                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="site.wsId.label" default="Ws Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: siteInstance, field: "wsId")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="site.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: siteInstance, field: "name")}</td>                            
                        </tr>
                        
                                               
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="site.contentTypes.label" default="Content Types" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${siteInstance.contentTypes}" var="c">
                                    <li>${c?.encodeAsHTML()}</li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${siteInstance?.id}" />
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
