class House < ApplicationRecord
    has_many(
    :people,
    class_name: 'Person',
    foreign_key: :id,
    primary_key: :house_id
    )
end
