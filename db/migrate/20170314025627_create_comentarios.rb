class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
