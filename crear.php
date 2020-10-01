

<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Editor de articulos</title>

</head>

<body class="text-gray-900 font-serif bg-blue-500">
<br>
<br>

    <div id="Cabecera">
        <table>
          <tr>

            <th>
              <center>
        <h2 class="text-2xl text-center my-1">Contenido</h2>
        </center>
        </th>

        <th>
        <input type="submit" name="" value="Guardar" >

        <a href="index.php" class="btn btn-success"> <input type="submit" name="" value="Cancelar"> </a>

        </th>

        </tr>
        </table>
    </div>

    <!--div id="Cambios-nombre" class="mx-2" style="margin-bottom: 40px;"-->

    <br><br>

    <div>
      <form>
<table>
  <tr>

    <th>
NOMBRE <sup>*</sup>: <input type="text" name="new" id="" class="border-2 rounded-sm" placeholder="Ingrese un nombre" maxlength="75" required pattern="[A-Za-z0-9]+">
</th>

<th>

     <input type="radio" name="publicado" value="1"> Publicado

     <br> 

     <input type="radio" name="publicado" value="2" checked autocomplete=""> No Publicado
</th>

</tr>
</table>

    </div>

    <hr>

    <div id="Cambios-detalle" class="pl-16" style="display: inline;">

    <br><br>

    <label for="" class="flex mx-12" style="display: flex;">Detalle</label>
    <br>


        <textarea name="descrip" id="" cols="80" rows="10" class="mx-10" style="overflow: scroll;

    resize: none;" placeholder="Ingrese el detalle" maxlength="300" required pattern="[A-Za-z0-9]+"></textarea>     
</form>

    </div>
    </div>

    <div id="Cambios-articulo" class="px-6" style="float:right;">

   <br> Video <input type="radio" onchange="mediaselect();" name="media" class="mr-4" id="V" style=" margin-right:50px;"> URL Video: <input class="border-2 rounded-sm" type="text" disabled id="MediaVideo">

   <br> Audio <input type="radio" onchange="mediaselect();" name="media" class="mr-4" id="A"style=" margin-right:50px;"> URL Audio: <input class="border-2 rounded-sm" type="text" disabled id="MediaAudio">

   <br> Imagen <input type="radio" onchange="mediaselect();" name="media" class="mr-4" id="I" style=" margin-right:50px;">URL Imagen: <input class="border-2 rounded-sm" type="text" disabled id="MediaImagen">

   <br> Imagen y audio <input type="radio" onchange="mediaselect();" name="media" id="I&A" style="margin-right:50px;">

   </div>

</body>

</html>

<?php
   include 'conexion.php';
   $user=$_GET['new'];
   $description=$_GET['descrip'];

   if($user!=null || $description!=null){
     $sql="insert into nuevo('',nombre,descripcion)values('".$user."','".$description."')";
     mysqli_query($conn, $sql);

     if($user=1){
       header("location:index.php");
     }
   }


?>
