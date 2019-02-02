<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Topic's threads </title>
  </head>
  <body>

    <h4> ${topic.title} </h4>

    <g:each var="t" in="${threads}">
        <li>   <g:link action="thread" controller="forum" id="" params="[threadId: t.id]"> ${t.subject}</g:link> </li>
    </g:each>


  </body>
</html>
