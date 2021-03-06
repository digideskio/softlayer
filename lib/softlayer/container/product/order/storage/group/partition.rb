module Softlayer
  module Container
    module Product
      class Order
        module Storage
          class Group
            class Partition < Softlayer::Entity
              attr_accessor :is_grow
              attr_accessor :name
              attr_accessor :size

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :is_grow, type: Boolean
                property :name, type: String
                property :size, type: Float
              end
            end
          end
        end
      end
    end
  end
end
