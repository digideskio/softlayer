module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Iscsi
              class Replication < Softlayer::Container::Product::Order
                attr_accessor :volume_id

                class Representer < Softlayer::Container::Product::Order::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :volume_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
