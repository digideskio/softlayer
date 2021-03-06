module Softlayer
  class Network
    class Component
      class Firewall
        class Subnets < Softlayer::Entity
          attr_accessor :apply_server_rules_flag
          attr_accessor :subnet_id
          attr_accessor :network_component_firewall
          attr_accessor :subnet

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :apply_server_rules_flag, type: Boolean
            property :subnet_id, type: Integer
          end
        end
      end
    end
  end
end
