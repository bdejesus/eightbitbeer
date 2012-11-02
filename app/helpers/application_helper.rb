module ApplicationHelper
  def where_i_am
    return request.env['PATH_INFO']
  end

  def is_admin?
  end
end
