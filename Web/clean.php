<?php

$images = glob("*.jpg");
foreach ($images as $img) {
     $ctime = filectime($img);
     if ($ctime < (time() - 86400 * 2)) {
         unlink($img);
         echo "Deleted $images from Instagram Script";
     }
}

echo "No photos deleted.";

?>