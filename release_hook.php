<?php
        $ip = $_SERVER['REMOTE_ADDR'];
        if($ip!="198.61.170.130") die("anauthorized ip".$ip);
        $fp = fopen("../hooks/.regenerate_release","w+");
        fwrite($fp,$_GET[version]);
        fclose($fp);
?>

