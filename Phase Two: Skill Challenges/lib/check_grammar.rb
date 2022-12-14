def check_grammar(sentence)
    fail "Not a sentence." if sentence.empty?

    if sentence[0] == sentence[0].upcase && sentence[-1].match?(/[.!?]/)
        return true
    else
        return false
    end
end