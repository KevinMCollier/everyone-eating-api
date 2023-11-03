json.answers @answers do |answer|
  json.extract! answer, :id, :response, :question_id, :created_at, :updated_at
  json.location_id answer.location.id
end
