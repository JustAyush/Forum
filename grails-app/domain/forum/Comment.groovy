package forum

class Comment {

    static belongsTo = Thread
    String body
    User commentBy

    static constraints = {
      body(maxSize: 8000)
    }
}
