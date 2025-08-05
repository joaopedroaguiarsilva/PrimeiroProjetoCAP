namespace cap.joao.own.project;

using { cuid, managed} from '@sap/cds/common';


//aspect cuid {
  //key ID : UUID; // aspect de cuid
//}

entity Customers : cuid, managed {
    name        : String(100); @description : 'Nome do Cliente'
    age         : Integer;      
    orders      : Association to many Orders on orders.customer = $self;
}

entity Orders : cuid, managed {
    ammount     : Decimal;    
    customer    : Association to Customers;
    nf          : Association to one NFs on nf.order = $self; 
}

entity NFs {
    id_fiscal   : String;      
    order       : Association to  Orders;
}