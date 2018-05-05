
Types::CountryType = GraphQL::ObjectType.define do
  name "CountryType" # É como o schema irá identificar essa type.

  # Campos que serão visíveis numa consulta
  field :id, types.ID
  field :abbreviation, types.String
  field :name, types.String
end