# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create!([
  {email: "test1@test.com", username: "Mandy", favorite_quote: "That which can be asserted without evidence, can be dismissed without evidence.", favorite_quote_source: "Christopher Hitchens", about: "Full Stack Ruby on Rails Developer with two years of experience, looking for a great job.  My interests are:  learning, travel, reading, powerlifting, sailing, and wine.  Perhaps not in that order.", password: "123456", password_confirmation: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "test2@test.com", username: "Sheldon", favorite_quote: "The important thing is not to stop questioning. Curiosity has its own reason for existence. One cannot help but be in awe when he contemplates the mysteries of eternity, of life, of the marvelous structure of reality. It is enough if one tries merely to comprehend a little of this mystery each day.", favorite_quote_source: "Albert Einstein", about: "I'm an up-tight fictional physicist who enjoys trains, science, and making people crazy.  My interests are:  science, trains, comics, nerdy t-shirts, and collecting action figures.", password: "123456", password_confirmation: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "test3@test.com", username: "Radom", favorite_quote: "So much of life, it seems to me, is determined by pure randomness.", favorite_quote_source: "Sidney Poitier", about: "Random non-existant person created when Mandy needed a space filler but didn't want to use boring lorum ipsum.  My interests are: accidents, fate, karma, and chance meetings with strangers.", password: "123456", password_confirmation: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
])

Quote.delete_all
Quote.create([
  {quote: "I can give you a six-word formula for success: Think things through - then follow through.", source: "Edward Rickenbacker", user_id: "1"},
  {quote: "Do not let what you cannot do interfere with what you can do.", source: "John Wooden", user_id: "2"},
  {quote: "Be who you are and say what you feel because those who mind don't matter and those who matter don't mind.", source: "Dr Seuss", user_id: "1"},
  {quote: "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails.  Explore, Dream, Discover.", source: "Mark Twain", user_id: "1"},
  {quote: "I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.", source: "Maya Angelou", user_id: "2"},
  {quote: "The mind is everything. What you think you become.", source: "Buddha", user_id: "3"},
  {quote: "Be careful of the toes you step on today.  They might be connected to the ass you have to kiss tomorrow.", source: "Unknown", user_id: "1"},
  {quote: "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.", source: "Robert Frost", user_id: "2"},
  {quote: "Life is what happens to you while you’re busy making other plans.", source: "John Lennon", user_id: "3"},
  {quote: "They laughed because she was different.  She laughed because they were all the same.", source: "Unknown", user_id: "1"},
  {quote: "The best time to plant a tree was 20 years ago. The second best time is now.", source: "Chinese Proverb", user_id: "2"},
  {quote: "I am not a product of my circumstances. I am a product of my decisions.", source: "Stephen Covey", user_id: "3"},
  {quote: "Life is about making an impact, not making an income.", source: "Kevin Kruse", user_id: "1"},
  {quote: "You can never cross the ocean until you have the courage to lose sight of the shore.", source: "Christopher Columbus", user_id: "2"},
  {quote: "Whether you think you can or you think you can’t, you’re right.", source: "Henry Ford", user_id: "3"},
  {quote: "Strive not to be a success, but rather to be of value.", source: "Albert Einstein", user_id: "1"},
  {quote: "There is only one way to avoid criticism: do nothing, say nothing, and be nothing.", source: "Aristotle", user_id: "2"},
  {quote: "The question isn’t who is going to let me; it’s who is going to stop me.Ayn Rand", source: "Ayn Rand", user_id: "3"},
  {quote: "You miss 100% of the shots you don’t take.", source: "Wayne Gretzky", user_id: "1"},
  {quote: "Few things can help an individual more than to place responsibility on him, and to let him know that you trust him.", source: "Booker T. Washington", user_id: "2"},
  {quote: "Certain things catch your eye, but pursue only those that capture the heart.", source: "Ancient Indian Proverb", user_id: "3"},
  {quote: "Everything you’ve ever wanted is on the other side of fear.", source: "George Addair", user_id: "1"},
  {quote: "When I was 5 years old, my mother always told me that happiness was the key to life.  When I went to school, they asked me what I wanted to be when I grew up.  I wrote down ‘happy’.  They told me I didn’t understand the assignment, and I told them they didn’t understand life.", source: "John Lennon", user_id: "2"},
  {quote: "How wonderful it is that nobody need wait a single moment before starting to improve the world.", source: "Anne Frank", user_id: "3"},
  {quote: "When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us.", source: "Helen Keller", user_id: "1"},
  {quote: "Life is not measured by the number of breaths we take, but by the moments that take our breath away.", source: "Maya Angelou", user_id: "2"},
  {quote: "Happiness is not something readymade.  It comes from your own actions.", source: "Dalai Lama", user_id: "3"},
  {quote: "You can’t fall if you don’t climb.  But there’s no joy in living your whole life on the ground.", source: "Unknown", user_id: "1"},
  {quote: "I have been impressed with the urgency of doing. Knowing is not enough; we must apply. Being willing is not enough; we must do.", source: "Leonardo da Vinci", user_id: "2"},
  {quote: "I didn’t fail the test. I just found 100 ways to do it wrong.", source: "Benjamin Franklin", user_id: "3"},
  {quote: "A person who never made a mistake never tried anything new.", source: "Albert Einstein", user_id: "1"},
  {quote: "I would rather die of passion than of boredom.", source: "Vincent van Gogh", user_id: "2"},
  {quote: "I have learned over the years that when one's mind is made up, this diminishes fear.", source: "Rosa Parks", user_id: "3"},
  {quote: "Dream big and dare to fail.", source: "Norman Vaughan", user_id: "2"},
  {quote: "Our lives begin to end the day we become silent about things that matter.", source: "Martin Luther King Jr.", user_id: "1"},
  {quote: "If you do what you’ve always done, you’ll get what you’ve always gotten.", source: "Tony Robbins", user_id: "3"}
  ])