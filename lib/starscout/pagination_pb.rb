# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: starscout/pagination.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("starscout/pagination.proto", :syntax => :proto3) do
    add_message "starscout.Pagination" do
      optional :page, :uint32, 1
      optional :per_page, :uint32, 2
      optional :total_pages, :uint32, 3
      optional :total_count, :uint32, 4
    end
  end
end

module Starscout
  Pagination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.Pagination").msgclass
end
