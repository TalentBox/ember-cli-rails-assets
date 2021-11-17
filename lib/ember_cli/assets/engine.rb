module EmberCli
  module Assets
    class Engine < ::Rails::Engine
      initializer "ember-cli-rails-assets" do
        if Rails.application.config.action_controller.include_all_helpers
          ActionController::Base.helper EmberCliRailsAssetsHelper
        end
      end
    end
  end
end
