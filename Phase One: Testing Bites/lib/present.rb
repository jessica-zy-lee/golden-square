class Present
    def wrap(contents)
        fail "A contents has already been wrapped" unless @contents.nil? #unless is opposite of if (if !=)
        @contents = contents
    end

    def unwrap
        fail "No contents have been wrapped yet" if @contents.nil?
        return @contents
    end
end