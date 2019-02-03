package forum
import grails.plugin.springsecurity.annotation.Secured

class ForumController {

    def springSecurityService

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def index() {
      def sections = Section.list()
      render (view: "/forum/home", model: [sections: sections])
    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def topic(long topicId) {
      Topic topic = Topic.get(topicId)
      def threads = topic.threads.asList()
      [topic: topic, threads: threads]
    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def thread(long threadId){
      Thread thread = Thread.get(threadId)
      def comments = thread.comments.asList()
      [thread: thread, comments: comments]
    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def postReply(long threadId, String body) {
      if(body != null){
        Thread thread = Thread.get(threadId)
        def currentUser = springSecurityService.currentUser
        def comment = new Comment(body: body, commentBy: currentUser)
        thread.addToComments(comment)
        thread.save(flush: true)
      }
      redirect(action: 'thread', params: [threadId: threadId])
    }

}
