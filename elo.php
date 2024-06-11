<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
</body>
<form method="post" action="elo.php">
<input type="submit" name="s_wszystko" value="wszystko">
<input type="submit" name="firma" value="firma jakas">

wstaw tabelę<input type="text" name="wstaw"> <!--zrobić na text wstawianie tabeli -->
</form>

<?php  

    $link = mysqli_connect("localhost", "root", "", "slodycze"); 
    
    if ($link === false) { 
        die("ERROR: Could not connect. "
                    .mysqli_connect_error()); 
    } 
    if(isset($_POST['s_wszystko'])){
        $result = mysqli_query($link,"SELECT * FROM cukierki");
            echo "wszystko";
        
            while($row = mysqli_fetch_array($result))
        {
        
            echo "<p>". $row['wedel'] ."</p>";
            echo "<p>". $row['michałki'] ."</p>";
            echo "<p>". $row['milka'] ."</p>";
        
        }
        
            mysqli_close($link);
        }
    if(isset($_POST['firma'])){
        $result = mysqli_query($link,"SELECT wedel FROM cukierki");
            echo "wedel";
            while($row = mysqli_fetch_array($result))
            {
                echo "<p>". $row["wedel"] ."</p>";
            }
            mysqli_close($link);

    }
    //if(isset($_POST['wstaw'])){
    //    $result = mysqli_query($link,"CREATE TABLE ceny(cena INT);");
    //        echo "wedel";
    //        while($row = mysqli_fetch_array($result))
    //        {
    //            echo "<p>". $row["cena"] ."</p>";
    //        }
    //        mysqli_close($link);

    //} // nie działa


?>





    

</body>
</html>