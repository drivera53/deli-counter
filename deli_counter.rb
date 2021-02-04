#require 'pry'
# Write your code here.
def line(katz_deli)
    if katz_deli == []
        puts "The line is currently empty."
    else 
        modified_array = katz_deli.collect.with_index(1) do |person, index|
            "#{index}. #{person}"
        end
        modified_array.unshift("The line is currently:")
        puts modified_array.join(" ")
    end
end

def take_a_number(katz_deli, customer)
    katz_deli << customer
    number = katz_deli.index(customer) + 1
    puts "Welcome, #{customer}. You are number #{number} in line."
end

def now_serving(katz_deli)
    if katz_deli == []
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        customer = katz_deli[0]
        katz_deli.delete(customer)
    end
end