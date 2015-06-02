require('rspec')
require "pry"
require('to_do')
require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application

describe('Task') do
  describe('#description') do
    it("describes the task") do
      test_task = Task.new("wash dishes")
      expect(test_task.description()).to(eq("wash dishes"))
    end
  end

  describe(".all") do
    it("it will be empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves to array") do
      test_task = Task.new("wash dishes")
      test_task.save
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("clears the class array") do
      test_task = Task.new("wash the cat")
      test_task.save
      expect(Task.clear()).to(eq([]))
    end
  end



end
