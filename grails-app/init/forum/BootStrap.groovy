package forum

class BootStrap {

    def init = { servletContext ->

      // initializing username and userrole so that you can login
      def adminRole = new Role(authority: 'ROLE_ADMIN').save()

      def testUser = new User(username: 'me', password: 'password').save()

      UserRole.create testUser, adminRole

      UserRole.withSession {
        it.flush()
        it.clear()
      }

      assert User.count() == 1
      assert Role.count() == 1
      assert UserRole.count() == 1


      if (Section.count() == 0) {

      ('A'..'C').each { sectionLetter ->
        def section = new Section(title: "Section ${sectionLetter}")

        (1..4).each { topicNumber->
          def topic = new Topic(title: "Topic ${sectionLetter}-${topicNumber}")

          ('a'..'e').each { subjectLetter->
            def thread = new Thread(subject: "Subject ${subjectLetter}")
            topic.addToThreads(thread)
          }

          section.addToTopics(topic)
        }

        section.save()

      }

      }


    }
    def destroy = {
    }
}
