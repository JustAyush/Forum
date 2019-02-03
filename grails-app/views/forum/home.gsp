<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Forum </title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <asset:stylesheet src="home.css" />
  </head>
  <body>

    <div class="container">

      <div class="subject">
        Welcome to this <span id="forum">FORUM</span>
        <span class="currentUser">
          <span id="hi"> Hi </span>
          <sec:ifLoggedIn>
            <sec:username/>
          </sec:ifLoggedIn>
        </span>
      </div>

      <hr style="margin-bottom: 30px; margin-top: 25px; background-color: #d1d3d3; height: 2px;">

      <g:each var="s" in="${sections}">
        <div class="commentBox">
          <div class="section">
            <span style="font-size: 25px;">${s.title} </span>
            <div class="topic">
              <g:each var="t" in="${s.topics}">
                <g:link action="topic" controller="forum" id="" params="[topicId:t.id]" class="topics">${t.title}</g:link>
              </g:each>
            </div>
          </div>
        </div>
        <hr>
      </g:each>


    <!-- <g:each var="s" in="${sections}">
        <div class="section">
          <li> ${s.title} </li>
          <div class="topic">
            <g:each var="t" in="${s.topics}">
              <li><g:link action="topic" controller="forum" id="" params="[topicId:t.id]">${t.title}</g:link></li>
            </g:each>
          </div>
        </div>
    </g:each> -->

    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>
