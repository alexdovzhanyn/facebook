require "http/client"
require "http/params"

class Request
  property body
  @@default_params = {} of String => String
  @@default_url : String = ""
  @params : String
  @body : String

  def initialize(@path : String, @method : String, params = {} of String => String)
    @params = HTTP::Params.encode(@@default_params.merge(params)) # TODO: combine params with default_params
    @body = HTTP::Client.exec(@method, "#{@@default_url}/#{@path}?#{@params}").body
  end

  def self.config(&block)
    yield self
  end

  def self.default_params=(val)
    @@default_params = val
  end

  def self.default_url=(url)
    @@default_url = url
  end
end
