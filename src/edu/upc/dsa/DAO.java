package edu.upc.dsa;

/**
 * Created by hicham.az on 18/11/2016.
 */
public class DAO {

    public boolean login (User _usuario)
    {
        Boolean a = false;
        User _usr = new User();
        if(_usr.name.equals("hicham") & _usr.id.equals("1") )
          return true;
        else return false;
    }

}
