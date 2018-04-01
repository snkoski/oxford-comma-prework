def oxford_comma(array)
  if array.size == 1
    array.join
  elsif array.size == 2
    array.join(" and ")
  else
    string = ""
    array.each do |word|
      array.find_index(word) == array.size - 1 ? string = "#{string}and #{word}" : string = "#{string}#{word}, "
    end
    string
  end
end