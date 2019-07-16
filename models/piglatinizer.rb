class PigLatinizer
  def splitter(input_str)
    input_str.split(" ")
  end
  def piglatinize(words)
    pl = []
    splitter(words).each do |word|
      word = word
      fv = word.index(/[aeouiAEIOUI]/)
      arr = word.split("")
      if fv == 0
        ans = word+"way"
        pl << ans
      else
        ans = word[fv..word.length]+word[0..fv-1]+"ay"
        pl << ans
      end
    end
    pl = pl.join(" ")
    pl
  end
end
