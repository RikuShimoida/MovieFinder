class PostsController < ApplicationController
  def index
    
  end

  def new

  end

  def create
    if params[:actor2] == nil && params[:actor3] == nil
      actor = params[:actor1]
    elsif params[:actor3] == ""
      actor = params[:actor1] + "," + params[:actor2]
    else
      actor = params[:actor1] + "," + params[:actor2] + "," + params[:actor3]
    end
    @movies = Movie.new(title:params[:title], director:params[:director],actor:actor,impressedFlg:params[:impressedFlg], loveFlg:params[:loveFlg], depressedFlg:params[:depressedFlg], ForeignFlg:params[:ForeignFlg], japanFlg:params[:japanFlg], marvelFlg:params[:marvelFlg], dcFlg: params[:dcFlg], animeFlg:params[:animeFlg], specialFlg:params[:specialFlg], musicalFlg:params[:musicalFlg], seriesFlg:params[:seriesFlg], sexyFlg:params[:sexyFlg], futuristicFlg:params[:futuristicFlg], thrillFlg:params[:thrillFlg], nonFictionFlg:params[:nonFictionFlg], hintFlg:params[:hintFlg], mediaFlg:params[:mediaFlg], supernaturalFlg:params[:supernaturalFlg], disneyFlg:params[:disneyFlg], ghibliFlg:params[:ghibliFlg], usefulFlg:params[:usefulFlg], mysteriousFlg:params[:mysteriousFlg], actionFlg:params[:actionFlg], horrorFlg:params[:horrorFlg])
    if @movies.save
      redirect_to "/"
      flash[:notice] = '作品登録が完了しました'
    end
  end

  def show
    
    if params[:title] != nil
    @movies = Movie.where("title LIKE ?", "%#{params[:title]}%")
    @movies.each do |movie|
    
      if movie.title == nil
        flash[:notice] = '検索結果は見つかりませんでした'
      end
    
    end
    
  end

    if params[:director] != nil
    @movies = Movie.where("director LIKE ?", "%#{params[:director]}%")
    end

    if params[:actor] != nil
    @movies = Movie.where("actor LIKE ?", "%#{params[:actor]}%")
    end  

    if params[:impressedFlg] != nil
      @impressedFlg = Movie.where(impressedFlg:params[:impressedFlg])
    end

    if params[:loveFlg] != nil
      @love = Movie.where(loveFlg:params[:loveFlg])
    end

    if params[:depressedFlg] != nil
      @depre = Movie.where(depressedFlg:params[:depressedFlg])
    end

    if params[:ForeignFlg] != nil
      @fore = Movie.where(ForeignFlg:params[:ForeignFlg])
    end

    if params[:japanFlg] != nil
      @japan = Movie.where(japanFlg:params[:japanFlg])
    end

    if params[:marvelFlg] != nil
      @marvel = Movie.where(marvelFlg:params[:marvelFlg])
    end

    if params[:specialFlg] != nil
      @special = Movie.where(specialFlg:params[:specialFlg])
    end

    if params[:musicalFlg] != nil
      @musical = Movie.where(musicalFlg:params[:musicalFlg])
    end

    if params[:sexyFlg] != nil
      @sexy = Movie.where(sexyFlg:params[:sexyFlg])
    end

    if params[:futuristicFlg] != nil
      @futurist = Movie.where(futuristicFlg:params[:futuristicFlg])
    end

    if params[:thrillFlg] != nil
      @thrill = Movie.where(thrillFlg:params[:thrillFlg])
    end

    if params[:nonFictionFlg] != nil
      @nonFiction = Movie.where(nonFictionFlg:params[:nonFictionFlg])
    end

    if params[:hintFlg] != nil
      @hint = Movie.where(hintFlg:params[:hintFlg])
    end

    if params[:mediaFlg] != nil
      @media = Movie.where(mediaFlg:params[:mediaFlg])
    end

    if params[:supernaturalFlg] != nil
      @supernatural = Movie.where(supernaturalFlg:params[:supernaturalFlg])
    end

    if params[:disneyFlg] != nil
      @disney = Movie.where(disneyFlg:params[:disneyFlg])
    end

    if params[:ghibliFlg] != nil
      @ghibli = Movie.where(ghibliFlg:params[:ghibliFlg])
    end

    if params[:usefulFlg] != nil
      @useful = Movie.where(usefulFlg:params[:usefulFlg])
    end

    if params[:seriesFlg] != nil
      @series = Movie.where(seriesFlg:params[:seriesFlg])
    end

    if params[:animeFlg] != nil
      @anime = Movie.where(animeFlg:params[:animeFlg])
    end

    if params[:dcFlg] != nil
      @dc = Movie.where(dcFlg:params[:dcFlg])
    end

    if params[:mysteriousFlg] != nil
      @mystery = Movie.where(mysteriousFlg:params[:mysteriousFlg])
    end

    if params[:actionFlg] != nil
      @action = Movie.where(actionFlg:params[:actionFlg])
    end

    if params[:horrorFlg] != nil
      @horror = Movie.where(horrorFlg:params[:horrorFlg])
    end

    if params[:impressedFlg] != nil || params[:loveFlg] != nil || params[:depressedFlg] != nil || params[:ForeignFlg] != nil || params[:japanFlg]  != nil || params[:marvelFlg] != nil || params[:dcFlg] != nil || params[:animeFlg] != nil || params[:specialFlg] != nil || params[:musicalFlg] != nil || params[:seriesFlg] != nil || params[:sexyFlg] != nil || params[:futuristicFlg] != nil || params[:thrillFlg] != nil || params[:nonFictionFlg] != nil || params[:hintFlg] != nil || params[:mediaFlg] != nil || params[:supernaturalFlg] != nil || params[:disneyFlg] != nil || params[:ghibliFlg] != nil || params[:usefulFlg] != nil || params[:mysteriousFlg] != nil || params[:actionFlg] != nil || params[:horrorFlg] != nil
    @movies = [@impressed, @love, @depre, @fore, @japan, @marvel, @dc, @anime, @special, @musical, @series, @sexy, @futurist, @thrill, @nonFiction, @hint, @media, @supernatural, @disney, @ghibli, @useful, @mystery, @action, @horror]
    end
    
  end

  def title
    #@movies = Movie.where("title LIKE ?", "%#{params[:title]}%")
    redirect_to action: "show", title: params[:title]
  end
    

  def director
    #@movies = Movie.where(director:params[:director])
    redirect_to action: "show", director: params[:director]
  end

  def actor
    #@movies = Movie.where(director:params[:actor])
    redirect_to action: "show", actor: params[:actor]
  end

  def parameter
    redirect_to action: "show", impressedFlg: params[:impressedFlg], loveFlg: params[:loveFlg], depressedFlg: params[:depressedFlg], ForeignFlg: params[:ForeignFlg], japanFlg: params[:japanFlg], marvelFlg: params[:marvelFlg], dcFlg: params[:dcFlg], animeFlg: params[:animeFlg], specialFlg: params[:specialFlg], musicalFlg: params[:musicalFlg], seriesFlg: params[:seriesFlg], sexyFlg: params[:sexyFlg], futuristicFlg: params[:futuristicFlg], thrillFlg: params[:thrillFlg], nonFictionFlg: params[:nonFictionFlg], hintFlg: params[:hintFlg], mediaFlg: params[:mediaFlg], supernaturalFlg: params[:supernaturalFlg], disneyFlg: params[:disneyFlg], ghibliFlg: params[:ghibliFlg], usefulFlg: params[:usefulFlg], mysteriousFlg: params[:mysteriousFlg], actionFlg: params[:actionFlg], horrorFlg: params[:horrorFlg]
  end

  def edit
    @movie = Movie.find_by(id:params[:id])
  end

  def delete
    @movie = Movie.find_by(id:params[:id])
    @movie.delete
    redirect_to("/")
    flash[:notice] = "作品情報を削除しました" 
  end

  def update
    @movie = Movie.find_by(id:params[:id])
    @movie.title = params[:title]
    @movie.director = params[:director]
    @movie.impressedFlg = params[:impressedFlg]
    @movie.loveFlg = params[:loveFlg]
    @movie.depressedFlg = params[:depressedFlg]
    @movie.ForeignFlg = params[:ForeignFlg]
    @movie.japanFlg = params[:japanFlg]
    @movie.marvelFlg = params[:marvelFlg]
    @movie.dcFlg = params[:dcFlg]
    @movie.animeFlg = params[:animeFlg]
    @movie.specialFlg = params[:specialFlg]
    @movie.musicalFlg = params[:musicalFlg]
    @movie.seriesFlg = params[:seriesFlg]
    @movie.sexyFlg = params[:sexyFlg]
    @movie.futuristicFlg = params[:futuristicFlg]
    @movie.thrillFlg = params[:thrillFlg]
    @movie.nonFictionFlg = params[:nonFictionFlg]
    @movie.hintFlg = params[:hintFlg]
    @movie.mediaFlg = params[:mediaFlg]
    @movie.supernaturalFlg = params[:supernaturalFlg]
    @movie.disneyFlg = params[:disneyFlg]
    @movie.ghibliFlg = params[:ghibliFlg]
    @movie.usefulFlg = params[:usefulFlg]
    @movie.mysteriousFlg = params[:mysteriousFlg]
    @movie.actionFlg = params[:actionFlg]
    @movie.horrorFlg = params[:horrorFlg]

    if @movie.save
      redirect_to("/")
      flash[:notice] = "作品情報を編集しました"
    else
      render("/posts/edit")
    end
  end

  def about
    @movie = Movie.find_by(id:params[:id])
  end
      
      
      
  

end