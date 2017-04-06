class CreateUserMeetups < ActiveRecord::Migration
  def change
    create_table :user_meetups do |table|
      table.belongs_to :meetup, null: false
      table.belongs_to :user, null: false
    end
  end
end
