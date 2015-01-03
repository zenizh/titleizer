module Title
  module Rails
    module Helper
      def title(preferred_title)
        preferred_title = nil if preferred_title.empty?

        title = Title.new(title_key, title_options, preferred_title, root_title?)
        title.to_s
      end

      private

      def title_key
        "#{controller_name}.#{action_name}"
      end

      def title_options
        controller.view_assigns.fetch('title_params', {}).merge(default: '')
      end

      def root_title?
        current_page?(root_path)
      end

      class Title
        def initialize(key, options, preferred_title, rootize = false)
          @key = key
          @options = options
          @preferred_title = preferred_title
          @rootize = rootize
        end

        def to_s
          case mode
          when :preferred
            "#{@preferred_title} | #{t('application')}"
          when :root
            "#{t('description')} | #{t('application')}"
          when :default
            "#{t(@key)} | #{t('application')}"
          else
            t('application')
          end
        end

        private

        def mode
          if @preferred_title
            :preferred
          elsif @rootize
            :root
          elsif set?(@key)
            :default
          end
        end

        def set?(key)
          !t(key).empty?
        end

        def t(key)
          I18n.t("title.#{key}", @options)
        end
      end
    end
  end
end
