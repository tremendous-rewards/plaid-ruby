=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.105.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # An object specifying the arguments originally provided to the `/link/token/create` call.
  class LinkTokenGetMetadataResponse
    # The `products` specified in the `/link/token/create` call.
    attr_accessor :initial_products

    # The `webhook` specified in the `/link/token/create` call.
    attr_accessor :webhook

    # The `country_codes` specified in the `/link/token/create` call.
    attr_accessor :country_codes

    # The `language` specified in the `/link/token/create` call.
    attr_accessor :language

    attr_accessor :institution_data

    attr_accessor :account_filters

    # The `redirect_uri` specified in the `/link/token/create` call.
    attr_accessor :redirect_uri

    # The `client_name` specified in the `/link/token/create` call.
    attr_accessor :client_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'initial_products' => :'initial_products',
        :'webhook' => :'webhook',
        :'country_codes' => :'country_codes',
        :'language' => :'language',
        :'institution_data' => :'institution_data',
        :'account_filters' => :'account_filters',
        :'redirect_uri' => :'redirect_uri',
        :'client_name' => :'client_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'initial_products' => :'Array<Products>',
        :'webhook' => :'String',
        :'country_codes' => :'Array<CountryCode>',
        :'language' => :'String',
        :'institution_data' => :'LinkTokenCreateInstitutionData',
        :'account_filters' => :'AccountFiltersResponse',
        :'redirect_uri' => :'String',
        :'client_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'webhook',
        :'language',
        :'redirect_uri',
        :'client_name'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::LinkTokenGetMetadataResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::LinkTokenGetMetadataResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'initial_products')
        if (value = attributes[:'initial_products']).is_a?(Array)
          self.initial_products = value
        end
      end

      if attributes.key?(:'webhook')
        self.webhook = attributes[:'webhook']
      end

      if attributes.key?(:'country_codes')
        if (value = attributes[:'country_codes']).is_a?(Array)
          self.country_codes = value
        end
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'institution_data')
        self.institution_data = attributes[:'institution_data']
      end

      if attributes.key?(:'account_filters')
        self.account_filters = attributes[:'account_filters']
      end

      if attributes.key?(:'redirect_uri')
        self.redirect_uri = attributes[:'redirect_uri']
      end

      if attributes.key?(:'client_name')
        self.client_name = attributes[:'client_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @initial_products.nil?
        invalid_properties.push('invalid value for "initial_products", initial_products cannot be nil.')
      end

      if @country_codes.nil?
        invalid_properties.push('invalid value for "country_codes", country_codes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @initial_products.nil?
      return false if @country_codes.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          initial_products == o.initial_products &&
          webhook == o.webhook &&
          country_codes == o.country_codes &&
          language == o.language &&
          institution_data == o.institution_data &&
          account_filters == o.account_filters &&
          redirect_uri == o.redirect_uri &&
          client_name == o.client_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [initial_products, webhook, country_codes, language, institution_data, account_filters, redirect_uri, client_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
