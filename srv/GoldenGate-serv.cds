using sap.goldenGate.schema as my from '../db/schema';

@path : '/goldengate'
@impl : './GoldenGate-serv.js'

service GoldenGateService {
  entity CommerceStores   as projection on my.CommerceStores;
  entity IntegrationLogs  as select from my.IntegrationLogs {
      key ID @UI.Hidden,
      status,
      message,
      commerceStore.ID as commerceStoreID,
      objectId,
      objectType,
      catalogByDesignedId,
      case status
         when 'Success' then 3
         when 'Warning' then 2
         when 'Error' then 1
         else 1
         end as Severity : Integer,
      
      commerceStore.Description as commerceStore,
  
      createdAt,
      modifiedAt,
      createdBy,
      modifiedBy
  };
}




