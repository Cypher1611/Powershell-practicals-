# self signed certificate

New-SelfSignedCertificate -CertStoreLocation Cert:\CurrentUser\My `
-Subject "CN=ltib352" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Crytographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

Get-ChildItem Cert:\CurrentUser\My
