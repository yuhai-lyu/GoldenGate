using GoldenGateService as service from '../../srv/GoldenGate-serv';annotate service.IntegrationLogs with @(
    UI.CreateHidden  : true,
    UI.DeleteHidden  : true,
    odata.draft.enabled: true,
    UI.SelectionFields:[
        status,
        commerceStoreID
      ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : message,
            ![@UI.Importance] : #High,
            ![@Common.FieldControl] : #Mandatory,
            Label: 'Nessage'
        },
        {
            Criticality : Severity,
            $Type : 'UI.DataField',
            Value : status,
            ![@UI.Importance] : #High,
            Label: 'Status'
        },
        {
            $Type : 'UI.DataField',
            Value : commerceStore,
            Label: 'Commerce Store',
            ![@Common.FieldControl] : #ReadOnly,
        },
      ],
    UI.HeaderInfo:{
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Message',
        TypeNamePlural : 'Messages',
        Title : {
            ![@Common.FieldControl] : #ReadOnly,
            $Type : 'UI.DataField',
            Value : commerceStore,
            Label : 'Store Description',
        },
    },
    UI.FieldGroup#commerceStore:{
        $Type : 'UI.FieldGroupType',
        Label : 'Commerce Store 123',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : commerceStoreID,
                Label : 'Commerce Store ID',
                ![@Common.FieldControl] : #Mandatory,
            },
             {
                $Type : 'UI.DataField',
                Value : commerceStore,
                Label : 'Commerce Store Desc',
                
            },
            
        ],
    },
    UI.FieldGroup#Created:{
        $Type : 'UI.FieldGroupType',
        Label : 'Created',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : 'Created At',
            },
             {
                $Type : 'UI.DataField',
                Value : createdBy,
                Label : 'Created By',
            },
        ],
    },
    UI.FieldGroup#Message:{
        $Type : 'UI.FieldGroupType',
        Label : 'Message',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : message,
                Label : 'Message',
            },
        ],
    },
    UI.Facets  : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#commerceStore',
            Label : 'Commerce Store',
            
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Created',
            Label : 'Created By',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Message',
            Label : 'Message',
        },
    ],
);
