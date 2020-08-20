class Audition < ApplicationRecord
    belongs_to :user
    belongs_to :job

    # validate :job_id, presence: true

    validates :job, uniqueness: true
            # { scope: :user_id, message: "You already applied for this audition" }

end
