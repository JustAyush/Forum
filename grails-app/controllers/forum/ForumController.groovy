package forum
import grails.plugin.springsecurity.annotation.Secured

class ForumController {

    @Secured('ROLE_ADMIN')
    def index() {
      def sections = Section.list()
      render (view: "/forum/home", model: [sections: sections])
    }

    @Secured('ROLE_ADMIN')
    def topic(long topicId) {
      Topic topic = Topic.get(topicId)
      def threads = topic.threads.asList()
      [topic: topic, threads: threads]
    }

    @Secured('ROLE_ADMIN')
    def thread(long threadId){
      Thread thread = Thread.get(threadId)
      def comments = thread.comments.asList()
      [thread: thread, comments: comments]
    }

    @Secured('ROLE_ADMIN')
    def postReply(long threadId, String body) {
      if(body != null){
        Thread thread = Thread.get(threadId)
        def comment = new Comment(body: body)
        thread.addToComments(comment)
        thread.save(flush: true)
      }
      redirect(action: 'thread', params: [threadId: threadId])
    }

}
