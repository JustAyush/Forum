package forum

class Comment {

    static belongsTo = Thread
    String body

    static constraints = {
      body(maxSize: 8000)
    }
}
