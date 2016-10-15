class Api::V1::PeopleController < JSONAPI::ResourceController
  include Swagger::Blocks
  swagger_path '/people/{id}' do
    operation :get do
      key :description, 'Returns a single person if the user has access'
      key :operationId, 'findPersonById'
      key :tags, [
        'person'
      ]
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of person to fetch'
        key :required, true
        key :type, :integer
        key :format, :int64
      end
      response 200 do
        key :description, 'person response'
        schema do
          key :'$ref', :Person
        end
      end
      response :default do
        key :description, 'unexpected error'
        schema do
          key :'$ref', :ErrorModel
        end
      end
    end
  end
end
