module ApplicationHelper

  include Nestive::LayoutHelper

  def render_post(post, more = false)
    concat render partial: "posts/post", locals: {
      post: post,
      more: more
    }
  end

  def render_posts(posts, more = false)
    posts.each do |post|
      render_post post, more
    end
  end

  def title(str)
    puts "\n\n\n\n\n\n"
    puts str
    puts "\n\n\n\n\n\n"
    prepend :title, str + " - "
  end
end
