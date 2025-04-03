# lib/string_calculator.rb
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = find_delimiter(numbers)

    return 0 if numbers.match?(/[^0-9,\n#{Regexp.escape(delimiter)}-]/)

    nums = numbers.split(/[\n,#{Regexp.escape(delimiter)}]/).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    nums.sum
  end

  def self.find_delimiter(numbers)
    delimiter = ','
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = parts.first[2..-1]
      numbers = parts.last
    end
    [delimiter, numbers]
  end
end

# console application
if __FILE__ == $0
  puts 'Enter numbers to add (press Enter Button twice to exit):'
  input_lines = []
  while (line = gets.chomp) != ''
    input_lines << line
  end
  input = input_lines.join("\n")

  begin
    result = StringCalculator.add(input)
    puts "Result: #{result}"
  rescue StandardError => e
    puts "Error: #{e.message}"
  end
end
