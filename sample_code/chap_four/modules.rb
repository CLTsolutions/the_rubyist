# module MyFirstModule
#   def say_hello
#     puts 'Hello'
#   end
# end

# class ModuleTester
#   include MyFirstModule
# end

# mt = ModuleTester.new
# mt.say_hello

# module M
#   def report
#     puts "'report' method in module M"
#   end
# end

# class C
#   include M

#   # def report
#   #   puts "'report' method in class C"
#   #   puts 'About to trigger the next higher-up report method...'
#   #   super
#   #   puts "Back from the 'super' call."
#   # end
# end

# class D < C
# end

# obj = D.new
# obj.report

# module InterestBearing
#   def calculate_interest
#     puts "Placeholder! We're in module InterestBearing"
#   end
# end

# class BankAccount
#   include InterestBearing
#   def calculate_interest
#     puts "Placeholder! We're in class BankAccount"
#     puts "And we're overriding the calculate_interest method..."
#     puts 'which was defined in the InterestBearing module.'
#   end
# end

# account = BankAccount.new
# account.calculate_interest

# module MeFirst
#   def report
#     puts 'Hello from module!'
#   end
# end

# class Person
#   prepend MeFirst
#   def report
#     puts 'Hello from class!'
#   end
# end

# p = Person.new
# p.report

# # class Bicycle
# #   attr_reader :gears, :wheels, :seats
# #   def initialize(gears = 1)
# #     @wheels = 2
# #     @seats = 1
# #     @gears = gears
# #   end
# # end
# #
# # class Tandem < Bicycle
# #   def initialize(geats)
# #     super
# #     @seats = 2
# #   end
# # end

# intercepting unrecognized messages
# Overall idea is person can have friends and/or hobbies.
# Also, the "Pers on" class lets us look up all people who have a given friend or all people who have a given hobby.
# These searches accomplished with the "all_with_friends" and "all_with_hobbies" class methods.
class Person
  PEOPLE = []

  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Style/MissingRespondToMissing
  def self.method_missing(m, *args) # self is the person class object
    method = m.to_s

    if method.start_with?('all_with_')
      attr = method[9..-1]

      if public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Style/MissingRespondToMissing
end

# Sample usage of person class
j = Person.new('John')
p = Person.new('Paul')
g = Person.new('George')
r = Person.new('Ringo')
j.has_friend(p)
j.has_friend(g)
j.has_friend(p)
r.has_hobby('rings')
Person.all_with_friends(p).each do |person|
  puts "#{person.name} is into rings"
end
