require_relative 'docking_station'

	def user_chatbot

	 puts "Welcome to the boris bike service!"
	 @station = DockingStation.new
	 dock_or_release

	end

	def dock_or_release
		puts "Would you like to dock or release a bike? (commands: dock/release/exit)"
		method_name = gets.chomp.downcase
		if method_name == "dock"
			@bike = Bike.new
			report_a_bike
			@station.dock(@bike)
			puts "Your bike has been docked! Thank you! You may do more if you wish or exit the service!"
			dock_or_release
		elsif method_name == "release"
			pick_a_bike
			puts "Thank you! You may do more if you wish or exit the service!"
			dock_or_release
		elsif method_name == "exit" 
			puts "Goodbye! Have a good day!"
			exit
		else 
			puts "Please enter dock or release commands only."
			dock_or_release
		end
	end

	def report_a_bike
		puts "Would you like to report the bike as broken? (commands: yes/no)"
		report = gets.chomp.downcase
		if report == "yes"
			@bike.report_broken
			puts "Your bike has been reported as broken."
		elsif report == 'no'
			puts "Okay, we believe your bike is still working!"
		else 
			puts "Please enter yes or no only."
			report_a_bike
		end
	end

	def pick_a_bike
		if @station.bikes.empty? || (@station.bikes.select{|id, bike| (bike.broken == false)}.keys).empty?
			puts "There are no working bikes at the docking station right now!"
			dock_or_release
		else	
			puts "Would you like to pick a specific bike by ID number? (commands: yes/no)"
				pick = gets.chomp.downcase
			if pick == "yes"
				puts "These are your options: #{@station.bikes.select{|id, bike| (bike.broken == false)}.keys}"
				puts "Please enter the ID of the bike you want to pick (case sensitive)."
				i_d = gets.chomp
				if @station.bikes.has_key?(i_d)
					if @station.bikes[i_d].broken
						puts "That bike is broken!"
						pick_a_bike
					else	
						@station.release_bike(i_d)
						puts "You have been given bike with ID number #{i_d}."
					end
				else 
					puts "There is no bike with that ID"
					pick_a_bike
				end
			elsif pick == "no"
				@station.release_bike
				puts "You have been given a bike."
			else 
				puts "Please enter yes or no only."
				pick_a_bike
			end
		end
	end

user_chatbot
