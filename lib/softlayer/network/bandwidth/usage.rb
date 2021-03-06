module Softlayer
  class Network
    module Bandwidth
      class Usage < Softlayer::Entity
        autoload :Detail, 'softlayer/network/bandwidth/usage/detail'
        attr_accessor :amount_in
        attr_accessor :amount_out
        attr_accessor :bandwidth_usage_detail_type_id
        attr_accessor :tracking_object
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :amount_in, type: Float
          property :amount_out, type: Float
          property :bandwidth_usage_detail_type_id, type: Float
        end
      end
    end
  end
end
