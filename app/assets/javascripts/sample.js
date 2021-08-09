$('.header_param').hover(function(){
  ('.header_param').addClass("changed");
});


var getNowPlayingURL = "https://api.themoviedb.org/3/movie/now_playing?api_key=f10404a45468df92c746003d17f8442f&language=ja-JP&page=1";
fetch(getNowPlayingURL)
.then(response => {
  return response.json();
})
.then(data => {
  //取得したJSONデータの処理
  console.log("データの出力に成功しました");
  console.log("dataの出力↓");
  console.log(data);
  console.log("data.resultsの出力↓");
  console.log(data.results);
  console.log("data.results[0]の出力↓");
  console.log(data.results[0]);
  console.log("data.results[0].titleの出力↓");
  console.log(data.results[0].title);
  data.results.map(movie => {
    const nowPlayingMovie = new Array(movie.id, movie.title,movie.poster_path, movie.vote_average, movie.overview, movie.release_date);
    nowPlayingMovie.push(nowPlayingMovie);  
    const row = document.createElement('li');
    row.className = "moviePoster"
    row.classList.add('horizontal_pic');
    const poster = document.createElement('img');
    poster.src = `https://image.tmdb.org/t/p/w300_and_h450_bestv2/${movie.poster_path}`;
    horizontal_scroll_nowPlaying.appendChild(row);
    row.appendChild(poster);
  });

  $(function(){
        console.log("スライドjqueryの読み込み開始");
        var setElm = $('.container'),
        slideSpeed = 3000;
     
        setElm.each(function(){
            var self = $(this),
            selfWidth = self.innerWidth(),
            findUl = self.find('ul'),
            findLi = findUl.find('li'),
            listWidth = findLi.outerWidth(),
            listCount = findLi.length,
            loopWidth = listWidth * listCount;
     
            
            var selfWrap = self.find('.horizontal_scroll');
     
            if(loopWidth > selfWidth){
                findUl.css({width:loopWidth}).clone().appendTo(selfWrap);
     
                selfWrap.css({width:loopWidth*2});
     
                function loopMove(){
                    selfWrap.animate({left:'-' + (loopWidth) + 'px'},slideSpeed*listCount,'linear',function(){
                        selfWrap.css({left:'0'});
                        loopMove();
                    });
                };
                loopMove();
     
                setElm.hover(function() {
                    selfWrap.pause();
                }, function() {
                    selfWrap.resume();
                });
            }
        });
    });
});
//.catch(error => {
  //  console.log('error');
  //});



  $(".headSearch").hover(function(){
    $(".headSearch").addClass("clear");
  },
  function(){
    $(".headSearch").removeClass("clear");
  });

  $(".headRegist").hover(function(){
    $(".headRegist").addClass("clear");
  },
  function(){
    $(".headRegist").removeClass("clear");
  });
