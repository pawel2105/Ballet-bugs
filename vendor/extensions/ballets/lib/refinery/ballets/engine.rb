module Refinery
  module Ballets
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Ballets

      engine_name :refinery_ballets

      initializer "register refinerycms_ballets plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ballets"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ballets_admin_ballets_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ballets/ballet'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Ballets)
      end
    end
  end
end
