<?php
include "../../seguridad/seguridad.php";

?>
<?php
try{
    $conexion = new PDO('mysql:host=localhost;dbname=parkingdom','root','',array( PDO::ATTR_EMULATE_PREPARES=>false,
    PDO::MYSQL_ATTR_DIRECT_QUERY=>false,
    PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION
));
date_default_timezone_set("America/Bogota");
$tipovehiculo=$_POST['tipovehiculo'];
$placa=$_POST['placa'];
$fecha_actual=date("Y-m-d H:i:s");  
$usuario=$_SESSION['usuario'];
$espacio= 10;

        $statement = $conexion->prepare("SELECT * FROM vehiculos where placa_vehi ='$placa'");
        $statement->execute();
        $resultados = $statement->fetch();
        if($tipovehiculo == 'Automovil'){
          $tp1= 2;
        }else if($tipovehiculo == 'motocicleta'){
          $tp1= 1;
        }
        if($resultados==TRUE){
           $tipo_cliente = 'mensual'; 
          echo '<script>alert("mensual")</script>';
        }else{
         $tipo_cliente= 'temporal'; 
                  echo '<script>alert("temporal")</script>';
        }
    
         $sentencia=$conexion->prepare("INSERT INTO `parkingdom`.`transaccion` (`placa`, `tipo_vehiculo`, `hora_entrada`, `hora_salida`, `tiempo_parqueo`, `valor_tiempo`, `tipo_cliente`, `usuario`,`tarifa_tr`, `espacio_tr`) VALUES ( :placa, :tipo_vehiculo, :hora_entrada, NULL, NULL, NULL, :tipo_cliente, :usuario,:tarifa, :espacio);");
       
        $sentencia->bindParam(':tipo_vehiculo',$tipovehiculo);
        $sentencia->bindParam(':placa',$placa);
        $sentencia->bindParam(':hora_entrada',$fecha_actual);
        $sentencia->bindParam(':tarifa',$tp1);
        $sentencia->bindParam(':usuario',$usuario);
        $sentencia->bindParam(':tipo_cliente',$tipo_cliente);
        $sentencia->bindParam(':espacio',$espacio);
    
    
    if($sentencia->execute()){
        ?>
<script>
    alert('El Registro a sido Modificado');
    window.location.href = 'ingreso_vista.php';

</script>
<?php    
    }else {
    header("Location: ingreso_vista.php");
        }   
    
}catch(PDOException $e){
    echo "Error: " . $e->getMessage();
}




?>
