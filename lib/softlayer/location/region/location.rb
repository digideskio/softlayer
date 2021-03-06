module Softlayer
  class Location
    class Region
      class Location < Softlayer::Entity
        attr_accessor :location_package_detail_count
        attr_accessor :location
        attr_accessor :location_package_details
        attr_accessor :region

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :location_package_detail_count, type: BigDecimal
        end
      end
    end
  end
end
