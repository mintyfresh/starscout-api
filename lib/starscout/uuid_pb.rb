# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: starscout/uuid.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("starscout/uuid.proto", :syntax => :proto3) do
    add_message "starscout.UUID" do
      optional :value, :bytes, 1
    end
  end
end

module Starscout
  UUID = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.UUID").msgclass
end
