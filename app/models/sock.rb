# This class seems to have nothing stored.
# What would this class store, and does it involve an interaction with the database?
class Sock < ApplicationRecord
    has_one :match_as_sock_1,
            class_name: "Match",
            foreign_key: :sock_1_id,
            dependent: :destroy
    
    has_one :match_as_sock_2,
            class_name: "Match",
            foreign_key: :sock_2_id,
            dependent: :destroy
    
    has_many :proposals_as_sock_1,
        class_name: "Proposal",
        foreign_key: :sock_1_id,
        dependent: :destroy

    has_many :proposals_as_sock_2,
            class_name: "Proposal",
            foreign_key: :sock_2_id,
            dependent: :destroy

    
    belongs_to :owner, class_name: "User", foreign_key: :user_id
    
    def match
        Match.find_by("sock_1_id = :id OR sock_2_id = :id", id: id)
    end

    def matched?
        match.present?
    end
end
