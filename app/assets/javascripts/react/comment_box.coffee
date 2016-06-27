@CommentBox = React.createClass
  getInitialState: ->
    comments: @props.data.comments

  render: ->
    <div className="comment-box">
      <CommentList data={@state.comments} />
      <CommentForm create_comment={@create_comment} ref="form"/>
    </div>

  create_comment: (e)->
    e.preventDefault();
    comment = @refs.form.refs.comment_textarea.value
    jQuery.ajax
      url: @props.data.post_url
      type: "POST"
      data:
        content: comment
    .done (res)=>
      comments = @state.comments
      comments.push res
      @setState comments

CommentList = React.createClass
  render: ->
    <div className="comment-list">
      {
        for item in @props.data
          <Comment data={item} />
      }
    </div>

Comment = React.createClass
  render: ->
    <div className="comment">
      <div className="content">{@props.data.content}</div>
      <div className="creator">{@props.data.creator}</div>
    </div>

CommentForm = React.createClass
  render: ->
    <div className="comment-form">
      <form className="commentForm">
        <textarea placeholder="请输入评论" ref="comment_textarea">
        </textarea>
        <input type="submit" value="提交" onClick={@props.create_comment} />
      </form>
    </div>
