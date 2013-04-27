namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_authors
  end
end

def make_authors
  Faker::Config.locale = :en
  admin = Author.create!(first_name:     "Example",
                       last_name: "User",
                       email:    "example@example.com",
                       username: "admin",
                       password: "foobarfoo",
                       description: Faker::Lorem.paragraphs(3).join(" "))

  joel = Author.create!(first_name:     "Joel",
                       last_name: "Leimer",
                       email:    "joelleimer@gmail.com",
                       username: "joelleimer",
                       password: "password",
                       description: Faker::Lorem.paragraphs(3).join(" "))
  3.times do
      title = Faker::Lorem.words(5).each {|word| word.capitalize!}.join(" ")
      summary = Faker::Lorem.sentences(10).join(" ")
      body = Faker::Lorem.paragraphs(5).join(" ")
      10.times do
        body << "\n\n"
        body << Faker::Lorem.paragraphs(5).join(" ")
      end
      discussion = TRUE
      draft_status_id = 1
      joel.posts.create!(title: title, summary: summary, body: body, discussion: discussion, draft_status_id: draft_status_id)
  end    

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
                       description: Faker::Lorem.paragraphs(3).join(" "))
    3.times do
      title = Faker::Lorem.words(5).each {|word| word.capitalize!}.join(" ")
      summary = Faker::Lorem.sentences(10).join(" ")
      body = Faker::Lorem.paragraphs(5).join(" ")
      10.times do
        body << "\n\n"
        body << Faker::Lorem.paragraphs(5).join(" ")
      end
      discussion = TRUE
      draft_status_id = 1
      author.posts.create!(title: title, summary: summary, body: body, discussion: discussion, draft_status_id: draft_status_id)
    end
  end
end