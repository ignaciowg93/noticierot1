class Comentario < ApplicationRecord
    belongs_to :article
    validates :name,presence: true
    validates :content, presence: true
end
