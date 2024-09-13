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
# create a sample file of power shell as sample.ps1 and the copy the path and execute it
#binding the certificate
$cert = Get-ChildItem Cert:\CurrentUser\My\C2101D47A66F04CB36A80DB965FA3B17F277D1BE

Set-AuthenticodeSignature -Certificate $cert -FilePath .\Documents\sample.ps1
