package forum

class Topic {

    static belongsTo = Section
    static hasMany = [threads: Thread]
    String title


    static constraints = {
    }

}
