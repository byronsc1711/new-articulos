<?php include("include/header.php")?>
<?php include 'conexion.php'; ?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../articulos/css/uno.css"rel="stylesheet" type="text/css">
    <title>Administracion de Articulos</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>

    <style>
        #select{
            width: 100%;
        }
    </style>
</head>

<body>

<?php
$busqueda = strtolower($_REQUEST['busqueda']);
if(empty($busqueda)){
    header("location: index.php");
}
?>
    <center><h1 class=" text-4xl"><u>ADMINISTRACIÓN DE ARTÍCULOS</u></h1></center>
    <br><br>


    <div id="actions" class="px-5">

    <center>

    <form action="busca.php" method="get" class="form_search">
    <input type="submit" name="buscar" value="Buscar" class="btn btn-secondary">
    <input type="text" name="busqueda" id="busqueda" class="border-2 rounded-sm" placeholder="Buscar un Articulo" size="50px" value="<?php echo $busqueda; ?> ">
    </form>

    <br>
    <br>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <a href="agregar.php" class="btn btn-success">Nuevo</a>
    </center>

    <br>
    <fieldset class="my-3 bg-indigo-200 text-teal-900 h-full w-full px-6">
        <br>
        <div class="col-md-12">
        <table class="table table-bordered">
            <thead> 
                <tr >
                    <th width="70">ID</th>
                    <th width="780">LISTA DE ARTÍCULOS</th>
                    <th>ACCIONES</th>
                </tr>

                <?php
                $query=mysqli_query($conn,"SELECT COUNT(*) as total from articulos WHERE (Id LIKE '%articulo%' or Articulos LIKE '%articulo%')");

                ?>

            </thead>

            <tbody>

            <?php 
            $query= "SELECT *FROM articulos";
            $resultado= mysqli_query($conn,$query);
            
            while($row = mysqli_fetch_array($resultado)){ ?>
            <tr>
                <td> <?php echo $row['Id'] ?> </td>
                <td> <?php echo $row['Articulos'] ?> </td>

                <td>
                    <a href="editar.php?id=<?php echo $row['Id']?>" class="btn btn-primary">
                    Editar
                </a>
                    
                    <a href="eliminar.php?id=<?php echo $row['Id']?>" class="btn btn-danger">
                    Eliminar
                </a>
                   
                </td>
            </tr>
            <?php } ?>
            </tbody>
        </table>
        </div>
    </fieldset>

</body>

</html>
    