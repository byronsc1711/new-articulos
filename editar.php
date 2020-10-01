<?php include("include/header.php")?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../articulos/css/uno.css"rel="stylesheet" type="text/css">
    <script src="../articulos/js/edit.js"></script>
    <title>Agregar nuevos articulos</title>
</head>
<body>

<?php
    require('conexion.php');
    session_start();
    if (isset($_SESSION['articulo'])) {
    $query= mysqli_query($conn,"SELECT * from articulos where Aticulos='$_SESSION[articulo]';");
    $partes=mysqli_fetch_array($query);
    $llenar=true;
    }else{
       $llenar=false;
    }
    mysqli_close($conn);
?>
    

<fieldset class="my-3 bg-indigo-200 text-teal-900 h-full w-full px-6">
        <br>
        <div class="col-md-12">
        <form action="../guardar.php" method="POST">
        <div id="Cabecera">

        <table>
            <thead> 
                <tr >
                    <td width="400">
                        <h1>CONTENIDO</h1>
                        
                    </td>

                    <td width="150">
                            <a href="index.php"><input type="submit" name="" value="Guardar" class="btn btn-success"> </a>     
                    </td>

                    <td>
                    <a href="index.php"> <input type="submit" name="" value="Cancelar" class="btn btn-danger"> </a>
                    </td>
                </tr>
                </thead>
                </table>
                <br><br>

                <table>
                    <thead>
                <tr>
                    <td width="400">
                    NOMBRE *<input type="text" name="Nombre" id="Nombre" class="border-2 rounded-sm" placeholder="Ingrese un nombre" maxlength="75" required pattern="[A-Za-z0-9]+">  
                    </td>

                    <td>
                    <input type="radio" name="publicado" value="1" id="p"> Publicado
                    <br> 
                    <input type="radio" name="publicado" value="0" id="no"> No Publicado
                    </td>
                </tr>
                </thead>
                </table>
            <br>

        <hr>
        <br>
        DETALLE
        <br>
        <br>

        <table>
            <thead>
                <tr >
                    <td width="500">
                        <textarea name="descrip" id="" cols="40" rows="6" class="mx-3" style="overflow: scroll;
                        resize: none;" placeholder="Ingrese el detalle" maxlength="300" required pattern="[A-Za-z0-9]+">
                        <?php
                        if ($llenar) {
                        echo ($partes['Detalle']);
                        }
                        ?>
                        </textarea>
                    </td>

                    <td width="300">
                    <input type="radio" name="media" required onchange="mediaselect();" name="media" id="V" value="V"> Video   
                    <br> 
                    <input type="radio" name="media" required onchange="mediaselect();" name="media" id="A" value="A"> Audio
                    <br>
                    <input type="radio" name="media" required onchange="mediaselect();" name="media" id="I" value="I"> Imagen
                    <br> 
                    <input type="radio" name="media" required onchange="mediaselect();" name="media" id="I&A" value="I&A"> Imagen y Audio
                    </td>

                    <td>
                        URL Video: <input class="border-2 rounded-sm" name="VID" type="text" disabled id="MediaVideo">
                        <br>
                        <br>
                        URL Audio <input class="border-2 rounded-sm" name="AUD" type="text" disabled id="MediaAudio">
                        <br>
                        <br>
                        URL Imagen <input class="border-2 rounded-sm" name="IMG" type="text" disabled id="MediaImagen">
                    </td>
                </tr>

            </thead>
        </table>
        

        </div>
    </fieldset>

    
</body>
</html>
<?php

if ($llenar) {
    if ($partes['Publicado']==true) {
        echo '<script>document.getElementById("p").checked=true;</script>';
     }else{
        echo '<script>document.getElementById("no").checked=true;</script>';
     }
     echo '<script>document.getElementById("Nombre").value="'.$partes['Nombre_Articulo'].'";
     
     </script>"';
     
     if (isset($partes['AudioURL']) && isset($partes['ImageURL'])) {
        echo '<script>document.getElementById("I&A").checked=true;
        document.getElementById("MediaImagen").disabled=false;
        document.getElementById("MediaAudio").disabled=false;
        document.getElementById("MediaImagen").value="'.$partes['ImageURL'].'";
        document.getElementById("MediaAudio").value="'.$partes['AudioURL'].'";
        </script>';   
     }elseif (isset($partes['AudioURL']) ) {
         echo '<script>document.getElementById("A").checked=true;
         document.getElementById("MediaAudio").disabled=false;
         document.getElementById("MediaAudio").value="'.$partes['AudioURL'].'";
         </script>';
     }elseif (isset($partes['ImageURL'])) {
         echo '<script>document.getElementById("I").checked=true;
         document.getElementById("MediaImagen").disabled=false;
         document.getElementById("MediaImagen").value="'.$partes['ImageURL'].'";
         </script>';
     }elseif (isset($partes['VideoURL'])) {
         echo '<script>document.getElementById("V").checked=true;
         document.getElementById("MediaVideo").disabled=false;
         document.getElementById("MediaVideo").value="'.$partes['VideoURL'].'";
         </script>';
     }     
}
?>







    