Apihelp.Views.Posts ||= {}

class Apihelp.Views.Posts.EditView extends Backbone.View
  template : JST["backbone/templates/posts/edit"]
  
  events :
    "submit #edit-post" : "update"
    
  update : (e) ->
    e.preventDefault()
    e.stopPropagation()
    
    @model.save(null,
      success : (post) =>
        @model = post
        window.location.hash = "/#{@model.id}"
    )
    
  render : ->
    $(this.el).html(this.template(@model.toJSON() ))
    
    this.$("form").backboneLink(@model)
    
    return this