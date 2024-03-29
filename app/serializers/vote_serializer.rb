class VoteSerializer
  include JSONAPI::Serializer
  attributes  :target_weather_stats,
              :lat,
              :lon,
              :weather_stats,
              :score,
              :status,
              :round_id,
              :user_id,
              :username

  attribute :round_id do |vote|
    vote.round.id
  end

  attribute :user_id do |vote|
    vote.user.id
  end
  attribute :username do |vote|
    vote.user.username
  end
end