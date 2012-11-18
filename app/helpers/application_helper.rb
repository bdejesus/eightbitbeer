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

  def calculate_abv(og, fg)
    return "#{number_with_precision(((og - fg) * 131.25), precision: 2)}% abv"
  end

  def calculate_alt_abv(og, fg)
    return "#{number_with_precision(((76.08 * (og-fg) / (1.775 - og)) * (fg / 0.794)), precision: 2)}% abv"
  end
end
