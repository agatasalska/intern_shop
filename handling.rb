class Handling

	def next_id
    @@id += 1
  end

	def add_to(name, qty)
		@list.push({:name => name, :qty => qty})
	end

	def remove_from(name)
		product = @list.find { |p| p[:name] == name }
		product[:qty] -=1
	end
end