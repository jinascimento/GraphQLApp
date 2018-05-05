
Types::UserType = GraphQL::ObjectType.define do
  name "UserType" # É como o schema irá identificar essa type.

  # Nesta parte informamos quais campos serão visíveis
  # numa consulta
  field :id, types.ID
  field :name, types.String
  field :email, types.String
  field :phone_number, types.Int
  field :is_admin, types.Boolean, "Usuario administrador?"


  # Vamos expor, não o código do País,

  # mas todos dados do País que estão no relacionamento

  # “user.country”

  field :country do

    type Types::CountryType

    description "País associado a este usuário"

    resolve ->(user, args, context){

      user.country

    }

  end
end