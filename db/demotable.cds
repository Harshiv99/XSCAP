namespace Shiva.db;

context master {
    entity businesspartner {
        key NODE_KEY : String(32);
        BP_ROLE	:String(2);
        EMAIL_ADDRESS :String(105);
        PHONE_NUMBER: String(32);
        FAX_NUMBER: String(32);
        WEB_ADDRESS:String(44);	
        ADDRESS_GUID: String(32);
        BP_ID: String(32);	
        COMPANY_NAME: String(250);
    }

    entity address {
        key NODE_KEY: String(32);
        CITY: String(44);
        POSTAL_CODE: String(8);
        STREET: String(44);
        BUILDING:String(128)  ;
        COUNTRY: String(44);
        ADDRESS_TYPE: String(44);
        VAL_START_DATE: Date;
        VAL_END_DATE:Date;
        LATITUDE: Decimal;
        LONGITUDE: Decimal;
    }
}

context transaction {
    
}