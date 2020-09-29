<?php
$sharexdir = ""; //This is your file dir, also the link..
$domain_url = 'http://example.com/instagram/';
$lengthofstring = 8; //Length of the file name

function RandomString($length) {
    $keys = array_merge(range(0,9), range('a', 'z'));

    $key = '';
    for($i=0; $i < $length; $i++) {
        $key .= $keys[mt_rand(0, count($keys) - 1)];
    }
    return $key;
}
$filename = RandomString($lengthofstring);
$target_file = $_FILES["files"]["name"];
$fileType = pathinfo($target_file, PATHINFO_EXTENSION);

if (move_uploaded_file($_FILES["files"]["tmp_name"], $sharexdir.$filename.'.'.$fileType))
{
	echo $domain_url.$sharexdir.$filename.'.'.$fileType;
}
	else
{
   echo 'File upload failed - CHMOD/Folder doesn\'t exist?';
}
?>
