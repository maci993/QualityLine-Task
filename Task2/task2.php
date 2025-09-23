<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiplication Table</title>
    <link rel="stylesheet" href="style2.css">
        <script>
        function showValue(value) {
            alert("Cell value: " + value);
        }
    </script>
</head>
<body>
  <table>
        <?php
        //loop: goes through each row from 1 to 10
        for ($row = 1; $row <= 10; $row++) {
            echo "<tr>"; //here will start a new table row

            // here goes through each column from 1 to 10
            for ($col = 1; $col <= 10; $col++) {
                $value = $row * $col; //calculating

                echo "<td onclick='showValue($value)'>$value</td>";// Create a table cell with result
            }
            echo "</tr>";
        }
        ?>
    </table>  
	<!-- I downloaded XAMPP and tried to add folders inside the
    htdocs folder,but I'm still not fully sure how it works. 
     I placed my project files there and named them correctly, 
     but I'm learning how to run PHP files and access them.
      I'm doing my best to 
     understand the setup and improve as I go-->
</body>
</html>