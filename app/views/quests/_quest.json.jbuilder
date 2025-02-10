json.extract! quest, :id, :title, :description, :completed, :author, :created_at, :updated_at
json.url quest_url(quest, format: :json)
