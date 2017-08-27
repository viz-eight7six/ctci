q = gets.chomp.to_i

back_queue = []

front_queue = []

q.times do
    input = gets.chomp
    input = input.split(" ")
    if input[0] == "1"
        back_queue << input[1]
    elsif input[0] == "2"
        if front_queue.empty?
            back_queue.length.times do
                front_queue << back_queue.pop
            end
        end
        front_queue.pop
    elsif input[0] == "3"
        if front_queue.empty?
            puts back_queue.first
        else
            puts front_queue.last
        end
    end
end
