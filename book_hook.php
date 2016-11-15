<?php
        /*$fp = fopen("./lock_site", "r+");
        while (!flock($fp, LOCK_EX)) { // do an exclusive lock
            sleep(2);
        }
        system("../ofSite/build.sh 2> /dev/null");
        flock($fp, LOCK_UN); // release the lock
        fclose($fp);*/

        $fp = fopen("../hooks/.regenerate_book","w+");
        fclose($fp);
?>

