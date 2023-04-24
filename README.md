## Traefik example project


This is the simplest setup I could come up with for Traefik. 

With SSL/TLS enabled locally.

Usage:

```
docker compose up
```


## REQUIREMENTS: 

* docker (or similar) - for running the example in docker-compose.yml
* mkcert - for generating self-signed certificate for '*.localhost'

Read more on mkcert here:

* in file `mkcert.sh`
* https://github.com/FiloSottile/mkcert


## URLS

These urls are active when docker runs:

* http://localhost:8080/dashboard/#/ (traefik configuration dashboard)
* http://localhost:8080/api/rawdata (traefik configuration raw)
* https://localhost:443 (ssl terminated container)
* http://localhost:80 (redirect from http to https)


## Verification of certificate

Verify that localhost provides desired certificate

```
$ openssl s_client -showcerts -connect localhost:443 | openssl x509 -noout -dates -issuer
depth=0 O = mkcert development certificate, OU = jesper@jesperronn.local
verify error:num=20:unable to get local issuer certificate
verify return:1
depth=0 O = mkcert development certificate, OU = jesper@jesperronn.local
verify error:num=21:unable to verify the first certificate
verify return:1
notBefore=Apr 25 12:24:32 2023 GMT
notAfter=Jul 25 12:24:32 2025 GMT
issuer= /O=mkcert development CA/OU=jesperronn-jensen@Jesper-MBP16-2019.local (Jesper R\xC3\xB8nn-Jensen)/CN=mkcert jesperronn-jensen@Jesper-MBP16-2019.local (Jesper R\xC3\xB8nn-Jensen)

```