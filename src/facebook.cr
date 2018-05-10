require "./facebook/*"
require "http/client"
require "http/params"

module Facebook
  API_URL = "https://graph.facebook.com/v3.0"

  class API
    property access_token

    def initialize(access_token : String = "")
      @access_token = access_token
    end

    # Fetches a node (page/user/etc) from facebook using its *node_id*.
    #
    # ```
    # Facebook::Api.new(ACCESS_TOKEN).get_node(820882001277849) #=> {"name":"Coca-Cola","id":"820882001277849"}
    # ```
    def get_node(node_id : Number)
      params = HTTP::Params.encode({"access_token" => @access_token})
      HTTP::Client.get "#{API_URL}/#{node_id}?#{params}"
    end
  end
end
