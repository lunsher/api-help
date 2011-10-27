class Apihelp.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null
  
class Apihelp.Collections.PostsCollection extends Backbone.Collection
  model: Apihelp.Models.Post
  url: '/posts'