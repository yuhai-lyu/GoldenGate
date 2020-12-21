const cds = require('@sap/cds')
const { IntegrationLogs } = cds.entities
// const BaseUpscaleApi = require( "../../server/integrations/upscale/BaseUpscaleApi")

/** Service implementation for CatalogService */
module.exports = cds.service.impl(
  srv => {
    srv.before('DELETE',"IntegrationLogs",(req)=>{
      console.log(console.log("start to delete"))
    }) 
  }
)



