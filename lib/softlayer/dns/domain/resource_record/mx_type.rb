module Softlayer
  module Dns
    class Domain
      class ResourceRecord
        class MxType < Softlayer::Dns::Domain::ResourceRecord
          SERVICE = 'SoftLayer_Dns_Domain_ResourceRecord_MxType'

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Dns::Domain::ResourceRecord::MxType, message)
          end

          def self.create_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:create_objects, Array[Softlayer::Dns::Domain::ResourceRecord], message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def self.delete_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:delete_objects, Boolean, message)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def self.edit_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:edit_objects, Boolean, message)
          end

          def get_domain
            request(:get_domain, Softlayer::Dns::Domain)
          end

          def get_object
            request(:get_object, Softlayer::Dns::Domain::ResourceRecord::MxType)
          end

          class Representer < Softlayer::Dns::Domain::ResourceRecord::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end