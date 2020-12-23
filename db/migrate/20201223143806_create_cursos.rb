class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos, id: :uuid do |t|
      t.string :titulo
      t.string :descricao
      t.string :videoIntro
      t.references :professor, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
