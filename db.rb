require 'pg'

class Database
  def initialize
    @connection = PG.connect(dbname: 'life_manager')
  end

  def execute(query)
    @connection.exec(query)
  end

  def close
    @connection.close
  end
end