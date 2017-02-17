class EmailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.to} #{message.subject}"
    message.to = [ '6jguu5+ekpngcflgzpkw@grr.la' ]
  end
end
