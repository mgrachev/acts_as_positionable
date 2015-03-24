module ActsAsPositionable
  class Railie < ::Rails::Railtie
    initializer 'acts_as_positionable.initialize' do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Base.send :extend, ActsAsPositionable
      end
    end
  end
end