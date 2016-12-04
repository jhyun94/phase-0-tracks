class TodoList

	def initialize(arr)
		@items=arr
	end

	def get_items
		return @items
	end

	def add_item(item)
		return @items.push(item)
	end

	def delete_item(item)
		@items.each do |chore|
			if chore == item
				@items.delete(chore)
			end
		end
	end

	def get_item(num)
		return @items[num]
	end
	
end

