namespace anubhav.db;

context master {
    entity orders {
        key id : Integer;
        customername	:String(200);
        contactperson :String(105);
        grossamount: Decimal(10,2);
        currency: String(20);
    }
}