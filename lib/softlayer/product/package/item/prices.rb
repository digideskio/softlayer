module Softlayer
  module Product
    class Package
      module Item
        class Prices < Softlayer::Entity
          attr_accessor :id
          attr_accessor :item_price_id
          attr_accessor :package_id
          attr_accessor :item_price
          attr_accessor :package

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :item_price_id, type: Integer
            property :package_id, type: Integer
          end
        end
      end
    end
  end
end
