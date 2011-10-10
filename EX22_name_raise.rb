class Name
  #attr_accessor :firstname, :lastname
  def initialize()
    
  end
  def printt(firstname,*args)
    @firstname = firstname
    lastname = args[0]
    @lastname = lastname
    reg = /^[A-Z]/
    begin
      if !(firstname =~ reg)
        raise "exception_caps"
      elsif (args.size == 0 || args.size > 1)
        raise "exception_agrs"
      else
        puts "FirstName : #{@firstname} \n& \nLastName : #{@lastname}"
      end
    rescue
      if $!.to_s == "exception_caps"
        puts "Handling SMALL CASE input exception : #{$!}"
      else
        puts "Handling WRONG input exception : #{$!}"
      end
    end
  end
end
p1 = Name.new
p1.printt("Esha","Mukherjee")