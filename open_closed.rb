#Software entity(classes, modules) must be open for extension and
#closed for modifications
#means once a class implements the current scope of requirements
#the implementation should not need change for future requiremets

class MyLogger
  def initialize
    @format_string = "%s: %s\n"
  end

  def log(msg)
    STDOUT.write @format_string % [Time.now, msg]
  end
end

MyLogger.new.log('test!')

# Think about this - if this was a core class of an app,
# the change we introduced to the format_string would break
# the functionality of that classes that rely on the MyLogger class.
# There's the possibility that a whole world out there relies on the
# former funcionality of the class, but now, that we changed it,
# a lot of things can break. This is a violation of the OCP and it is bad!

class NewCoolLogger < MyLogger
  def initialize
    @format_string = "[LOG] %s: %s\n"
  end
end

NewCoolLogger.new.log('test!')
