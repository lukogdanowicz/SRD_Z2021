**Statystyczne reguły decyzyjne [223490-0286], zima 2020/2021**

### Organizacja zajęć

Prowadzący zajęcia:

- _Wykład_: Bogumił Kamiński, [http://bogumilkaminski.pl](http://bogumilkaminski.pl/)
- _Ćwiczenia_: 
  * Gr 1 - Michał Kot
  * Gr 2,3,4 - Łukasz Kraiński

Godziny i lokalizacja zajęć:

- _Wykład_: MS Teams, wtorek, 8:00 
- _Ćwiczenia_:        
  - MS Teams, poniedziałek, 17:10–18:40 i 19:00–20:30

### Wykłady

|Data | Temat |
|-----|-------|
|2020-10-06 | Wprowadzenie do uczenia statystycznego |
|2020-10-13 | Praca z Git i Github |
|2020-10-20 | Podstawy budowy modeli predykcyjnych |
|2020-10-27 | Metody oceny klasyfikatorów |
|2020-11-03 | Metody regularyzacji |
|2020-11-10 | Modele lokalne |
|2020-11-17 | Przygotowanie danych: klasyczne metody redukcji wymiarowości (R) |
|2020-11-24 | Wprowadzenie do głębokich sieci neuronowych (Keras, R) |
|2020-12-01 | Autoenkodery (Keras, R) |
|2020-12-08 | Wprowadzenie do języka Julia w zastosowaniach data science |
|2020-12-15 | Obliczenia równoległe w języku Julia |
|2020-12-22 | Przetwarzanie danych w języku Julia, pakiet DataFrames.jl |
|2020-12-12 | Modelowanie przyczynowości: wprowadzenie |
|2020-12-19 | Modelowanie przyczynowości: algorytmy |

### Ćwiczenia

| Numer ćwiczeń | Tematyka zajęć |
| --- | --- |
| 1 | Programowanie w języku R i Python (zajęcia wyrównawcze) |
| 2 | Metody oceny jakości modeli klasyfikacyjnych |
| 3 | Nieparametryczne modele regresyjne: smoothing spline, LOESS, GAM |
| 4 | Klasyczne modele uczenia maszynowego: CART, random forest |
| 5 | Deep Learning – przykład praktyczny |
| 6 | Konkurs |
| 7 | Zaliczenie przy komputerze |

### Literatura

- Stephen Boyd and Lieven Vandenberghe, Introduction to Applied Linear Algebra
(<http://vmls-book.stanford.edu/>)
- Gareth J., Witten D., Hastie T., Tibshirani R. (2013), An Introduction to Statistical Learning with Applications in R ([http://www-bcf.usc.edu/~gareth/ISL/](http://www-bcf.usc.edu/~gareth/ISL/))
- Kamiński B., Zawisza M. (2012), Receptury w R. Podręcznik dla ekonomisty, Oficyna Wydawnicza SGH ([http://bogumilkaminski.pl/projekty/](http://bogumilkaminski.pl/projekty/))
- Hastie T., Tibshirani R., Friedman (2013), The Elements of Statistical Learning
([http://www-stat.stanford.edu/~tibs/ElemStatLearn/](http://www-stat.stanford.edu/~tibs/ElemStatLearn/))
- B. Kamiński, P. Szufel: Julia 1.0 Programming Cookbook, Packt Publishing, 2018
(<https://www.packtpub.com/application-development/julia-10-programming-cookbook>)


### Zasady zaliczenia zajęć

Wszystkie materiały zaliczeniowe wysyłane są do ćwiczeniowców.

---

#### Raport indywidualny z budowy modelu (50 punktów)

Do stworzenia raportu proszę wykorzystać zbiór danych: https://archive.ics.uci.edu/ml/datasets/Adult.

Zadanie polega na analizie danych, przeprowadzeniu procesu modelowania i sporządzeniu raportu o następującej strukturze:

`5pkt` 1) Wprowadzanie i opis wybranego problemu (klasyfikacja lub regresja), opis atrybutów, itd.

`10pkt` 2) Czyszczenie i wstępne przetwarzanie danych - usuwanie lub imputacja brakujących danych, standaryzacja, kodowanie typu one-hot, obsługa wartości odstających itp.

`10pkt` 3) Graficzna i opisowa analiza eksploracyjna (EDA), wykonanie i opisanie wyników segmentacji (klastrowania) rekordów, graficzna prezentacja zależności pomiędzy wybraną zmienną celu i zmiennymi niezależnymi

`10pkt` 4) Stworzenie modeli i tuning hiperparametrów do zadania klasyfikacji lub regresji

`10pkt` 5) Graficzna i opisowa ocena/wybór modelu

`5pkt` 6) Podsumowanie wyników, dyskusja na temat napotkanych problemów/wyzwań i zastosowanych rozwiązań

Za wykonanie analizy w Pythonie otrzymują Państwo dodatkowe `2pkt`.

Kod i opisy/komentarze powinny zawierać się w notatniku Jupyter lub pliku R Markdown. 

Raporty proszę przesyłać na adres _lukasz.krainski123@gmail.com_ lub _lkrain@sgh.waw.pl_ z następującą konwencją nazewnictwa plików: <numer_indeksu>_SRD_Z2021_Raport.\<rozszerzenie\> . Termin oddania raportów to **18.01.2021 EOD**. 
 
Każdy mail powinien mieć 2 załączniki: 
- dla Jupyter: plik `.ipynb` i plik `.html` lub `.pdf` wygenerowany z notebooka, 
- dla R Markdown: plik  `.Rmd` i plik `.html` lub `.pdf` wygenerowany z pliku `.Rmd`.

---

#### Zaliczenie ćwiczeń (50 punktów)
* na ostatnich ćwiczeniach; prowadzone on-line

---

#### Dodatkowe punkty 
 * Pull Request rozszerzający materiały dodatkowe na poniższym repozytorium `2pkt`
 * Wykonanie raportu końcowego w Pythonie `2pkt`
 * Konkurs modelarski - max `5pkt`
 * Realizacja kursu https://juliaacademy.com/p/introduction-to-dataframes-jl `5pkt` - proszę przesyłać certyfikaty ukończenia kursu na _lukasz.krainski123@gmail.com_ lub _lkrain@sgh.waw.pl_

---

Na podstawie sumy punktów (maksymalnie 100) wyznaczana jest ocena końcowa:

| Od | Do | Ocena końcowa |
| --- | --- | --- |
| 0 | 49 | niedostateczny |
| 50 | 59 | dostateczny |
| 60 | 69 | dostateczny plus |
| 70 | 79 | dobry |
| 80 | 89 | dobry plus |
| 90 | 100 | bardzo dobry |
