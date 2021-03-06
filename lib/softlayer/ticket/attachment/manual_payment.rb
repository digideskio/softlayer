module Softlayer
  class Ticket
    class Attachment
      class ManualPayment < Softlayer::Ticket::Attachment
        attr_accessor :resource

        class Representer < Softlayer::Ticket::Attachment::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
