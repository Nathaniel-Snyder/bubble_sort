def bubble_sort(arr)
	x = arr.length - 1
	x.times do
		x.times do |n|
			if arr[n] > arr[n+1]
				arr[n], arr[n+1] = arr[n+1], arr[n]
			end
		end
	end
	puts arr
end

bubble_sort([3,1,8,5,2,7,4,6])

def bubble_sort_by(arr)
	x = arr.length - 1
	x.times do
		x.times do |n|
			if yield(arr[n], arr[n+1]) > 0
				arr[n], arr[n+1] = arr[n+1], arr[n]
			end
		end
	end
	puts arr
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end