module OracleCorp
	class WebLogic
		attr_accessor :price
		@@static_var = 1

		def initialize(price_temp)
			@price = price_temp
			@@static_var = price
		end
		def self.info
			puts "I am inside static method info of WebLogic : #{@@static_var}"
			@@static_var
		end
	end

	class Oracle
		attr_accessor :price
		def initialize(price_temp)
			@price = price_temp
		end
		def info
			puts "I am inside non-static method info of Oracle"
			@price
		end
	end
end