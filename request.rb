require 'net/http'
require 'pry'

class Request
  attr_accessor :uri

  def initialize(url, body, headers)
    @headers = headers
    @body = body
    @uri = URI.parse(url)
    initialize_client
  end

  def send
    @client.post(uri.path, @body, @headers)
  end

  def add_header(key, value)
    @headers[key] = value
  end

  private

  def initialize_client
    @client = Net::HTTP.new(uri.host, uri.port)
    @client.use_ssl = true
  end
end
