@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module appService './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-najohnson11936-${environment}'
    location: 'centralus'
    environment: environment
  }
}
