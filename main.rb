def function(*args)
    puts "arg1  : #{args[0]} and arg2 : #{args[1]}" 
end

def hashpass(arg1, option = {})
    puts arg1
    puts "#{option["1"]}"
    puts "#{option["2"]}"
    puts "#{option["3"]}"
end
function("1", "2")
hashpass("Hello world", "1" => 1, "2"=> 2, "3"=> 3)