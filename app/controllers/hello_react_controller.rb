class HelloReactController < ApplicationController
  def page_1
    @component_data = {
      comments: [
        {
          content: "我是评论11111",
          creator: "李飞"
        },
        {
          content: "我是评论222222",
          creator: "附上其实"
        },
      ],
      post_url: "/hello_react/create_comments"
    }
  end

  def create_comments
    render json: {
      content: params[:content],
      creator: "李飞"
    }
  end
end
