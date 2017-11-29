class User < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.my_import(file)
    users = []
    CSV.foreach(file.path, headers: true) do |row|
      users << User.new(row.to_h)
    end
    User.import users, recursive: true
  end
end
