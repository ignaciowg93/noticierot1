class AddArticleIdToComentarios < ActiveRecord::Migration[5.0]
  def change
    add_column :comentarios, :article_id, :integer
  end
end
