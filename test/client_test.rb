require 'helper'

class ClientTest < MiniTest::Unit::TestCase
  def test_client
    client = Komoju.connect("api-key", url: "https://api.komoju.com")
    assert_equal(client.class, Komoju::Client)
  end
end
