require 'pry'
class EmailParser
  @@all = []

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    new_emails = self.emails.scan(/\S+@+[^,||^\s]{1,100}/)
    new_emails = new_emails.uniq
    new_emails
  end

end
