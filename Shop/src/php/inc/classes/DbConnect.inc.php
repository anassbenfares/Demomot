<?php

// Author : benfares anass
// Date : 08.10.2016
// Summary : Manage the db
// -----------------------------------------
class DbConnect
{
    /////////////////////////////////////////////////////////////////////////////////////////////
                                        //Connexion to db
    /////////////////////////////////////////////////////////////////////////////////////////////

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
    public function  __construct()
    {
        //Data base host
        $dbh = 'mysql:dbname=' . self::DB_NAME . ';host=' . self::HOST . ';charset=utf8';

        // Connect to db MYSQL
        $this->pdo = new PDO($dbh,self::USER, self::PSW);

    }//end of function dbConnect

    // *****************************************************************************************
    // Name: executeGetRequest
    // Summary: Do some SQL request
    // Param: 
    //        $sqlRequest   => The request to excute
    //        $returnarray  => look if need to return an array or not
    //
    // Return : An array with the values of the SQL request
    // *****************************************************************************************
    private function executeSQLRequest($sqlRequest,$returnarray)
    {
  
        //Prepare the request
        $sth = $this->pdo->prepare($sqlRequest);

        //Execute the request
        $sth->execute();

        if($returnarray == true)
        {
            //Insert the values into an array
            $sqlResult = $sth->fetchAll(PDO::FETCH_ASSOC);

            //Release the variable
            $sth->closeCursor();

            return $sqlResult;
        }
        
    } // End executeSQLRequest()


    // *****************************************************************************************
    // Name: dbUnconnect
    // Summary: Disconnect to database
    // Param:   $pdo
    // Return:  -
    // *****************************************************************************************
    public function __destruct()
    {
        //unset the connexion
        $this->pdo= null;
        //unset(dbConnect->pdo);
    }//end of function dbUnconnect

    /////////////////////////////////////////////////////////////////////////////////////////////
                                        //End of connexion
    /////////////////////////////////////////////////////////////////////////////////////////////


    // *****************************************************************************************
    // Name: getLogin
    // Summary: Get the login to connect to db
    // Param:   $pdo
    // Return:  -
    // *****************************************************************************************
    public function getLoginUser()
    {
        //query
        $querySqlGetLogin = "SELECT * FROM `t_users`";

        //do the query on executeGetRequest function
        $passwordIdArray = $this->executeSQLRequest($querySqlGetLogin,true);

        //return the value
        return ($passwordIdArray);
    }//end of function getLogin


    // Name: getAllBrand
    // Summary: get all brands
    // Param: -
    // Return : An array with the brands
    public function getAllBrand()
    {
        //Initialize ';
        $getRequest='SELECT * FROM `t_brands`';

        //Do the request
        $brands = $this->executeSQLRequest($getRequest,true);

        return $brands;
    }

     // Name: getAllBrand
    // Summary: get all brands
    // Param: -
    // Return : An array with the brands
    public function getAllArticleByGender()
    {
        //Initialize ';
        $getRequest='SELECT * FROM `t_brands`';

        //Do the request
        $brands = $this->executeSQLRequest($getRequest,true);

        return $brands;
    }
}