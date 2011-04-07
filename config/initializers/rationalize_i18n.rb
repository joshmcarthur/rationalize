# Define TRANSLATION_STORE as a constant - this way it is accessible throughout the application
TRANSLATION_STORE = Redis.new

#Set the i18n Backend to (preferentially) use the Redis key-value store, or fall back on YML files
I18n.backend = I18n::Backend::Chain.new(
  I18n::Backend::KeyValue.new(TRANSLATION_STORE), 
  I18n.backend
)

  
