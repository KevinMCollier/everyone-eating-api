if @answer.persisted?
  json.extract! @answer, :id, :response, :question_id, :created_at, :updated_at
  json.location_id @answer.location.id
else
  json.errors @answer.errors.full_messages
end
