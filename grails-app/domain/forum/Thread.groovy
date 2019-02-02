package forum

class Thread {

    static belongsTo = Topic
    static hasMany = [comments: Comment]
    String subject

    static constraints = {
    }
}
