class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :lead
      t.string :body
      t.date :post

      t.timestamps
    end
  end
end
