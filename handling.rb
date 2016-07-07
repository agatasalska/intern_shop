class Handling

	def add_to(name, qty)
		@list.push({:name => name, :qty => qty})
	end

	def remove_from(name, q)
		product = @list.find { |p| p[:name] == name }
		product[:qty] -=q
	end
end