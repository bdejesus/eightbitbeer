module ApplicationHelper
  def where_i_am
    return request.env['PATH_INFO']
  end

  def is_admin?
  end

  # TODO: Fix this
  def link_button(title, link, options = [])
    link_to(title, link, options)
  end
end
