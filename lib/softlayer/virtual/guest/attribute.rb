module Softlayer
  module Virtual
    class Guest
      class Attribute < Softlayer::Entity
        autoload :Type, 'softlayer/virtual/guest/attribute/type'
        autoload :UserData, 'softlayer/virtual/guest/attribute/user_data'
        attr_accessor :value
        attr_accessor :guest
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :value, type: String
        end
      end
    end
  end
end
