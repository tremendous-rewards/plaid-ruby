=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.26.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  class CountryCode
    US = "US".freeze
    GB = "GB".freeze
    ES = "ES".freeze
    NL = "NL".freeze
    FR = "FR".freeze
    IE = "IE".freeze
    CA = "CA".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CountryCode.constants.select { |c| CountryCode::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CountryCode" if constantValues.empty?
      value
    end
  end
end
