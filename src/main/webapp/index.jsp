<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Welcome to the game</title>
  <link href="css/index.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</head>
<body>

<div class="how-section1">
  <div class="row">
    <div class="col-md-2 how-img">
      <img src="src/main/webapp/WEB-INF/welcome.jpg" class="rounded-circle img-fluid" alt=""/>
    </div>
    <div class="col-md-6">
      <h4>Пролог</h4>

      <p class="text-muted">Ты стоишь в космическом порту и готов подняться на борт
        своего корабля. Разве ты не об этом мечтал?
        Стать капитаном галактического судна с экипажем,
        который будет совершать подвиги под твоим командованием.
        Так что вперед!</p>

    </div>
  </div>

  <div>
    <br><br>
  </div>
  <div class="row">
    <div class="col-md-6">
      <h4>Знакомство с экипажем</h4>

      <p class="text-muted">
        Когда ты поднялся на борт корабля, тебя поприветствовала
        девушка с черной папкой в руках:
        – Здравствуйте, командир! Я Зинаида – ваша помощница.
        Видите? Там в углу пьет кофе наш штурман – сержант Перегарный Серж,
        под штурвалом спит наш бортмеханик – Черный Богдан.
        А как обращаться к вам?
      </p>
    </div>
    <div class="col-md-2 how-img">
      <img src="img/crew.jpg" class="rounded-circle img-fluid" alt=""/>
    </div>
  </div>
</div>

<div>
  <br><br>
</div>

<section class="bg-dark text-center p-5 mt-4">
  <div class="container p-3">
    <h3 class="text-white">ДЛЯ НАЧАЛА ИГРЫ ПРЕДСТАВЬТЕСЬ</h3>
    <form  action="/game" method="get"  >
      <input type="text" name="playerName" class="col-md-4" placeholder="Введите имя (допустимы только буквы)" required pattern="[A-Za-zА-Яа-яЁё]+"  >

      <button type="submit" class="btn btn-outline-secondary">Представиться<i class="fa fa-envelope"></i></button>
    </form>
  </div>
</section>
<c:if test="${not empty gamesPlayed}">
  <div style="position: fixed; bottom: 10px; left: 10px; border: 1px solid black; padding: 5px;">
    IP: ${ipAddress} <br>
    Сыграно игр: ${gamesPlayed}
  </div>
</c:if>

</body>
</html>