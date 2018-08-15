seats = [
        [nil, "Pumpkin", nil, nil],
        ["Socks", nil, "Mimi", nil],
        ["Gismo", "Shadow", nil, nil],
        ["Smokey","Toast","Pacha","Mau"]
      ]

seats.each_with_index do |row, index|
  row.each_with_index do |seat, seat_index|
    if seat == nil
    p "Row #{index+1} seat #{seat_index+1} is free. Do you want to sit there? (y/n)"
    answer = gets.chomp.downcase
    if answer == "y"
      p "What is your name"
      response = gets.chomp.capitalize
      seats[index][seat_index] = response
    end
  end

  end
end

p seats
