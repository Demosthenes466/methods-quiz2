module MethodsQuiz2
	
	def without_doubles(num1, num2, no_doubles)
		if ((num1 == num2) && no_doubles)
			if ((num1 == 6) || (num2 == 6))
				num1 + 1
			else
				num1 + num2 + 1
			end
		else
			num1 + num2
		end
	end

	def max_maybe(num1, num2)
		if(num1 == num2)
			0
		elsif(num1 % 5 == num2 % 5)
			larger?(num1, num2)
		else
			smaller?(num1, num2)
		end
	end

	def squirrels_play?(temp, summer)
		if((summer && summer_temp(temp)) || play_temp(temp))
				return "Squirrels shall play"
		else
			return "Squirrels shan't play"
		end
	end

	def red_ticket(a,b,c)
		if(all_two(a,b,c))
			return 10
		elsif((a == b) && (b == c))
			return 5
		elsif(different?(a,b,c))
			return 1
		else
			return 0
		end
	end




		


	private

		def different?(a,b,c)
			a != b && a != c ? true : false
		end

		def all_two(a,b,c)
			((a && b && c) == 2)
		end

		

		def summer_temp(temp)
			((temp >= 60) && (temp <= 100))
		end

		def play_temp(temp)
			(temp >= 60) && (temp <= 90)
		end

		def smaller?(num1, num2)
			if(num1 > num2)
				num1
			else
				num2
			end
		end

		def larger?(num1, num2)
			if(num1 < num2)
				num1
			else
				num2
			end
		end


end