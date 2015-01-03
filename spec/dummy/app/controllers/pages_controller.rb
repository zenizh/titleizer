class PagesController < ApplicationController
  def root
  end

  def preferred
  end

  def default
  end

  def default_with_params
    @title_params = { params: 'with params' }
  end

  def no_title
  end
end
