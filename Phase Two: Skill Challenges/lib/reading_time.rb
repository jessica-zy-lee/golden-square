def reading_time(string)
    words_array = string.split(" ")

    return (words_array.length / 200.to_f).ceil
end