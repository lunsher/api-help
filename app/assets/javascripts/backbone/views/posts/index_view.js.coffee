Apihelp.Views.Posts ||= {}

class Apihelp.Views.Posts.IndexView extends Backbone.View
  template: JST["backbone/templates/posts/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render')
    
    @options.posts.bind('reset', @addAll)
   
  addAll: () ->
    @options.posts.each(@addOne)
  
  addOne: (post) ->
    view = new Apihelp.Views.Posts.PostView({model : post})
    @$("tbody").append(view.render().el)
       
  render: ->
    $(@el).html(@template(posts: @options.posts.toJSON() ))
    @addAll()
    
    return this
