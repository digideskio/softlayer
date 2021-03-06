module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          module Storage
            module Iscsi
              autoload :EqualLogic, 'softlayer/notification/occurrence/resource/network/storage/iscsi/equal_logic'
              autoload :NetApp, 'softlayer/notification/occurrence/resource/network/storage/iscsi/net_app'
            end
          end
        end
      end
    end
  end
end
