module DisqusRails
    class Engine < ::Rails::Engine
    engine_name 'disqus_rails'
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    ActiveSupport.on_load(:action_view) do
      include DisqusRails::Helper
    end
  end
end