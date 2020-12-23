json.extract! curso, :id, :titulo, :descricao, :videoIntro, :professor_id, :created_at, :updated_at
json.url curso_url(curso, format: :json)
