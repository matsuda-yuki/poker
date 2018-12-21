class CardSet

  def initialize(card)
    @cards = cards
    @card_array = @cards.split('')
  end

  def straight(number)
    if(number[0] ==1 && number[1] == 1 && number[2] == 1 && number[3] == 1 && number[4] ==1) then
      return true

    elsif(number[1] ==1 && number[2] == 1 && number[3] == 1 && number[4] == 1 && number[5] ==1) then
      return true

    elsif(number[2] ==1 && number[3] == 1 && number[4] == 1 && number[5] == 1 && number[6] ==1) then
      return true

    elsif(number[3] ==1 && number[4] == 1 && number[5] == 1 && number[6] == 1 && number[7] ==1) then
      return true

    elsif(number[4] ==1 && number[5] == 1 && number[6] == 1 && number[7] == 1 && number[8] ==1) then
      return true

    elsif(number[5] ==1 && number[6] == 1 && number[7] == 1 && number[8] == 1 && number[9] ==1) then
      return true

    elsif(number[6] ==1 && number[7] == 1 && number[8] == 1 && number[9] == 1 && number[10] ==1) then
      return true

    elsif(number[7] ==1 && number[8] == 1 && number[9] == 1 && number[10] == 1 && number[11] ==1) then
      return true

    elsif(number[8] ==1 && number[9] == 1 && number[10] == 1 && number[11] == 1 && number[12] ==1) then
      return true

    elsif(number[9] ==1 && number[10] == 1 && number[11] == 1 && number[12] == 1 && number[13] ==1) then
      return true

    elsif(number[10] ==1 && number[11] == 1 && number[12] == 1 && number[13] == 1 && number[1] ==1) then
      return true

    else
      return false

    end
  end

  def flash(suits)
    if(suits[0] == 5 ||suits[1] == 5||suits[2] == 5||suits[3] == 5) then
      return true

    else
      return false




  def judge
    suits = [0,0,0,0]
    numbers = [0,0,0,0,0,0,0,0,0,0,0,0,0]
    same_count = [0,0,0,0,0]

    suits_card[]
    number_card[]

    @card_array.each do |card|
      suits_card << card[1,2].to_i
      number_card << hand[0,1]
    end

    suits_card.each do |suit|
      if(suit == "S")
        suits[0] += 1

      elsif(suit = "H")
        suits[1] += 1

      elsif(suit = "C")
        suits[2] += 1

      else
        suits[3] += 1

      end
    end

    number_card.each do |number|
      numbers[numbner - 1] += 1
    end

    numbers.each do |number|
      same_count[number] += 1
    end

    flash_flag = flash(suits)
    staright_flag = straight(numbers)


    if(flash? && straight? ) then
      return {card: @cards, hand:'ストレートフラッシュ' ,rank: 8}

    elsif (same_count[4] == 1) then
      return {hand: @cards, hand:'フォー・オブ・・カインド' , rank: 7}

    elsif(same_count[3] == 1 && same_count[2] ==1) then
      return {card: @cards, hand: 'フルハウス', rank: 6}

    elsif(flash?) then
      return {card: @cards, hand:',フラッシュ', rank: 5}

    elsif(straight?) then
      return {card: @cards, hand:'ストレート', rank: 4}

    elsif(same_count[3] == 1) then
      return {card: @cards, hand:'スリー・オブ・ア・カインド', rank: 3}

    elsif(same_count[2] == 2) then
      return {card: @cards, hand:'ツーペア', rank: 2}

    elsif(same_count[2] == 1) then
      return {card: @cards, hand:'ワンペア', rank: 1}

    else
      return {card: @cards, hand:'ハイカード', rank: 0}

    end

    end
  end

  def validates

  end

end