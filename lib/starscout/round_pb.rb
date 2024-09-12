# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: starscout/round.proto

require 'google/protobuf'

require 'starscout/errors_pb'
require 'starscout/pagination_pb'
require 'starscout/uuid_pb'
require 'google/protobuf/wrappers_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("starscout/round.proto", :syntax => :proto3) do
    add_message "starscout.Round" do
      optional :number, :uint32, 1
      optional :matches_count, :uint32, 2
      optional :complete, :bool, 3
      optional :last_modified_at, :message, 4, "google.protobuf.Timestamp"
      repeated :matches, :message, 5, "starscout.Match"
    end
    add_message "starscout.Match" do
      optional :table, :uint32, 1
      optional :player1_id, :message, 2, "starscout.UUID"
      optional :player2_id, :message, 3, "starscout.UUID"
      optional :winner_id, :message, 4, "starscout.UUID"
      optional :draw, :bool, 5
      optional :bye, :bool, 6
      optional :last_modified_at, :message, 7, "google.protobuf.Timestamp"
    end
    add_message "starscout.MatchAttributes" do
      optional :table, :uint32, 1
      optional :_destroy, :bool, 2
      optional :player1_id, :message, 3, "starscout.UUID"
      optional :player2_id, :message, 4, "starscout.UUID"
      optional :winner_id, :message, 5, "starscout.UUID"
      optional :draw, :bool, 6
      optional :last_modified_at, :message, 7, "google.protobuf.Timestamp"
    end
    add_message "starscout.GetRoundsRequest" do
      optional :event_id, :message, 1, "starscout.UUID"
      optional :page, :message, 2, "google.protobuf.UInt32Value"
      optional :per_page, :message, 3, "google.protobuf.UInt32Value"
    end
    add_message "starscout.GetRoundsResponse" do
      repeated :rounds, :message, 1, "starscout.Round"
      optional :pagination, :message, 2, "starscout.Pagination"
    end
    add_message "starscout.GetRoundRequest" do
      optional :event_id, :message, 1, "starscout.UUID"
      optional :number, :uint32, 2
    end
    add_message "starscout.GetRoundResponse" do
      optional :round, :message, 1, "starscout.Round"
    end
    add_message "starscout.UpsertRoundRequest" do
      optional :event_id, :message, 1, "starscout.UUID"
      optional :number, :uint32, 2
      optional :complete, :bool, 3
      optional :last_modified_at, :message, 4, "google.protobuf.Timestamp"
      repeated :matches, :message, 5, "starscout.MatchAttributes"
    end
    add_message "starscout.UpsertRoundResponse" do
      oneof :response do
        optional :round, :message, 1, "starscout.Round"
        optional :errors, :message, 2, "starscout.ValidationErrors"
      end
    end
    add_message "starscout.DeleteRoundRequest" do
      optional :event_id, :message, 1, "starscout.UUID"
      optional :number, :uint32, 2
    end
    add_message "starscout.DeleteRoundResponse" do
      oneof :response do
        optional :success, :bool, 1
        optional :errors, :message, 2, "starscout.ValidationErrors"
      end
    end
  end
end

module Starscout
  Round = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.Round").msgclass
  Match = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.Match").msgclass
  MatchAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.MatchAttributes").msgclass
  GetRoundsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.GetRoundsRequest").msgclass
  GetRoundsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.GetRoundsResponse").msgclass
  GetRoundRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.GetRoundRequest").msgclass
  GetRoundResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.GetRoundResponse").msgclass
  UpsertRoundRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.UpsertRoundRequest").msgclass
  UpsertRoundResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.UpsertRoundResponse").msgclass
  DeleteRoundRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.DeleteRoundRequest").msgclass
  DeleteRoundResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("starscout.DeleteRoundResponse").msgclass
end
