<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Thread </title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <asset:stylesheet src="thread.css" />
  </head>
  <body>

    <div class ="container">

    <div class="subject">
      ${thread.subject}
      <span class="currentUser">
        <span id="hi"> Hi </span>
        <sec:ifLoggedIn>
          <sec:username/>
        </sec:ifLoggedIn>
      </span>
    </div>


    <hr style="margin-bottom: 30px; margin-top: 25px; background-color: #d1d3d3; height: 2px;">

    <g:each var="c" in="${comments}">
      <div class="commentBox">
        <div class="commentBy"> <span id="by"> By </span> ${c.commentBy.username} </div>
      ${c.body}
      </div>
      <hr>
    </g:each>

    <sec:ifLoggedIn>
    <g:form>
      <g:textArea class="form-control tarea" name="body" />
      <g:hiddenField name="threadId" value="${thread.id}" /> <br>
      <g:actionSubmit class="btn btn-primary" value="Post Comment " action="postReply" />
    </g:form>
    </sec:ifLoggedIn>

    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>
