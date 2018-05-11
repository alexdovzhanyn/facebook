require "./spec_helper"

describe Facebook do
  test_auth_token = "EAACEdEose0cBAP5PGsGmTmC4C1ape57qBXaoZAM3BYRxf6UyEDvduRdn2zV6RtHGZCHA1UhxSMmRKRjBPUPXI2pfM4tHPZAwnkNZARXyt4Kczh9mfqCUps9RkyAppEGwIU6SWndWscRlHK313lN1chtHdE049lovQgx6z9xlQkohlQwL9KSAZBZBCw7GGlbrIZD"
  it "can fetch a node by id" do
    request = Facebook::API.new(test_auth_token).get_node(820882001277849)
    request.should be_a(String)
  end
end
