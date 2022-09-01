<!DOCTYPE html>
<html lang="fr">
     <head>
        <title><?=$titre?></title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale =1"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="/css/style.css"/>
     </head>
     <body class="fond-dark text-dark" id="corps"> 
         <div>
            <img id="arbre" src = "/images/animations/arbre.jpg" alt="Petit arbre">
         </div>

         <div>
            <img id="animation1" src = "/images/animations/b_dodo.jpg" alt="Bonhomme faisant dodo">
         </div>
         <div>
            <img id="animation2" src = "/images/animations/b_souriant.jpg" alt="Bonhomme souriant">
         </div>
        <?=$contenu?>
        <div class="footer">
            <hr>
            <h4>Date de dernière modification : 17 juillet 2022</h4>
        </div>
        <script src="/js/index.js"></script>
        </script>
     </body>
     
</html>