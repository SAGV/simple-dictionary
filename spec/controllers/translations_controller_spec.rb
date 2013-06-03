require "spec_helper"

describe TranslationsController do
  it "should get index" do
    get :index
    assert_response :success
  end   
end