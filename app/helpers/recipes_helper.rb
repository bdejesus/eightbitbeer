module RecipesHelper
  def beer_styles
    return Array[
      'Pale Ale',
      'Amber Ale',
      'India Pale Ale',
      'Brown Ale',
      'Porter',
      'Stout',
      'Belgian Ale',
      'Wheat',
      'Lager'
    ]
  end

  def has_ingredients?
    return true
  end
end
