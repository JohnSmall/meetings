require 'rails_helper'

RSpec.describe "Api::V1::People", type: :request do
  describe "GET /api/v1/people" do
    let(:person){create(:person)}
    it "it returns a 200" do
      get api_v1_person_path(person),headers:{'HTTP_ACCEPT' => "application/vnd.api+json"}
      expect(response).to have_http_status(200)
    end

    it 'should be a json-api response' do
      get api_v1_person_path(person),headers:{'HTTP_ACCEPT' => "application/vnd.api+json"}
      expect(response.body).to be_jsonapi_response_for('people')
    end
  end

  describe "POST /api/v1/people" do
    let(:json_api_data) do
      {
        "data" =>  {
          "type" =>  "people",
          "attributes" =>  {
            "name" =>  "Ember Hamster2",
            "wikipedia-entry" =>  "an entry" 
          }
        }
      }.to_json
    end
    let(:headers){{'HTTP_ACCEPT' => "application/vnd.api+json",'Content-Type' => "application/vnd.api+json"}}

    it 'returns a 201' do
      post api_v1_people_path,json_api_data,headers
      expect(response).to have_http_status(201)
    end

    it 'returns a json-api response' do
      post api_v1_people_path,json_api_data, headers
      expect(response.body).to be_jsonapi_response_for('people')
    end
  end

  describe "PATCH /api/v1/people/{id}" do
    let(:headers){{'HTTP_ACCEPT' => "application/vnd.api+json",'Content-Type' => "application/vnd.api+json"}}
    let(:person){create(:person)}
    let(:json_api_data) do
      {
        "data" =>  {
          "type" =>  "people",
          "id" => person.id,
          "attributes" =>  {
            "name" =>  "Ember Hamster2",
            "wikipedia-entry" =>  "an entry" 
          }
        }
      }.to_json
    end
    it 'returns a 200' do
      patch api_v1_people_path(person),json_api_data,headers
      expect(response).to have_http_status(201)
    end
  end
end