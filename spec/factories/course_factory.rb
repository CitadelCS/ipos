FactoryBot.define do
    factory :course do
        semester
        prefix {"LIT"}
        name {Faker::Book.title}
        number{Faker::Number.number(digits: 3)}
        section{Faker::Number.number(digits: 3)}
    end
end