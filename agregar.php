<?php include("include/header.php")?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../articulos/css/uno.css"rel="stylesheet" type="text/css">
    <title>Agregar nuevos articulos</title>
</head>
<body>
    

<fieldset class="my-3 bg-indigo-200 text-teal-900 h-full w-full px-6">
        <br>
        <div class="col-md-12">
        <table>
            <thead> 
                <tr >
                    <td width="400">
                        <h1>CONTENIDO</h1>
                    </td>

                    <td width="150">
                            <input type="submit" name="" value="Guardar" class="btn btn-success" >     
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
                    NOMBRE *<input type="text" name="new" id="" class="border-2 rounded-sm" placeholder="Ingrese un nombre" maxlength="75" required pattern="[A-Za-z0-9]+">  
                    </td>

                    <td>
                    <input type="radio" name="publicado" value="1"> Publicado
                    <br> 
                    <input type="radio" name="publicado" value="2" checked> No Publicado
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
                        resize: none;" placeholder="Ingrese el detalle" maxlength="300" required pattern="[A-Za-z0-9]+"></textarea>
                    </td>

                    <td width="300">
                    <input type="radio" name="publicado" value="1" onchange="mediaselect();" name="media" id="V"> Video   
                    <br> 
                    <input type="radio" name="publicado" value="2" onchange="mediaselect();" name="media" id="A"> Imagen
                    <br>
                    <input type="radio" name="publicado" value="3" onchange="mediaselect();" name="media" id="I"> Imagen y Audio
                    <br> 
                    <input type="radio" name="publicado" value="4" onchange="mediaselect();" name="media" id="I&A"> Audio
                    </td>

                    <td>
                        URL Video: <input class="border-2 rounded-sm" type="text" disabled id="MediaVideo">
                        <br>
                        <br>
                        URL Audio <input class="border-2 rounded-sm" type="text" disabled id="MediaAudio">
                        <br>
                        <br>
                        URL Imagen <input class="border-2 rounded-sm" type="text" disabled id="MediaImagen">
                    </td>
                </tr>

            </thead>
        </table>
        

        </div>
    </fieldset>

    
</body>
</html>