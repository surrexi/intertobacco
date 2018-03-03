class TobaccoCipher < ApplicationRecord
  before_create :set_cipher

  private

  def set_cipher
    self.cipher = generate_cipher
  end

  def generate_cipher
    loop do
      cipher = SecureRandom.random_number(1_000_000_000..10_000_000_000).to_s
      break cipher unless TobaccoCipher.where(cipher: cipher).exists?
    end
  end
end
