using {cap.joao.own.project as db} from '../db/schema';

service Main @ (path: '/main'){


    entity Customers as projection on db.Customers{
        *,
        name @mandatory
    };
    
    entity Orders as projection on db.Orders;
    entity NFs as projection on db.NFs;
}