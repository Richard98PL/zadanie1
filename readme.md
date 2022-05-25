Czesc I
==============
Proszę napisać program serwera (dowolny język programowania), który realizować będzie następującą funkcjonalność: <br/>

Do rozwiazania uzyto proxy, t.j. uzycia zewnetrznego serwisu, ktory na podstawie ip obliczal potrzebne informacje. Nie istnieje funkcja wbudowana do okreslenia tak precyzyjnych informacji na podstawie adresu IP {ipinfo.com}.

Serwer to python/django, ktory uzyskuje ip callera przy pomocy danych fragmentów kodu:
![image](https://user-images.githubusercontent.com/41301282/170380451-62e91636-8528-4ba2-91d6-db2e0e29521d.png)
![image](https://user-images.githubusercontent.com/41301282/170380503-84fae09f-a174-46d7-877f-8e00bfc241c6.png)


a.	po uruchomieniu kontenera, serwer pozostawia w logach informację o dacie uruchomienia, imieniu i nazwisku autora serwera (imię i nazwisko studenta) oraz porcie TCP, na którym serwer nasłuchuje na zgłoszenia klienta. <br/>

``` 
docker-compose up --build -d
```

![image](https://user-images.githubusercontent.com/41301282/170371595-9e86bd1b-7b89-4638-8da5-5420914f7513.png)

```
docker logs -f docker_task_web_1
```
![image](https://user-images.githubusercontent.com/41301282/170372265-47b632c3-2bc9-451f-9f33-5f63a9d3fb86.png)

b.	na podstawie adresu IP klienta łączącego się z serwerem, w przeglądarce powinna zostać wyświetlona strona informująca o adresie IP klienta i na podstawie tego adresu IP, o dacie i godzinie w jego strefie czasowej.<br/>

![image](https://user-images.githubusercontent.com/41301282/170372307-ec5f94d2-cf53-47a3-bb1e-b9cf2845b3cd.png)

![image](https://user-images.githubusercontent.com/41301282/170372375-736e2086-c319-4ec1-a30c-fec0e749bb56.png)

![image](https://user-images.githubusercontent.com/41301282/170372346-dd9edafd-5821-4509-86f0-6418de26d4ca.png)

Czesc II
==========
![image](https://user-images.githubusercontent.com/41301282/170372470-cfb608d4-ef52-4bf4-a94d-2a8a16dff3ce.png)

![image](https://user-images.githubusercontent.com/41301282/170372489-f0e1dfee-7303-45d3-85b4-a3dcf130048f.png)


Czesc III
==========
Należy podać polecenia niezbędne do: <br/>
a.	zbudowania opracowanego obrazu kontenera, <br/>
```docker-compose build```
![image](https://user-images.githubusercontent.com/41301282/170377144-887af6b2-0bd2-439f-8daa-069c1b9da5e6.png)

b.	uruchomienia kontenera na podstawie zbudowanego obrazu, <br/>
``` docker-compose up -d ```
![image](https://user-images.githubusercontent.com/41301282/170377317-6dae76bf-ef4b-46e9-9e1b-81e643fc2d6b.png)

c.	sposobu uzyskania informacji, które wygenerował serwer w trakcie uruchamiana kontenera (patrz: punkt 1a), <br/>
``` docker logs -f docker_task_web_1 ```
![image](https://user-images.githubusercontent.com/41301282/170377550-683e34dd-7c29-4975-916f-6980676a6103.png)

d.	sprawdzenia, ile warstw posiada zbudowany obraz. <br/>
``` docker history docker_task_web ```
![image](https://user-images.githubusercontent.com/41301282/170373671-e598b75e-3a9a-4780-aad0-00cdb4091ef4.png)


Czesc IV
==========
Zbudować obrazy kontenera z aplikacją opracowaną w punkcie nr 1, które będą pracował na architekturach: linux/arm/v7, linux/arm64/v8 oraz linux/amd64. Obrazy te należy przesłać do swojego repozytorium na DockerHub. W sprawozdaniu należy podać wykorzystane instrukcje wraz z wynikiem ich działania I ewentualnymi komentarzami. <br />

```docker buildx build -t ryszardfullstack/lab1 --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --push .```
Gdzie ryszardfullstack/lab1 to konto dockerhub/nazwa_repozytorium

Czesc DODATKOWA
==============

-	z wykorzystaniem GitHubActions – max 40%

======

![image](https://user-images.githubusercontent.com/41301282/170380169-51973f57-9d2d-4611-be99-c6065624ab39.png)


Wykonano przez utworzenie pliku konfiguracyjnego w lokalizacji .github/workflows
![image](https://user-images.githubusercontent.com/41301282/170374748-37c304c9-29b8-4c6c-919a-b7a9376b0dec.png)

Nalezy pamietac, ze od niedawna glowny branch nazywa sie main, a nie master jak w wiekszosci poradnikow w internecie
Nalezy tez oczywiscie zdefiniowac secret -> password oraz username do dockerhub

- z przesłaniem danych nie na DockerHub a na repozytorium GitHub wraz z krótkim opisem konfiguracji GitHub Container Registry – max. 20%
=======
Wykorzystano github container registry zamiast dockerhub
konfiguracja prosta:  nalezy wygenerowac token i skonfigurowac plik ghcr.io w .github/workflows
![image](https://user-images.githubusercontent.com/41301282/170376273-6f5673b1-eabc-4180-93c4-34b8427b0a71.png)

potencjalnie najtrudniejsze bylo znalezienie sposobu na automatyczne zastosowanie lowercase dla nazwy repozytorium (wymagane)
![image](https://user-images.githubusercontent.com/41301282/170379669-0b5963b5-7eba-4adf-81c0-63745e8b8884.png)


![image](https://user-images.githubusercontent.com/41301282/170379729-f1e1a6a5-448d-4c80-91de-92200839ebe4.png)

