get "/" do
  @emotions = Emotion.all
  erb :index
end

get "/emotions/:id/" do
  @emotion = Emotion.find(params[:id])
  @feels = @emotion.feels
  @palette = @emotion.palette
  erb :"emotions/show"
end

get "/emotions/:id/new" do
  @emotion = Emotion.find(params[:id])
  erb :"/emotions/new"
end

post "/emotions/:id" do
  @emotion = Emotion.find_by(id: params[:id])
  puts @emotion
  @feels = Feeling.find_or_create_by(feeling: params[:feeling])
  puts @feels
  @ee = EmotionalExperience.find_or_create_by(user: current_user, emotion: @emotion)
  p @ee
  @assoc = AssociatedFeeling.new(emotional_experience: @ee, feeling: @feels)
  p @assoc
  if @assoc.save
    redirect "/emotions/#{params[:id]}/"
  else
    redirect "/emotions/new"
  end
end
