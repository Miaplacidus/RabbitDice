require 'spec_helper'

shared_examples "a database" do

  let(:db) { described_class.new }

  before { db.clear_everything }

  describe 'Users' do
    it "creates a user" do
      user = db.create_user :name => 'Johnny'
      expect(user).to be_a RH::Entity::User
      expect(user.name).to eq 'Johnny'
      expect(user.id).to_not be_nil
    end

    it "gets a user" do
      user = db.create_user :name => 'Bob Bobber'
      retrieved_user = db.get_user(user.id)
      expect(retrieved_user.name).to eq 'Bob Bobber'
    end

    it "gets all users" do
      %w{Alice Bob}.each {|name| db.create_user :name => name }

      expect(db.all_users.count).to eq 2
      expect(db.all_users.map &:name).to include('Alice', 'Bob')
    end
  end

  describe "Dicecup" do
    it "creates a dicecup with proper proportion of colors" do

    end

    it "gets a dicecup" do

    end

  end


  describe "Roll" do
    it "creates a roll" do

    end
  end

  describe "Turn" do
    it "creates a turn" do

    end

    it "gets a turn" do

    end

    it "returns the score of the turn" do

    end

  end


  describe "Game" do
    it "creates a game" do

    end

    it "get a game" do

    end

    it "stores the result of a turn" do

    end

    it "tracks winner" do

    end

  end
end

describe RH::Database::InMemory do
  it_behaves_like "a database"
end

# describe RH::Database::SQLite do
#   it_behaves_like "a database"
# end
