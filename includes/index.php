<?php
    include("connect.php");
    include("functions.php");

    if(isset($_GET["id"])) {
        $targetID = $_GET["id"];
        $result = getSingleThing($pdo, $targetID);

        return $result;
    } else {
        $allThings = getAllThings($pdo);

        return $allThings;
    }