require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

end

DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test') if ENV['RACK_ENV'] == 'test'
DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_development') if ENV['RACK_ENV'] == 'development'
DataMapper.finalize
DataMapper.auto_upgrade!
