namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_authors
  end
end

def make_authors
  admin = Author.create!(first_name:     "Example",
                       last_name: "User",
                       email:    "example@example.com",
                       username: "admin",
                       password: "foobarfoo",
                       description: "this is a test user")
  99.times do |n|
    first_name  = Faker::Name.first_name
    last_name  = Faker::Name.last_name
    email = Faker::Internet.email
    username = Faker::Internet.user_name
    password  = "password"
    author = Author.create!(first_name:     first_name,
                       last_name: last_name,
                       email:    email,
                       username: username,
                       password: password,
                       description: "this is a test user")
    3.times do
      title = Faker::Lorem.words(5)
      summary = Faker::Lorem.sentences(5)
      body = Faker::Lorem.sentences(50)
      discussion = TRUE
      draft_status_id = 1
      author.posts.create!(title: title, summary: summary, body: body, discussion: discussion, draft_status_id: draft_status_id)
    end
  end
end