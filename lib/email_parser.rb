# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  @@all = []

  attr_accessor :emails

  def save
    self.class.all << self
  end

  def initiliaze
    

  def self.parse
    new_emails = emails.scan(/\S+@+[^,||^\s]{1,100}/)
    new_emails = new_emails.uniq
    new_emails.each { |e| @@all << e }
    new_emails
  end

end
