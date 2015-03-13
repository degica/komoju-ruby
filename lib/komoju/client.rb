module Komoju
  def self.connect(api_key, options=nil)
    options = custom_options(options)
    uri = URI.parse(options[:url])
    uri.user = api_key
    uri.password = ""
    client = Heroics.client_from_schema(SCHEMA, uri.to_s, options)
    Client.new(client)
  end
end
