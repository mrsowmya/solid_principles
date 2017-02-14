#Dependency inversion principle refers to a specific form of decoupling software modules.
#It's definition has two parts:

#High-level modules should not depend on low-level modules. Both should depend on abstractions.
#Abstractions should not depend upon details. Details should depend upon abstractions.

class Report
  def initialize
    @body = "whatever"
  end

  def print
    XmlFormatter.new.generate @body
  end
end

class XmlFormatter
  def generate(body)
    # convert the body argument into XML
  end
end

#Refactor

class Report
  def initialize
    @body = "whatever"
  end

  def print(formatter)
    formatter.generate @body
  end
end

class XmlFormatter
  def generate(body)
    # convert the body argument into XML
  end
end

class CSVFormatter
  def generate(body)
    # convert the body argument into CSV
  end
end
