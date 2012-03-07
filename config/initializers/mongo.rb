settings = YAML.load(File.read(File.expand_path('../../config/mongo.yml', File.dirname(__FILE__))))[Rails.env]
MongoMapper.connection = Mongo::Connection.new(settings['host'], settings['port'])
MongoMapper.database = settings['database']
