def select_elements_starting_with_a(array)
  array.select { |item| /\ba[a-z]*\b/.match(item)}
end

def select_elements_starting_with_vowel(array)
  array.select { |item| /\b[aeiou][a-z]*\b/.match(item)}
end

def remove_nils_from_array(array)
  array.reject { |item| item == nil}
end

def remove_nils_and_false_from_array(array)
  array.reject { |item| item == false || item == nil }
end

def reverse_every_element_in_array(array)
  array.map { |item| item.reverse}
end

def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end

def all_elements_except_first_3(array)
  array[3..-1]
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by{|name| name[name.length-1]}
end

def get_first_half_of_string(string)
  string[0..(string.length-1)/2]
end

def make_numbers_negative(number)
  if number > 0
    number *= -1
  end
  number
end

def separate_array_into_even_and_odd_numbers(array)
  # new_array = [[],[]]
  # array.each do |item|
  #   if item % 2 == 0
  #     new_array.first << item
  #   else
  #     new_array.last << item
  #   end
  # end
  # new_array
  array.partition {|number| number.even?}
end

def number_of_elements_that_are_palindromes(array)
  count = 0
  array.each do |item|
    if item === item.reverse
      count+=1
    end
  end
  count
end

def shortest_word_in_array(array)
  # shortest = array[0]
  # array.each do |item|
  #   if item.length < shortest.length
  #     shortest = item
  #   end
  # end
  # shortest
  array.min {|a, b| a.length <=> b.length}
end

# return the shortest word in an array
def longest_word_in_array(array)
  # longest = array[0]
  # array.each do |item|
  #   if item.length > longest.length
  #     longest = item
  #   end
  # end
  # longest
  array.max{|a, b| a.length <=> b.length}
end

def total_of_array(array)
  array.inject {|sum, number| sum + number}
end

def double_array(array)
  new_array =[]
  2.times {new_array << array}
  return new_array.flatten
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  total = array.inject {|sum, number| sum + number}
  return (total.to_f / array.length).ceil
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  new_array = []
  array.each do |item|
    if item <=5
      new_array << item
    else
      return new_array
    end
  end
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
end

# capitalize the first letter in each word of a string, 
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
end

# should return true for a 3 dot range like 1...20, false for a 
# normal 2 dot range
def is_a_3_dot_range?(range)
end

# get the square root of a number
def square_root_of(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end