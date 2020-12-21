using {
    managed,
    cuid
} from '@sap/cds/common';

namespace sap.goldenGate.schema;

entity IntegrationLogs : managed, cuid {
    commerceStore       : Association to one CommerceStores;
    catalogByDesignedId : String;
    objectId            : String;
    objectType          : String;
    status              : String;
    message             : String;
}


entity CommerceStores {
    key ID                       : String;
        Description              : String(117);
        amount                   : Decimal
}
