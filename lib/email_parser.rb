require 'pry'
class EmailParser
  @@all = []

  attr_accessor :emails

  def initiliaze(emails)
    @emails = emails
  end

  def self.parse
    new_emails = emails.scan(/\S+@+[^,||^\s]{1,100}/)
    binding.pry
    new_emails = new_emails.uniq
    new_emails
  end

end
