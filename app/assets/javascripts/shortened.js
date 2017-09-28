var messages = ["OLOCO, MEU!", "É HORA DE ALEGRIA!", "TÁ PEGANDO FOGO, BICHO!", "ESSA FERA AÍ, BICHO!", "ERRROOOU!", "É BRINCADEIRA, MEU!"];


function shortAnimate(){

  $(".shortened").css({
      opacity: 1,
      "pointer-events": "inherit"
  }).find("div").addClass("animateIn").html(messages[Math.floor(Math.random() * messages.length)]);
  setTimeout('$(".shortened div").removeClass("animateIn").addClass("animateOut")', 700);
  setTimeout('$(".shortened").css({"opacity":0,"pointer-events":"none"});', 700);
  setTimeout('$(".shortened div").removeClass("animateOut")', 1400);

}
