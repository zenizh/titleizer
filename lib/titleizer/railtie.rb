require 'rails'

module Titleizer
  class Railtie < ::Rails::Railtie
    initializer 'titleizer' do
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.send :include, Titleizer
      end
    end
  end
end
