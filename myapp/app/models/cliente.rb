class Cliente < ApplicationRecord
  has_many :articulos, dependent: :destroy
  belongs_to :pais
end
