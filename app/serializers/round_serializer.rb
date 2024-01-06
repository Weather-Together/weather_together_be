class RoundSerializer
  include JSONAPI::Serializer
  attributes :game_id, :status, :type, :target_weather_stats, :game_id
end