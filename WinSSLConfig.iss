;Configurayion By 2014, Alexander Hass
;http://www.hass.de/content/setup-your-iis-ssl-perfect-forward-secrecy-and-tls-12
;Port by MaestroPanel Support Team

#define MyAppName "Windows Server SSL, TLS Configuration"
#define MyAppVersion "1.0"
#define MyAppPublisher "MaestroPanel"
#define MyAppURL "http://www.maestropanel.com/"
#define SourceDir "..\..\Build\Agent"

[Setup]
AppId={{A131F5C2-08A3-4408-83AE-EF4BABE2D4A1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
OutputDir=..\..\Packages
OutputBaseFilename=WinSSLConfig
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
DisableProgramGroupPage=yes
AppCopyright=MaestroPanel
MinVersion=0,6.1
UsePreviousGroup=False
RestartIfNeededByRun=False
CreateAppDir=False
Uninstallable=no
AlwaysShowComponentsList=False
ShowComponentSizes=False
AlwaysRestart=True
WizardImageFile=.\maestropanel-installer-finish.bmp
WizardSmallImageFile=.\maestropanel-installer-logo.bmp

[Registry]
;Disable Multi-Protocol Unified Hello
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\Multi-Protocol Unified Hello\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\Multi-Protocol Unified Hello\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"
;Disable PCT 1.0
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT 1.0\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT 1.0\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"
;Disable SSL 2.0 (PCI Compliance)
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"
;Disable SSL 3.0 (PCI Compliance) and enable "Poodle" protection
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"
;Add and Enable TLS 1.0 for client and server SCHANNEL communications
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"; ValueType: dword; ValueName: "DisabledByDefault"; ValueData: "0"
;Add and Enable TLS 1.1 for client and server SCHANNEL communications
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server"; ValueType: dword; ValueName: "DisabledByDefault"; ValueData: "0"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client"; ValueType: dword; ValueName: "Enabled"; ValueData: "1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client"; ValueType: dword; ValueName: "DisabledByDefault"; ValueData: "0"
;Add and Enable TLS 1.2 for client and server SCHANNEL communications
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server"; ValueType: dword; ValueName: "DisabledByDefault"; ValueData: "0"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client"; ValueType: dword; ValueName: "Enabled"; ValueData: "1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client"; ValueType: dword; ValueName: "DisabledByDefault"; ValueData: "0"
;Re-create the ciphers key.
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers"; Flags: noerror
;Disable insecure/weak ciphers.
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\DES 56/56"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\NULL"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC2 128/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC2 40/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC2 56/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 40/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 56/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
Root: "HKLM"; Subkey: "CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 64/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"; Flags: noerror
;Enable new secure ciphers.
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\AES 128/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\AES 256/256"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 128/128"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\Triple DES 168/168"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
;Set hashes configuration
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\MD5"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\MD5"; ValueType: dword; ValueName: "Enabled"; ValueData: "0"

Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\SHA"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\SHA"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
;Set KeyExchangeAlgorithms configuration.
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\KeyExchangeAlgorithms\Diffie-Hellman"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\KeyExchangeAlgorithms\Diffie-Hellman"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"

Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\KeyExchangeAlgorithms\PKCS"; Flags: noerror
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\KeyExchangeAlgorithms\PKCS"; ValueType: dword; ValueName: "Enabled"; ValueData: "-1"
;Set cipher suites order as secure as possible (Enables Perfect Forward Secrecy).
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA_P521"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA_P384"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA_P256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_RSA_WITH_AES_256_CBC_SHA256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_RSA_WITH_AES_256_CBC_SHA"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_RSA_WITH_AES_128_CBC_SHA256"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_RSA_WITH_AES_128_CBC_SHA"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_RSA_WITH_RC4_128_SHA"
Root: "HKLM"; Subkey: "SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002"; ValueType: string; ValueName: "Functions"; ValueData: "TLS_RSA_WITH_3DES_EDE_CBC_SHA"
