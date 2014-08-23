json.array!(@completed_assignments) do |completed_assignment|
  json.extract! completed_assignment, :id, :user_id, :assignment_id, :github_url, :on_time
  json.url completed_assignment_url(completed_assignment, format: :json)
end
