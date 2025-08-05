namespace cap.joao.own.project;

using { cuid, managed} from '@sap/cds/common';


//aspect cuid {
  //key ID : UUID; // aspect de cuid
//}

entity Customers : cuid, managed {
    name        : String(100); @description : 'Nome do Cliente'
    age         : Integer;      
    order       : Association to Orders on order.customer = $self; 
}

entity Orders : cuid, managed {
    ammount     : Decimal;    
    customer    : Association to Customers;
}

entity NFs {
    id_fiscal   : String;      
}