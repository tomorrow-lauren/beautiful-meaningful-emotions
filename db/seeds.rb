e1 = Emotion.create!(emotion: "Sad", color: "blue", description: "Webster's Dictionary lists many definitions of sad:affected with or expressive of grief or unhappiness, downcast
or causing or associated with grief or unhappiness,depressing <sad news>, regrettable, deplorable, of little worth, of a dull somber color")
e2 = Emotion.create!(emotion: "Anger", color: "red", description: "Webster's Dictionary lists the definition of anger as a strong feeling of being upset or annoyed because of something wrong or bad : the feeling that makes someone want to hurt other people, to shout, etc. : the feeling of being angry")
e3 = Emotion.create!(emotion: "Fear", color: "fuchsia", description: "Webster's Dictionary lists many definitions of fear: an unpleasant emotion caused by being aware of danger, a feeling of being afraid, a feeling of respect and wonder for something very powerful")
e4 = Emotion.create!(emotion: "Joy", color: "aqua", description: "Webster's Dictionary lists many definitions of joy:a feeling of great happiness, a source or cause of great happiness - something or someone that gives joy to someone")
e5 = Emotion.create!(emotion: "Powerful", color: "green", description: "Webster's Dictionary lists many definitions of powerful, but this seems to be the closest to this site's meaning: full of or having power, strength, or influence ")
e6 = Emotion.create!(emotion: "Peaceful", color: "orange", description: "Webster's Dictionary lists many definitions of peaceful: not easily moved to argue or fight, full of or enjoying quiet, calm, or freedom from disturbance, not involving fighting")

bob = User.create!(username: "happy_trees", email: "bob@bob.com", password: "squirrels")
rogers = User.create!(username: "be_my_neighbor", email: "rogers@pbs.com", password: "puppets")
kronk = User.create!(username: "kronk", email: "kronk@email.com", password: "kronk")
cher = User.create!(username: "cher95", email: "as_if@bevhills.com", password: "shopping")
alex = User.create!(username: "a_hamilton", email: "tendollar@foundingfather.com", password: "myshot")
pokefan = User.create!(username: "pachirisu_fan123", email: "trainer@pokemon.com", password: "catchThemAll")

f1 = Feeling.create!(feeling: "melancholy")
f2 = Feeling.create!(feeling: "bored")
f3 = Feeling.create!(feeling: "lonely")
f4 = Feeling.create!(feeling: "hurt")
f5 = Feeling.create!(feeling: "jealous")
f6 = Feeling.create!(feeling: "critical")
f7 = Feeling.create!(feeling: "confused")
f8 = Feeling.create!(feeling: "helpless")
f9 = Feeling.create!(feeling: "embarrassed")
f10 = Feeling.create!(feeling: "excited")
f11 = Feeling.create!(feeling: "creative")
f12 = Feeling.create!(feeling: "optimistic")
f13 = Feeling.create!(feeling: "surprised")
f14 = Feeling.create!(feeling: "confident")
f15 = Feeling.create!(feeling: "proud")
f16 = Feeling.create!(feeling: "loving")
f17 = Feeling.create!(feeling: "relaxed")
f18 = Feeling.create!(feeling: "secure")

bobs_sad = bob.emotional_experiences.create!(emotion: e1)
bobs_mad = bob.emotional_experiences.create!(emotion: e2)
bobs_fear = bob.emotional_experiences.create!(emotion: e3)
bobs_happy = bob.emotional_experiences.create!(emotion: e4)
bobs_power = bob.emotional_experiences.create!(emotion: e5)
bobs_peace = bob.emotional_experiences.create!(emotion: e6)

rogers_sad = rogers.emotional_experiences.create!(emotion: e1)
rogers_mad = rogers.emotional_experiences.create!(emotion: e2)
rogers_fear = rogers.emotional_experiences.create!(emotion: e3)
rogers_happy = rogers.emotional_experiences.create!(emotion: e4)
rogers_power = rogers.emotional_experiences.create!(emotion: e5)
rogers_peace = rogers.emotional_experiences.create!(emotion: e6)

chers_sad = cher.emotional_experiences.create!(emotion: e1)
chers_mad = cher.emotional_experiences.create!(emotion: e2)
chers_fear = cher.emotional_experiences.create!(emotion: e3)
chers_happy = cher.emotional_experiences.create!(emotion: e4)
chers_power = cher.emotional_experiences.create!(emotion: e5)
chers_peace = cher.emotional_experiences.create!(emotion: e6)

bobs_peace.associated_feeling.create!(feeling: f17)
chers_peace.associated_feeling.create!(feeling: f16)
rogers_peace.associated_feeling.create!(feeling: f18)








