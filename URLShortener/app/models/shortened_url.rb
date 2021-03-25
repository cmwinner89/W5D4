require 'securerandom'

class ShortenedUrl < ApplicationRecord

include SecureRandom

    def self.random_code
        short = SecureRandom.urlsafe_base64
        loop do 
            return short unless ShortenedUrl.exists?(short_url: short )
            # short = SecureRandom.urlsafe_base64
        end

        return short
    end

    def self.create_short_url(user, long_url)
        ShortenedUrl.create!(
            long_url: long_url,
            short_url: ShortenedUrl.random_code,
            user_id: user.id)
    end

    belongs_to :submitter,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
        

    
end