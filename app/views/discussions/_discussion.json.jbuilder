json.extract! discussion, :id, :name, :aspect_id, :link, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
