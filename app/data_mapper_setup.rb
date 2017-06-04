require 'data_mapper'
require 'dm-postgres-adapter'

require_relative './models/user.rb'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASEURL'] || "postgres://localhost/chitter_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!
