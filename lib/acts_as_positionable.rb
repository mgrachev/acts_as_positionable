require 'active_support/concern'
require 'active_support/core_ext/module/attribute_accessors'
require_relative 'acts_as_positionable/version'

module ActsAsPositionable

  def acts_as_positionable(attribute_name = :position)
    class_eval <<-CODE
      scope :ordered, -> { order(:#{attribute_name}) }
      after_initialize :_increment_position

      def _increment_position
        return if persisted?
        return if #{attribute_name}?


        if self.class.any?
          self.#{attribute_name} = self.class.ordered.last.#{attribute_name}
        end

        increment(:#{attribute_name}, 1)
      end

      private :_increment_position
    CODE
  end

end

require_relative 'acts_as_positionable/railtie' if defined? Rails