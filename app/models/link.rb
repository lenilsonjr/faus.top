class Link < ApplicationRecord
  validates_uniqueness_of :code
  validates_presence_of :url
  validates_presence_of :created_by

  before_create :set_code

  def shortened(url = nil)
    if url.nil?
      code
    else
      "#{url}/#{code}"
    end
  end

  private
    def set_code
      self.code = SecureRandom.hex(2)  
    rescue ActiveRecord::RecordNotUnique => e
      @token_attempts ||= 0
      @token_attempts += 1
      retry if @token_attempts < 5
      raise e, "Retries exhausted"
    end

end
