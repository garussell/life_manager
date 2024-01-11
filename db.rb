require 'pg'
require 'dotenv/load'

class Database
  def initialize
    @connection = PG.connect(dbname: ENV['DB_NAME'], user: ENV['DB_USER'], password: ENV['DB_PASSWORD'] )
  end

  def execute(query)
    @connection.exec(query)
  end

  def close
    @connection.close
  end
end