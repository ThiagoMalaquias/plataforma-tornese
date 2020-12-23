class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores, id: :uuid do |t|
      t.string :nome
      t.string :sobre
      t.string :foto

      t.timestamps
    end
  end
end
