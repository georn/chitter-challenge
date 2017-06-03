require 'data_mapper'
require 'dm-postgres-adapter'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASEURL'] || "postgres://localhost/chitter#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!
