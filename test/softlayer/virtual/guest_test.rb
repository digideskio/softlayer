require 'test_helper'

describe Softlayer::Virtual::Guest, :vcr do
  before(:each) { configure_connection }
  describe ".get_create_object_options" do
    it "return all options" do
      options = Softlayer::Virtual::Guest.get_create_object_options
      options.block_devices[60].item_price.hourly_recurring_fee.must_equal ".043"
    end
  end

  context "mock" do
    describe ".create_object" do
      it "return a virtual guest" do
        virtual_guest_attrs = {
          "hostname": "host1",
           "domain": "example.com",
           "start_cpus": 1,
           "max_memory": 1024,
           "hourly_billing_flag": true,
           "local_disk_flag": true,
           "operating_system_reference_code": "UBUNTU_LATEST"
        }
        Softlayer.configuration.username = 'SL000000'
        Softlayer.mock!
        virtual_guest = Softlayer::Virtual::Guest.create_object(virtual_guest_attrs)
        virtual_guest.must_be_kind_of Softlayer::Virtual::Guest
        virtual_guest.domain.must_equal "example.com"
        virtual_guest.hostname.must_equal "host1"
      end
    end
  end
end
