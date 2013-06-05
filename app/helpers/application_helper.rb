require 'redcarpet'
module ApplicationHelper

   def resource_name
    :user

  end

  def resource
    @resource = User.new
  end

  def devise_mapping
    @devise_mapping = Devise.mappings[:user]
  end

  def markdown(text)
    if text
      markdown = Redcarpet::Markdown.new(
        Redcarpet::Render::HTML.new
      )
      markdown.render(text).html_safe
    end
  end


end
