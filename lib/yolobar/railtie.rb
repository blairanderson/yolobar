require 'yolobar/view_helpers'

module Yolobar
  module Rails
    class Engine < ::Rails::Engine
    end

    class Railtie < ::Rails::Railtie
      initializer "yolobar.view_helpers" do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end
