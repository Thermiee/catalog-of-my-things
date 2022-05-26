module Console
  def menu
    puts
    puts 'Please choose an option by entering a number:'

    options = [
      'List all books',
      'List of games',
      'List all labels',
      'List all authors',
      'Add a book',
      'Add a game',
      'Exit'
    ]

    options.each_with_index do |option, index|
      puts "#{index + 1} - #{option}"
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity

  def console_start
    while menu
      selected = gets.chomp.to_i
      case selected
      when 1
        list_books
      when 2
        puts 'list_all_games'
      when 3
        list_labels
      when 4
        puts 'list_all_authors'
      when 5
        add_book
      when 6
        puts 'add_game'
      when 7
        puts 'Thank you for using our app!'
        break
      else
        puts 'Please choose an appropriate number'
      end
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
