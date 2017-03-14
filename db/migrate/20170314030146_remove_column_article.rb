class RemoveColumnArticle < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :articles, :post
  end
end
