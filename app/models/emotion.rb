class Emotion < ActiveRecord::Base
  has_many :emotional_experiences

  def feels
    @feels = []
    self.emotional_experiences.each do |space|
      space.feelings.each do |f|
        @feels << f.feeling
      end
    end
    @feels.uniq
  end

  def palette
    @hexes = []
    @palette = Nokogiri::XML(open("http://www.colourlovers.com/api/palettes/?hueOption=#{self.color}&keywords=#{self.emotion}"))
    @palette.css("colors hex").each do |hex|
      @hexes << "#" + hex.content
    end
    p @hexes.sample(self.feels.length)
  end

end
