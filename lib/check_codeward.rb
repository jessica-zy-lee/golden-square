def check_codeward(codeward)
    if codeward == "horse"
        return "correct!, come in"
    elsif codeward.chars.first == "h" && codeward.chars.last == "e"
        return "close, but nope."
    else 
        return "wrong"
end
end