<?php
require_once '../db/connectmysql.php';
class Level{
		private $id;
		private $level1;
		private $level2;
		private $level3;
		private $userId;
		private $isActive;

    function __construct(){
        $connect = new ConnectMysql();
        $connect->Connect();
    }

    function AddLevel($userId, $clientIP, $level1, $level2, $level3){
		    $query = mysql_query("INSERT INTO `level` (level1, level2, level3, isActive, userId, clientIP) VALUES ( $level1, $level2, $level3, true, $userId, '$clientIP')")
        or die(mysql_error());
        $queryid = mysql_insert_id();
        return $queryid;
        //header('Location: index.php?url=view');
    }

		function SelectUniqueClients(){
			$level_row = mysql_query("SELECT COUNT( DISTINCT clientIP ) AS clients FROM level")
			or die(mysql_error());
			return $level_row;
		}

		function SelectAVGLevels(){
			$level_row = mysql_query("SELECT AVG(`level1`) AS lvl1, AVG(`level2`) AS lvl2, AVG(`level3`) AS lvl3 FROM `level` WHERE `time`>= NOW() - INTERVAL 30 SECOND")
			or die(mysql_error());
			return $level_row;
		}
}
