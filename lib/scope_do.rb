require 'scope_do/named_acl'
require 'scope_do/chained_scope'
require 'scope_do/has_children'

module ScopeDo
  VERSION = '0.1.1'
  module Adapter
    def scope_do *functions
      functions.each do |function|
        module_name = function.to_s.camelize
        include ScopeDo.const_get(module_name)
      end
    end
  end
end
