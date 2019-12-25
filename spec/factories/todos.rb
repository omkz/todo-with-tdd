FactoryBot.define do
  factory :todo do
    title { 'the title' }
    # completed { false }

    trait :completed do
      completed {true}
    end

    trait :incomplete do
      completed {false}
    end
  end
end
