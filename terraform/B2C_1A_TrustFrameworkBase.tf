resource "azureadb2cief_trust_framework_policy" "B2C_1A_TrustFrameworkBase" {
  name = "B2C_1A_TrustFrameworkBase"
  policy = templatefile("B2C_1A_TrustFrameworkBase.tftpl.xml", {
    tenant_name                        = var.TENANT_NAME
    tenant_id                          = var.TENANT_ID
    B2C_1A_TokenSigningKeyContainer    = azureadb2cief_trust_framework_key_set.B2C_1A_TokenSigningKeyContainer.name
    B2C_1A_TokenEncryptionKeyContainer = azureadb2cief_trust_framework_key_set.B2C_1A_TokenEncryptionKeyContainer.name
  })
}