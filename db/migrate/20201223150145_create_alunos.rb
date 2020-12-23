class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos, id: :uuid do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :cpf
      t.string :telefone
      t.date :data_nascimento

      t.timestamps
    end
  end
end
