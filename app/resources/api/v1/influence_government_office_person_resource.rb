class Api::V1::InfluenceGovernmentOfficePersonResource < Api::V1::InfluenceOfficePersonResource
  has_one :government_office
  has_one :government_person
end
