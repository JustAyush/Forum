

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'forum.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'forum.UserRole'
grails.plugin.springsecurity.authority.className = 'forum.Role'
grails.plugin.springsecurity.logout.postOnly = false // enabling user logout through GET request
grails.plugin.springsecurity.ui.register.defaultRoleNames = ['ROLE_USER']
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/dbconsole/**',   access: ['ROLE_ADMIN']],
	[pattern: '/plugins/**',     access: ['ROLE_ADMIN']],
	[pattern: '/user/**',   		 access: ['permitAll']],
	[pattern: '/register/**',   		 access: ['permitAll']],
	[pattern: '/role/**',   		 access: ['ROLE_ADMIN']],
	[pattern: '/securityInfo/**',       access: ['ROLE_ADMIN']],
	[pattern: '/registrationCode/**',   access: ['ROLE_ADMIN']],
	[pattern: '/login/**',   		 access: ['permitALL']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
