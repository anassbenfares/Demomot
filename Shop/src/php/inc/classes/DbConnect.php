<?php

// Author : benfares anass
// Date : 08.10.2016
// Summary : Manage the db
// -----------------------------------------
class DbConnect
{
    // Database information
    const USER = "shop";
    const PSW = ".Etml-";
    const DB_NAME = "db_shop";
    const HOST = "localhost:8889";

    // DB connector
    private $pdo;

    // *****************************************************************************************
    // Name: dbConnect
    // Summary: Connect to database with pdo
    // Param:   pdo
    // Return:  -
    // *****************************************************************************************
    private function dbConnect()
    {
        //Data base host
        $dbh = 'mysql:dbname=' . self::DB_NAME . ';host=' . self::HOST . ';charset=utf8';

        // Connect to db MYSQL
        $this->pdo = new PDO($dbh,self::USER, self::PSW);

        //$this->pdo = new PDO('mysql:host=localhost:8889;dbname=db_shop;charset=utf8', 'shop', '.Etml-');

    }//end of function dbConnect

    // *****************************************************************************************
    // Name: executeGetRequest
    // Summary: Exectute request in database
    // Param:   $requete
    // Return:  $array
    // *****************************************************************************************
    private function executeGetRequest($requete)
    {
        //Check the connexion
        $this->dbConnect();

        //execute the query
        $statement=$this->pdo->prepare($requete);
        $statement->execute();

        //search dara
        $array = $statement->fetchAll(PDO::FETCH_ASSOC);

        //send the result
        return ($array);

    }//end of function executeGetRequest


    // *****************************************************************************************
    // Name: dbUnconnect
    // Summary: Disconnect to database
    // Param:   $pdo
    // Return:  -
    // *****************************************************************************************
    private function dbUnconnect()
    {
        //create connexion
        $this->dbConnect();

        //unset the connexion
        $this->pdo= null;
        //unset(dbConnect->pdo);
    }//end of function dbUnconnect

 
    public function getLogin()
    {
        //Check the connexion
        /*$this->dbConnect();

        //query
        $querySqlGetLogin = "SELECT * FROM `t_users`";

        //do the query on executeGetRequest function
        $passwordIdArray = $this->executeGetRequest($querySqlGetLogin);

        //unconnect to Db
        $this->dbUnconnect();
        //return the value
        return ($passwordIdArray);*/
        echo "coucou";
    }//end of function getLogin
}