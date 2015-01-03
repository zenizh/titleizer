require 'rails'

module Title
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'title.rails.helper' do
        ActiveSupport.on_load(:action_view) do
          ActionView::Base.send :include, Title::Rails::Helper
        end
      end
    end
  end
end
