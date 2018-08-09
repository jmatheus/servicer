# Public: Servicer methods. Because Servicer is a module, custom Servicer
# classes should include Servicer rather than inherit from it.
#
#
# Examples
#
#
# class MyService
#   include Servicer
#
#   def my_method
#     puts do_stuff
#   end
# end
module Servicer

  # Internal: Install Service's behavior in the given class.
  def self.included(base)
    base.class_eval do
      extend ClassMethods
      include Hooks
    end
  end

  # Internal: Servicer class methods.
  module ClassMethods

  end
end
