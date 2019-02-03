<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Forum </title>
    <asset:stylesheet src="home.css" />
  </head>
  <body>

    <h1> Welcome to 368 </h1>

    <sec:ifLoggedIn>
      <h3> <sec:username/> </h3>
    </sec:ifLoggedIn>

    <g:each var="s" in="${sections}">
        <div class="section">
          <li> ${s.title} </li>
          <div class="topic">
            <g:each var="t" in="${s.topics}">
              <li><g:link action="topic" controller="forum" id="" params="[topicId:t.id]">${t.title}</g:link></li>
            </g:each>
          </div>
        </div>
    </g:each>

  </body>
</html>
