<?php
function persianToEnglish($number) {
    $persianDigits = array('۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹');
    $englishDigits = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

    return str_replace($persianDigits, $englishDigits, $number);
}

class DB{
    private $host;
    private $username;
    private $password;
    private $db;
    
    function set(){
        $this->host = "localhost";
        $this->username = "root";
        $this->password = "";
        $this->db = "seminaram_nobat";
    }
    
    function connect(){
        $this->set();
        $host = $this->host;
        $username = $this->username;
        $password = $this->password;
        $db = $this->db;
        
        $conn = new mysqli($host, $username, $password, $db);
        
        if ($conn->connect_error) {
            return(0);//failed
        }else{
            return($conn);//success
        }
    }
}
class User{

    function login($username, $password){
        // Create connection
        $db = new DB;
        $conn = $db->connect();
        // Check connection
        if ($conn == 0) {
            return(101);
        }else{
            
            session_start();
            $uname = $username;
        	$pass = $password;
        	$pass = hash('sha512', $pass);
        	if (empty($uname)) {
        		return 0;
        	    exit();
        	}else if(empty($pass)){
                return 2;
        	    exit();
        	}else{
        		$sql = "SELECT username, password
                        FROM user
                        WHERE 
                        username='$uname' AND
                        password='$pass'";
                
        		$result = mysqli_query($conn, $sql);
        		if (mysqli_num_rows($result) === 1) {
        			$row = mysqli_fetch_assoc($result);
                    if ($row['phone'] === $uname && $row['password'] === $pass) {
                    	$_SESSION['username'] = $row['phone'];
                    	$_SESSION['name'] = $row['name'];
                    	$_SESSION['id'] = $row['id'];
                    	return 1;
        		        exit();
                    }else{
        				return 3;
        		        exit();
        			}
        		}else{
        			return 4;
        	        exit();
        		}
        	}
    	
        }
    }// end login...

function save_user($data){
        // Create connection
        $db = new DB;
        $conn = $db->connect();
        // Check connection
        if ($conn == 0) {
            return(101);
        }else{
            // Connected Successfuly!
            $douplicate = "SELECT culumn FROM user WHERE phone='$data[i]'";
            $result = $conn->query($douplicate);
            if ($result->num_rows > 0) {
                // Douplicated Record!
                return(102);
            } else {
                $password = hash('sha512', $phone);
                $save_user = "INSERT INTO user (dtat)VALUES ($data)";
                if ($conn->query($save_user) === TRUE) {
                  return(1);// New record created successfully!
                } else {
                  return(103);// Probmel in isertion!
                }
            }

        }
    }//end save_user...


    function see_user(){
        // Create connection
        $db = new DB;
        $conn = $db->connect();
        // Check connection
        if ($conn == 0) {
            return(101);
        }else{
            // Connected Successfuly!
            $resault = array();
            
            $visitor = "SELECT id, name, phone, type FROM user";
            $result = $conn->query($visitor);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $curr = array();
                    $id = $row['id'];
                    $name = $row['name'];
                    $phone = $row['phone'];
                    $type = $row['type'];
                    array_push($curr, $id);
                    array_push($curr, $name);
                    array_push($curr, $phone);
                    array_push($curr, $type);
                    
                    array_push($resault, $curr);
                }
                
                return($resault);
            } else {
                return("No data!");
            }

        }
    }//end see_user...


    function upload_bill($filename, $box_id, $costumer_id, $visitor_id, $type, $cost, $size, $file){
        // Create connection
        $db = new DB;
        $conn = $db->connect();
        // Check connection
        if ($conn == 0) {
            return(101);
        }else{
            $sql = "SELECT * FROM files";
            $result = mysqli_query($conn, $sql);
            //$files = mysqli_fetch_all($result, MYSQLI_ASSOC);
            
            $destination = 'bill/' . $filename;
            
            // get the file extension
            $extension = pathinfo($filename, PATHINFO_EXTENSION);
            
            
            if (!in_array($extension, ['jpeg', 'png', 'jpg'])) {
                return 3;
            } elseif ($_FILES['myfile']['size'] > 90000000) { // file shouldn't be larger than 9Megabyte
                return 4;
            } else {
                
                $imageQuality = 10;
                // move the uploaded (temporary) file to the specified destination
                if (move_uploaded_file($file, $destination)) {
                    compressImage($destination, $destination, $imageQuality);
                    include("jdf.php");
                    $time = persianToEnglish(jdate("H:i:s"));
                    $date = persianToEnglish(jdate("Y/m/d"));
                    $cost = persianToEnglish($cost);
                    $o1 = new Orders;
                    $update = $o1->change_box_state($box_id, 3);
                    if($update == 1){
                        $sql3 = "INSERT INTO bill (name, box_id, costumer_id, visitor_id, type, cost, size, downloads, time, date) VALUES ('$filename', '$box_id', '$costumer_id', '$visitor_id', '$type', '$cost', '$size', 0, '$time', '$date')";
                        if (mysqli_query($conn, $sql3)) {
                            return 1;
                        }else{
                            echo "Error: " . $sql3 . "<br>" . $conn->error;
                            //return 5;
                        }
                    }
                } else {
                   return 2;
                }
            }
        }
    }// end upload_bill...

    
}
?>
