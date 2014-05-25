require "return_many/version"

module ReturnMany
  	MultipleReturn = Class.new(Hash) do
	  attr_reader :arg
	 
	  # copy-paste hash into my class
	  def initialize arg
	    # self.merge arg
	    super
	    for k,v in arg
	      self[k]=v
	    end

	  end

	  # called when you use splat operator 
	  # (e.g. a, *b = [1,2]; * - splat operator)
	  def to_ary
	    self.values
	  end

	  # getting few keys instead of 1
	  # for example: h[:a, :b]
	  def [] *args
	    args.each.collect do |arg|
	      super(arg)
	    end
	  end
	end

	def many args
		MultipleReturn.new args
	end
  
end
