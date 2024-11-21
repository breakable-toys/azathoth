class CreateEmbeds < ActiveRecord::Migration[8.0]
  def change
    create_table :embeds do |t|
      t.string :title
      t.references :page, null: false, foreign_key: true
      t.references :embedded_page, null: false, foreign_key: { to_table: :pages }

      t.timestamps
    end
  end
end
