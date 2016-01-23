<?php
        $ip = $_SERVER['REMOTE_ADDR'];
        if($ip!="198.61.170.130"){
		$fp = fopen("/home/ofadmin/logs/import_release.log", "w+");
		fwrite($fp, "Forbidden access from " + $ip);
		fclose($fp);
		die("anauthorized ip".$ip);
	}
        $fp = fopen("../hooks/.regenerate_release","w+");
        fwrite($fp,$_GET[version]);
        fclose($fp);
?>

