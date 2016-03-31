class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :sigla
      t.string :nome

      t.timestamps null: false
    end
  end
end
