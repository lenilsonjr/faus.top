class Link < ApplicationRecord
  validates_uniqueness_of :code
  validates_presence_of :url
  validates_presence_of :created_by

  before_create :set_code

  private
    def set_code
      self.code = SecureRandom.hex(3)  
    rescue ActiveRecord::RecordNotUnique => e
      @token_attempts ||= 0
      @token_attempts += 1
      retry if @token_attempts < 5
      raise e, "Retries exhausted"
    end

end
