<?php
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
                        FROM users
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

    
}
?>
