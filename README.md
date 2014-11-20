Windows Server SSL, TLS Yapılandırması
=======
Windows Server işletim sisteminde SSL ve TLS protokollerinin yapılandırmasını forward secrecy şeklinde gerçekleştiren InnoSetup scriptini ve kayank kodlarını aşağıda bulabilirsiniz.

Ne Yapar?
===
Sunucu üzerindeki zayıf SSL bağlantılarını (SSL v3.0 gibi) kapatarak daha güvenli hale getirir. Zayıf chiper’ları kapatır, güncel ve güçlü chiper algoritmalarını aktif eder. Poddle,

Kurulumu gerçekleştirdikten sonra SSL alanınızı test ermek için https://www.ssllabs.com/ssltest/ aracını kullanabilirsiniz.

Not: Kurulum bittikten sonra ayarların aktif olması için bilgisayarınızı restart ediniz.

Download
=====
http://repo.maestropanel.com/A1/WinSSLConfig.exe

Kaynak
===
Bu konfigurasyon [Alexander Hass](http://www.hass.de) tarafından düzenlenmiş olup. http://www.hass.de/content/setup-your-iis-ssl-perfect-forward-secrecy-and-tls-12 adresinden PowerShell scripti olarak yayınlanmaktadır.

Destek ekibimiz bu script’i InnoSetup’a Port etmiştir.
