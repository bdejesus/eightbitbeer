module ApplicationHelper
  def where_i_am
    return request.env['PATH_INFO']
  end

  def signed_in?
    return true if brewer_signed_in? || brewmeister_signed_in?
  end
end
