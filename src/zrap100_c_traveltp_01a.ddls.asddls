@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZRAP100_ATRAV01A'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZRAP100_C_TRAVELTP_01A
  provider contract TRANSACTIONAL_QUERY
  as projection on ZRAP100_R_TRAVELTP_01A
  association [1..1] to ZRAP100_R_TRAVELTP_01A as _BaseEntity on $projection.TRAVELID = _BaseEntity.TRAVELID
{
  key TravelID,
  AgencyID,
  CustomerID,
  BeginDate,
  EndDate,
  @Semantics: {
    Amount.Currencycode: 'CurrencyCode'
  }
  BookingFee,
  @Semantics: {
    Amount.Currencycode: 'CurrencyCode'
  }
  TotalPrice,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  CurrencyCode,
  Description,
  OverallStatus,
  Attachment,
  MimeType,
  FileName,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
