class ShortenedUrl < ApplicationRecord

    def self.random_code
        short = SecureRandom.urlsafe_base64
        until short.exists?
            short = SecureRandom.urlsafe_base64
        end

        return short
    end

    def self.create_short_urls(user_obj, long_url)
        self.new(long_url,ShortenedUrl.random_code,user_obj.id)
    end

    belongs_to :submitter,
        primary_key: :id,
        foreign_key: :submitter_id,
        class_name: :User

    
end