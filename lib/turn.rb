class Turn
    attr_reader :string, :Card
    def initialize(guess, card)
        @guess = guess
        @card = card
    end

    def correct?
        if guess == card.answer
            true
        else
            false
    end

    def feedback
        if guess == true
            "Correct!"
        else
            "Incorrect."
    end
end