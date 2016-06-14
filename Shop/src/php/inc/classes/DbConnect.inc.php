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

    //*****************************************************************************************
    // Name: getAllBrands
    // Summary: get all brands
    // Param: -
    // Return : An array with the brands
    //*****************************************************************************************
    public function getAllBrands()
    {
        //Initialize ';
        $getRequest='SELECT * FROM `t_brands`';

        //Do the request
        $brands = $this->executeSQLRequest($getRequest,true);

        return $brands;
    }//end of function getAllBrands

    //*****************************************************************************************
    // Name: getAllProductsleByGender
    // Summary: get all products
    // Param: -
    // Return : An array with the products
    //*****************************************************************************************
    public function getAllProductsByGender()
    {
        //Initialize ';
        $getRequest='SELECT * FROM `t_products` inner join `t_productspictures` on `idProducts`=`fkProducts`';

        //Do the request
        $products = $this->executeSQLRequest($getRequest,true);

        return $products;
    }//end of function getAllProductsleByGender

    //*****************************************************************************************
    // Name: getProductWithId
    // Summary: get the information about product
    // Param: $id
    // Return : An array with the informations of the product
    //*****************************************************************************************
    public function getProductWithId($id)
    {
        //Initialize ';
        $getRequest='SELECT * FROM `t_products` WHERE `idProducts`='.$id.'';

        //Do the request
        $product = $this->executeSQLRequest($getRequest,true);

        return $product;
    }//end of function getProductWithId

    // Name: addProductOnBasket
    // Summary: add on db content in basket
    // Param: $id
    // Return : -
    public function addProductOnBasket($id,$idUsers)
    {
        //Recover the id of the last insert
        $getRequestCheckBasket='SELECT `idBaskets` FROM `t_baskets` WHERE `fkUsers`='.$idUsers.' ORDER BY `idBaskets` DESC ';

        //Do the request
        $checkBasket = $this->executeSQLRequest($getRequestCheckBasket,true);

        //if the basket of the user
        if(count($checkBasket)==0)
        {   
        //Create a basket 
        $getRequestAddBasket='INSERT INTO `db_Shop`.`t_baskets` (`idBaskets`, `basSend`, `fkUsers`) VALUES (NULL, 0, '.$idUsers.')';

        //execute request
        $addBasket = $this->executeSQLRequest($getRequestAddBasket,false);
        }//end if

        //Recover the id of the last insert
        $getRequestRecoverID='SELECT `idBaskets` FROM `t_baskets` WHERE `fkUsers`='.$idUsers.' ORDER BY `idBaskets` DESC ';

        //Do the request
        $recoverID = $this->executeSQLRequest($getRequestRecoverID,true);
        
        //Create relation
        $getRequestAddProductOnBasket='INSERT INTO `db_Shop`.`t_basketsproducts` (`idfkProducts`, `idfkBaskets`) VALUES ('.$id.', '.$recoverID[0]['idBaskets'].')';

        //Do the request
        $addBasketProducts = $this->executeSQLRequest($getRequestAddProductOnBasket,false);

        return $addBasketProducts;
    }//end of function addProductOnBasket


    







    
}