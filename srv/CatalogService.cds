//using { anubhav.db } from '../db/datamodel';

//service CataloService {

//   entity BusinessPartnerSet as projection on db.master1.businesspartner; 

//}

using { anubhav.db.master1, anubhav.db.transaction ,anubhav.db.CDSViews} from '../db/datamodel';


service CatalogService@(path:'/CatalogService') {

    entity EmployeeSet as projection on master1.employees;

    entity AddressSet as projection on master1.address;

    entity ProductSet as projection on master1.product;

    entity BPSet as projection on master1.businesspartner;

    entity POs @(
        title: '{i18n>poHeader}'
    ) as projection on transaction.purchaseorder{
        *,
        Items: redirected to POItems
    }

    entity POItems @( title : '{i18n>poItems}' )
    as projection on transaction.poitems{
        *,
        PARENT_KEY: redirected to POs,
        PRODUCT_GUID: redirected to ProductSet
    }

     entity POWorklist as projection on CDSViews.POWorklist;
    //entity ProductOrders as projection on CDSViews.ProductViewSub;
    //entity ProductAggregation as projection on CDSViews.CProductValuesView excluding{
          // ProductId
          // };
}