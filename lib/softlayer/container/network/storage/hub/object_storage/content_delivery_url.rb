module Softlayer
  module Container
    module Network
      module Storage
        module Hub
          module ObjectStorage
            class ContentDeliveryUrl < Softlayer::Entity
              attr_accessor :datacenter
              attr_accessor :flash_url
              attr_accessor :http_url

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :datacenter, type: String
                property :flash_url, type: String
                property :http_url, type: String
              end
            end
          end
        end
      end
    end
  end
end
