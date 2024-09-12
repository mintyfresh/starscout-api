# frozen_string_literal: true

module Starscout
  Dir[File.expand_path('**/*.rb', __dir__)].each do |file|
    require file
  end
end
