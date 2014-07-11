json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :mr, :vg, :tp, :wa
  json.url post_url(post, format: :json)
end
