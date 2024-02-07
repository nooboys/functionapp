param applicationInsightsName string
param appInsightsLocation string

resource applicationInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: applicationInsightsName
  location: appInsightsLocation
  kind: 'web'
  properties: {
    Application_Type: 'web'
    Request_Source: 'rest'
  }
}

output applicationInsightskey string = applicationInsights.properties.InstrumentationKey
