require 'spec_helper'

describe BookingController do

  describe "GET 'restaurant_id:integer'" do
    it "returns http success" do
      get 'restaurant_id:integer'
      response.should be_success
    end
  end

  describe "GET 'user_id:integer'" do
    it "returns http success" do
      get 'user_id:integer'
      response.should be_success
    end
  end

  describe "GET 'message:string'" do
    it "returns http success" do
      get 'message:string'
      response.should be_success
    end
  end

  describe "GET 'restaurant_email:string'" do
    it "returns http success" do
      get 'restaurant_email:string'
      response.should be_success
    end
  end

  describe "GET 'user_u_email:string'" do
    it "returns http success" do
      get 'user_u_email:string'
      response.should be_success
    end
  end

end
