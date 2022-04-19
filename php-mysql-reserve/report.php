<?php
$conn = new mysqli("localhost","root","","Computer Accessibility");

$sql="SELECT res_date, res_slot FROM reservations";
$display =$conn -> query($sql);
if($display ->num_rows > 0){
    echo"<table><tr><th>Reservation Date</>t</th><th>Reservation Slot</th></tr>";
    while($row = $display -> fetch_assoc()){
        echo "<tr><td>".$row["res_date"]."</td><td>".$row["res_slot"];
    }
    echo "</table>";
} else{
    echo "No Reservations";
}
?>