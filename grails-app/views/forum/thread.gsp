<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Thread </title>
    <asset:stylesheet src="thread.css" />
  </head>
  <body>


    <h5> ${thread.subject}</h5>

    <sec:ifLoggedIn>
      <h3> <sec:username/> </h3>
    </sec:ifLoggedIn>

    <g:each var="c" in="${comments}">
      <div class="commentBox">
      ${c.body} ${c.commentBy.username}
      </div>
    </g:each>

    <sec:ifLoggedIn>
    <g:form>
      <g:textArea name="body" />
      <g:hiddenField name="threadId" value="${thread.id}" />
      <fieldset class="buttons">
        <g:actionSubmit value="Post Comment " action="postReply" />
      </fieldset>
    </g:form>
    </sec:ifLoggedIn>

  </body>
</html>
