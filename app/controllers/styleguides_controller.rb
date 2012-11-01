class StyleguidesController < ApplicationController
  before_filter :authenticate_brewer!,
                :authenticate_brewmeister!

  def show
  end
end