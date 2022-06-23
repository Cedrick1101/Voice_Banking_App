package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Account;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-06-15T18:14:21")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, String> code;
    public static volatile SingularAttribute<User, String> surname;
    public static volatile SingularAttribute<User, String> name;
    public static volatile SingularAttribute<User, String> confirmPassword;
    public static volatile SingularAttribute<User, String> phoneNum;
    public static volatile SingularAttribute<User, String> id;
    public static volatile SingularAttribute<User, Date> creationDate;
    public static volatile SingularAttribute<User, Account> account;

}