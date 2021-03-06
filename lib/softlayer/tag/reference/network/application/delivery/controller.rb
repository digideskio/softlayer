module Softlayer
  class Tag
    class Reference
      module Network
        module Application
          module Delivery
            class Controller < Softlayer::Tag::Reference
              attr_accessor :resource

              class Representer < Softlayer::Tag::Reference::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
