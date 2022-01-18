namespace anubhav.db;

context master {
    entity orders {
        key id : Integer;
        Bcustomername	:String(200);
        contactperson :String(105);
        grossamount: Decimal(10,2);
        currency: String(20);
    }
}