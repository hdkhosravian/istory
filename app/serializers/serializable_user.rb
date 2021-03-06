# frozen_string_literal: true

class SerializableUser < JSONAPI::Serializable::Resource
  type 'user'

  attributes :email

  has_one :profile

  belongs_to :last_token do
    data do
      @object.token
    end
  end
end
