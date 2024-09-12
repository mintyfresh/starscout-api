# frozen_string_literal: true

module Starscout
  Dir[File.expand_path('**/*.rb', __dir__)].each do |file|
    require file
  end

  # @param uuid [String]
  # @return [UUID]
  def self.encode_uuid(uuid)
    upper, lower = uuid.delete('-').scan(/.{16}/).map { |part| part.to_i(16) }

    UUID.new(upper:, lower:)
  end

  # @param uuid [UUID]
  # @return [String]
  def self.decode_uuid(uuid)
    result = [uuid.upper, uuid.lower].map { |part| part.to_s(16).rjust(16, '0') }.join
    result = result.insert(8, '-').insert(13, '-').insert(18, '-').insert(23, '-')

    result
  end

  # @param time [Time]
  # @return [Google::Protobuf::Timestamp]
  def self.encode_timestamp(time)
    Google::Protobuf::Timestamp.new(seconds: time.tv_sec, nanos: time.tv_nsec)
  end

  # @param timestamp [Google::Protobuf::Timestamp] the timestamp to decode
  # @param utc [Boolean] whether to interpret the time as UTC
  # @return [Time]
  def self.decode_timestamp(time, utc: true)
    result = Time.at(time.seconds, time.nanos, :nsec)
    result.utc if utc

    result
  end
end
