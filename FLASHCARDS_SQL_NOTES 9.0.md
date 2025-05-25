

[📌 TYPER AF DATA](#📌-typer-af-data)

[1\. Descriptive/Summary Statistics (Beskrivende/Opsummerende Statistik)](#1.-descriptive/summary-statistics-\(beskrivende/opsummerende-statistik\))

[Measure of center (Central tendens) : Opsummering af data med central mål, spredning og fordelinger.](#measure-of-center-\(central-tendens\)-:-opsummering-af-data-med-central-mål,-spredning-og-fordelinger.)

[Measure of spread (Spredning)](#measure-of-spread-\(spredning\))

[Distribution (Fordeling)  Introduction to Statistics\_course](#distribution-\(fordeling\)-introduction-to-statistics_course)

[🔹 Skewness (Skævhed): Måler asymmetri i fordelingen af data.](#🔹-skewness-\(skævhed\):-måler-asymmetri-i-fordelingen-af-data.)

[🔹 Kurtosis: Måler 'tykkelsen' eller spids heden af halerne i en distribution.](#🔹-kurtosis:-måler-'tykkelsen'-eller-spids-heden-af-halerne-i-en-distribution.)

[Quartiles (Kvartiler) & Box Plots](#quartiles-\(kvartiler\)-&-box-plots)

[2\. Inferential Statistics (Inferensstatistik)](#2.-inferential-statistics-\(inferensstatistik\))

[Sampling (Stikprøveudtagning)](#sampling-\(stikprøveudtagning\))

[3\. Probability & Distributions (Sandsynlighed & Fordelinger)](#3.-probability-&-distributions-\(sandsynlighed-&-fordelinger\))

[Discrete vs. Continuous Probability (Diskrete vs. kontinuerte sandsynligheder)](#discrete-vs.-continuous-probability-\(diskrete-vs.-kontinuerte-sandsynligheder\))

[Probability Distributions (Sandsynlighedsfordelinger)](#probability-distributions-\(sandsynlighedsfordelinger\))

[T-distribution og F-distribution](#t-distribution-og-f-distribution)

[T-distribution](#t-distribution)

[Chi-Square (χ²) Distribution](#chi-square-\(χ²\)-distribution)

[F-distribution](#f-distribution)

[The Central Limit Theorem (CLT)](#the-central-limit-theorem-\(clt\))

[4\. Hypothesis Testing (Hypotesetestning)   Introduction to Statistics\_course](#4.-hypothesis-testing-\(hypotesetestning\)-introduction-to-statistics_course)

[T-test](#t-test)

[One-tailed og Two-tailed tests](#one-tailed-og-two-tailed-tests)

[P-value (P-værdi)](#p-value-\(p-værdi\))

[Type I & Type II Errors](#type-i-&-type-ii-errors)

[Confidence Interval (CI)](#confidence-interval-\(ci\)-parameter-estimation-og-konfidensintervaller-bruges-til-at-estimere-ukendte-værdier-i-en-population-baseret-på-en-stikprøve.-de-giver-os-en-måde-at-kvantificere-usikkerhed-i-vores-estimater-og-vurdere,-hvor-præcise-vores-forudsigelser-er.)

[Parameter Estimation](#parameter-estimation)

[Experimentation in Statistics](#experimentation-in-statistics)

[🔹 Control Group (Kontrolgruppe)](#🔹-control-group-\(kontrolgruppe\))

[🔹 Randomization (Randomisering)](#🔹-randomization-\(randomisering\))

[🔹 Confounding Variables (Forvekslingsvariable)](#🔹-confounding-variables-\(forvekslingsvariable\))

[5\. Exploratory Data Analysis (EDA)](#5.-exploratory-data-analysis-\(eda\))

[6\. Data-Driven Decision Making](#6.-data-driven-decision-making)

🔥 **Tip til eksamen: 🎯**

* Er spørgsmålet om at **opsummere data?** → Brug **Descriptive/Summary Statistics:**  
  * **Opsummerer data (**Brug **mean, median, standard deviation).**

* Er spørgsmålet om at **drage konklusioner?** → Brug **Inferential Statistics:**   
  * **hypothese testning, konfidensintervaller, regression.**  
    (Drager konklusioner om en population (hypothesis testing)).

* Handler det om **sandsynligheder?** → **Probability & Distributions:**   
  * **Sandsynlighedsteori** for at forstå data fordeling.

* Er der noget med **stikprøvestørrelser?** → **Central Limit Theorem.**

* Skal du **analysere data visuelt?** → **Exploratory Data Analysis.**  
  * **Data Visualization:** Bruger grafer til at **præsentere data (scatter, bar, histograms).**

* Skal du tage en **beslutning baseret på data?** → **Data-Driven Decision Making.**

* **SQL** Techniques**: Joins, set operations, subqueries og arrays** bruges til at **analysere data.**

# 📌 TYPER AF DATA {#📌-typer-af-data}

* **Numerisk**: Data, der er kvantitative og målbare. Deles op i kontinuerlige og diskrete data.

* **Kategorisk**: Data, der kan kategoriseres og ikke nødvendigvis har en numerisk værdi.

| DATATYPE | BESKRIVELSE (DANSK) | EKSEMPLER |
| ----- | ----- | ----- |
| **Numeric** | Data, der repræsenterer tal og kan bruges til beregninger. | `10`, `3.14`, `-25`, `200` |
| **Categorical** | Data, der repræsenterer grupper eller kategorier i stedet for numeriske værdier. | `'Red'`, `'Blue'`, `'High'`, `'Low'` |

| TYPE | BESKRIVELSE | EKSEMPLER |
| ----- | ----- | ----- |
| **Continuous** | Målinger m. decimaler | Højde, temperatur, vægt |
| **Count/Interval** | Hele tal, tællinger | Antal kunder, antal køb |
| **Nominal** | Kategorier uden rækkefølge | Farver, bynavne, mærker |
| **Ordinal** | Kategorier med rækkefølge | Uddannelsesniveau, kundetilfredshed |

## 

| 1\. Descriptive/Summary Statistics (Beskrivende/Opsummerende Statistik) |
| :---- |

## Measure of center (Central tendens) : *Opsummering af data med central mål, spredning og fordelinger.* {#measure-of-center-(central-tendens)-:-opsummering-af-data-med-central-mål,-spredning-og-fordelinger.}

👉 ***Måler den typiske værdi i et datasæt (middelværdi, median, typetal).***

🔹 **Measures of Center (Centralmål)**: Omfatter gennemsnit ***(mean), median, og mode.***  
Målinger der beskriver den centrale position i en datadistribution.   
Eksempler inkluderer gennemsnit (`AVG()`), median (`MEDIAN()`) og mode (`MODE()`).

* **Mean (Gennemsnit)** – Summen af alle værdier divideret med antal observationer.  
* **Median (Medianværdi)** – Den midterste værdi i et sorteret datasæt.  
* **Mode (Typetal)** – Den hyppigst forekommende værdi.

📌 **Hvornår bruges de?**

* Mean (AVG) bruges til numeriske data uden ekstreme outliers.  
* Median (middel value) er bedre, når der er outliers (eks. indkomstdata).  
* Mode (most frequent) bruges til kategoriske data (eks. mest populære produkt).

[Descriptive\_Statistics\_Cheat\_Sheet.pdf](https://drive.google.com/file/d/1gn573ra9b3NmKqyb_DW6vTp8aLhBK8cv/view?usp=drive_link)  
---

## [Measure of spread (Spredning)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.1ev30fjdzm6q) {#measure-of-spread-(spredning)}

**👉 *Måler variationen i et datasæt (range, standardafvigelse, varians).***

**🔹 Measures of Spread (Spredningsmål)**: Omfatter området (range), interkvartil området (IQR), varians, og standardafvigelse.

Beskriver spredningen af værdier omkring centralmålet.   
Standard afvigelse (`STDDEV()`) og varians (`VARIANCE()`) er almindelige målinger.

* **Range (Spændvidde)** – Differencen mellem max- og min. værdi.  
* **Variance (Varians)** – Måler hvor spredte data er omkring gennemsnittet.  
* **Standard Deviation (Standardafvigelse)** – Kvadratroden af variansen, bruges for en mere intuitiv måling af spredning

🔹 Fortolkning af Variance

1. **Høj varians** → Data er **meget spredt**, der er stor forskel mellem værdierne.  
2. **Lav varians** → Data er **mindre spredt**, værdierne ligger tæt på gennemsnittet.  
3. **Variance \= 0** → Alle værdier er ens.

Eksempel:

* **Dataset 1**: \[50, 55, 52, 53, 54\] → **Lav varians** (værdierne er tæt på gennemsnittet).  
* **Dataset 2**: \[30, 80, 20, 90, 50\] → **Høj varians** (stor spredning mellem værdierne).

📌 **Hvornår bruges de?**

Standardafvigelse bruges til at vurdere dataens konsistens. // Variance er god til at sammenligne variationer i forskellige datasæt.

* **Range** er den mest simple måling af spredning.  
* **Variance** viser **spredning**, men er kvadreret og kan være svær at tolke.  
* **Standard deviation** er **mere brugervenlig**, fordi den er i samme enhed som dataene.

---

## Distribution (Fordeling)	 [Introduction to Statistics\_course](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.kww9t2njccn8) {#distribution-(fordeling)-introduction-to-statistics_course}

👉 ***Viser hvordan data er spredt ud og organiseret.(Viser, hvordan data er fordelt.)***

*Omfatter uniform, normal, binomial, og Poisson distribution.*

Specificerer sandsynligheden for udfaldet af en tilfældig variabel. 

| Distribution | Beskrivelse | Eksempel |
| ----- | ----- | ----- |
| **Uniform** | Alle udfald er lige sandsynlige. | Kast med en terning. |
| **Normal** | Klokkeformet kurve, data centreret omkring gennemsnittet. | IQ scores, højder. |
| **Binomial** | Antal succeser i et antal forsøg. | Antal konverteringer i en kampagne. |
| **Poisson** | Sjældne hændelser over tid. | Antal kunder, der ankommer til en butik pr. time. |

###  🔹 [**Skewness**](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.yfd9y62mrjqu) **(Skævhed)**: Måler asymmetri i fordelingen af data. {#🔹-skewness-(skævhed):-måler-asymmetri-i-fordelingen-af-data.}

### 🔹 [**Kurtosis**](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.kp9qwdi696kv): Måler 'tykkelsen' eller spids heden af halerne i en distribution. {#🔹-kurtosis:-måler-'tykkelsen'-eller-spids-heden-af-halerne-i-en-distribution.}

* **Symmetrisk fordeling** – Data er jævnt fordelt omkring gennemsnittet.  
* **Skewed (Skævhed)** – Data trækker enten mod venstre (negativ skewness) eller højre (positiv skewness).  
* **Kurtosis** – måler, om en fordeling har "tunge haler" (outliers).

📌 **Hvornår bruges de?**

* Normalfordeling bruges ofte til at beskrive naturlige data (eks. højder, IQ).  
* Skewness er vigtig for at forstå asymmetri i data (eks. lønfordelinger).

---

## [Quartiles (Kvartiler) & Box Plots](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.dyk0zrc8qk2x) {#quartiles-(kvartiler)-&-box-plots}

**👉 *Kvartiler opdeler data i fire lige store grupper og anvendes til at identificere outliers.***

🔹 Quartiles **→ Opdeler et datasæt i fire lige store dele** for at vise fordelingen af værdier.

🔹 Box-plot ➡ **Bruges til:** At analysere fordelingen af data og identificere outliers.

**🔹 Quartiles (Kvartiler)**

📌 **De tre vigtigste kvartiler:**

* **Q1 (25%)** – Nedre kvartil (median af første halvdel)  
* **Q2 (50%)** – Median (midtpunktet af data)  
* **Q3 (75%)** – Øvre kvartil (median af anden halvdel)  
* **Interquartile Range (IQR)** \= Q3 \- Q1 → Måler spredningen af de midterste 50% af data  
  ---

📌 **Eksempel:**  
	Hvis testresultaterne for en klasse er **\[50, 55, 60, 65, 70, 75, 80, 85, 90, 95\]**,

* **Q1 \= 60**, **Q2 (Median) \= 72.5**, **Q3 \= 85**, **IQR \= 25**

---

**🔹 Box Plots (Boksplot)**

➡ **Grafisk repræsentation af kvartiler og spredning af data.**  
➡ **Bruges til:** At sammenligne datasæt og identificere skævheder og outliers

📌 **Elementer i et box plot:**

* **Boks:** Viser **IQR** (området mellem Q1 og Q3)  
* **Lodrette linjer (whiskers):** Viser spredningen af data (typisk 1,5 \* IQR)  
* **Median (Q2):** Midterlinjen i boksen  
* **Outliers:** Punkter uden for whiskers, som indikerer ekstreme værdier

  📌 **Eksempel på fortolkning:**

* En **bred boks** → stor spredning i data  
* En **skæv median** → asymmetrisk fordeling  
* **Outliers** → ekstreme observationer.

## 

| 2\. Inferential Statistics (Inferensstatistik) |
| :---- |

## Sampling (Stikprøveudtagning) {#sampling-(stikprøveudtagning)}

## *Konklusioner om en population baseret på stikprøver og hypotesetestning.*

**👉 *At tage en stikprøve for at drage konklusioner om en population.***

Processen med at vælge en delmængde (en stikprøve) af en population for at estimere karakteristika ved hele populationen.

* **Simple Random Sampling** – Hver observation har samme sandsynlighed for at blive valgt.  
* **Stratified Sampling** – Data opdeles i grupper (strata) for at sikre repræsentation.  
* **Systematic Sampling** – Hver n’te observation vælges.

📌 **Hvornår bruges de?**

* Random sampling er standard for upartiske analyser.  
* Stratified sampling bruges, når data har vigtige undergrupper (eks. kundegrupper).

**Udvælg tilfældig stikprøve på 100 rækker**:  
`SELECT * FROM table_name ORDER BY RANDOM() LIMIT 100;`

| 3\. Probability & Distributions (Sandsynlighed & Fordelinger) |
| :---- |

## Discrete vs. Continuous Probability (Diskrete vs. kontinuerte sandsynligheder) {#discrete-vs.-continuous-probability-(diskrete-vs.-kontinuerte-sandsynligheder)}

## *Forstå sandsynligheder og modellering af data med statistiske fordelinger.*

👉 ***Discrete data: Begrænset** antal værdier (eks. antal solgte produkter).*   
👉 ***Continuous data: Uendeligt** antal værdier (eks. temperaturmålinger).*

👉 ***Independent Probability (Uafhængig)*** *– To hændelser påvirker ikke hinanden.*  
👉 ***Conditional Probability (Betinget)** – Sandsynligheden for én hændelse givet en anden er sket.*

📌 **Formel for betinget sandsynlighed:**

P(A∣B)=P(A∩B)  
	   P(B)

📌 **Eksempel:**

Sandsynligheden for, at en kunde køber et produkt givet, at de har set en reklame.

## 

## Probability Distributions (Sandsynlighedsfordelinger) {#probability-distributions-(sandsynlighedsfordelinger)}

👉 *Bruges til at forudsige sandsynligheden for specifikke resultater i data.*  
👉 *Bruges til at modellere data.*

Grundlaget for inferential statistik, inkluderer diskrete og kontinuerlige sandsynligheder.

| Distribution | Beskrivelse | Eksempel |
| ----- | ----- | ----- |
| **[Uniform](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.tt51ciw4nn79)** | Alle udfald er lige sandsynlige. | Kast med en terning. |
| **[Normal](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.cne3mr69dcuj)** | Klokkeformet kurve, data centreret omkring gennemsnittet. | IQ scores, højder. |
| **[Binomial](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.nuyb09zcyfqz)** | Antal succeser i et antal forsøg. | Antal konverteringer i en kampagne. |
| **[Poisson](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.e165aglo17fo)** | Sjældne hændelser over tid. | Antal kunder, der ankommer til en butik pr. time. |
| **[T-distribution](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.r56ttrx8n7xb)** | Bruges, når stikprøvestørrelsen er lille (n \< 30\) | Anvendes typisk i t-tests for at sammenligne middelværdier. |
| **[F-distribution](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.6f34o5bdakl7)** | Bruges i variansanalyse (ANOVA) og hypotesetestning, når man sammenligner variansen mellem to eller flere grupper. | Bruges til F-test, som evaluerer, om to populationer har samme varians. |

### [T-distribution](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.r56ttrx8n7xb) og [F-distribution](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.6f34o5bdakl7)  {#t-distribution-og-f-distribution}

Disse distributioner bruges i forskellige tests, afhængigt af om man analyserer middelværdier (t-distribution) eller varians (F-distribution).

📌 **T-distribution (Student’s t-distribution)**  
→ Bruges, når stikprøvestørrelsen er lille (n \< 30), og populationens standardafvigelse er ukendt.  
→ Anvendes typisk i **t-tests** for at sammenligne middelværdier.

📌 **F-distribution**  
→ Bruges i **variansanalyse (ANOVA)** og hypotesetestning, når man sammenligner variansen mellem to eller flere grupper.  
→ Bruges til **F-test**, som evaluerer, om to populationer har samme varians.

---

### [T-distribution](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.r56ttrx8n7xb) {#t-distribution}

➡ **Bruges til:** Hypotesetest for middelværdier, når vi arbejder med små stikprøver og ukendt populations standardafvigelse.

📌 **Egenskaber:**

* **Ligner normalfordelingen**, men har tykkere "haler" (mere spredning).  
* Bruges primært ved **hypotesetest** og **konfidensintervaller** for små stikprøver.  
* Bestemmes af **frihedsgrader (degrees of freedom, df)** → Færre frihedsgrader \= bredere fordeling.

---

### [Chi-Square](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.2ikpyw4dmudh) (χ²) Distribution {#chi-square-(χ²)-distribution}

🔹 **Chi-Square (χ²) fordeling**

➡ **Bruges til:** At teste statistiske sammenhænge mellem kategoriske variabler og evaluere forskelle i fordeling af data.

✅ Når vi analyserer **kategoriske data**  
✅ Når vi vil teste **forholdet mellem variabler**  
✅ Når stikprøvestørrelsen er **stor nok** (n \> 5 i hver kategori)

📌 **Egenskaber:**

* **Kun positive værdier** (fordelingen starter ved 0).  
* **Ikke symmetrisk**, men bliver mere symmetrisk ved større stikprøvestørrelser.  
* **Afhænger af frihedsgrader (degrees of freedom, df)**.  
* Bruges i **χ²-test for uafhængighed** og **χ²-test for godhed af fit**

🔥 Typer af Chi-Square Tests:

1️⃣ Chi-Square Goodness of Fit Test

2️⃣ Chi-Square Test for Independence

---

### [F-distribution](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.6f34o5bdakl7) {#f-distribution}

→ F-distribution er en sandsynlighedsfordeling, der bruges til at sammenligne varians mellem to eller flere grupper.  
→ Den er skæv mod højre og afhænger af to frihedsgrader (**df1 og df2**).  
→ Bruges typisk i **F-test** og **ANOVA** (variansanalyse).

✅ Bruges til at sammenligne varians mellem grupper.  
✅ Anvendes i **F-test** og **ANOVA**.  
✅ Jo større F-værdien er, desto større forskel er der i varians.  
✅ Positivt skæv og afhænger af to frihedsgrader (**df1, df2**).

**🔹 Egenskaber ved F-distribution**

* Positivt skæv (asymmetrisk mod højre).  
* Defineret af to sæt frihedsgrader (**df1** og **df2**).  
* Ingen negative værdier (fordi den repræsenterer variansforhold).  
* Bliver mere symmetrisk, når df1 og df2 stiger.

📌 **F-test for varians**  
→ Tester om to populationer har samme varians.  
→ Bruges ofte som en forudsætning for **t-tests** og **ANOVA**.

📌 **ANOVA (Analysis of Variance)**  
→ Sammenligner variansen mellem tre eller flere grupper for at se, om mindst én gruppe adskiller sig.  
→ F-værdien bestemmer, om forskellen mellem grupperne er statistisk signifikant.

**🔹 Fortolkning af F-værdien**

| F-værdi | Fortolkning |
| :---- | :---- |
| **F ≈ 1** | Ingen signifikant forskel i varians |
| **F \> 1** | Første gruppe har større varians end anden gruppe |
| **F \< 1** | Anden gruppe har større varians end første gruppe |

# ---

### [The Central Limit Theorem (CLT)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.2mam025ygvsg) {#the-central-limit-theorem-(clt)}

## *Hvordan stikprøvegennemsnit bliver normalfordelt uanset populationsfordeling.*

👉 *Uanset hvordan en population er fordelt, vil middelværdien af stikprøver nærme sig en normalfordeling, hvis stikprøven er stor nok (\>30).*

👉 *Hvis man gentagne gange tager stikprøver og beregner gennemsnittet, vil disse gennemsnit være normalfordelt – uanset hvordan populationen oprindeligt var fordelt.*

Teorien der beskriver, hvordan middelværdien af en tilstrækkelig stor stikprøve fra en population med en vilkårlig fordeling vil være normalfordelt.

📌 **Vigtig betydning:**

* Gør det muligt at bruge normalfordeling til estimering selv med ikke-normal data.  
* Nødvendig for mange statistiske tests.

---

# [4\. Hypothesis Testing (Hypotesetestning)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.gps3idgy5lmf)	  [Introduction to Statistics\_course](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.gps3idgy5lmf) {#4.-hypothesis-testing-(hypotesetestning)-introduction-to-statistics_course}

**👉 *Bruges til at teste om en antagelse om data er korrekt***   
**👉 *Tester en antagelse om en population baseret på en stikprøve.***

Bruges til at afgøre om der er tilstrækkelig bevis for at støtte en specifik hypotese om en datamængde.

🔹 **Null Hypothesis (H₀)**: Der er *ingen* signifikant forskel mellem grupper.

🔹 **Alternative Hypothesis (H₁)**: Der *er* en signifikant forskel mellem grupper.

**🔹 [Significance Level (α-værdi)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.8122dgjmiz76) – Typisk 0.05** (5% sandsynlighed for fejl).

	Typisk **α \= 0.05** (5% sandsynlighed for at lave en Type I-fejl).

Hvis **p-value \< α**, afvis **H₀** → Resultatet er statistisk signifikant.

Hvis **p-value ≥ α**, kan vi ikke afvise **H₀** → Ingen tilstrækkelig evidens.

📌 **Testtyper:**

* **Z-test** – Sammenligner en stikprøve med en kendt populationsgennemsnit.  
* [**T-test**]() – Sammenligner gennemsnit mellem to grupper.  
* [**Chi-Square Test**]() – Tester afhængighed mellem kategoriske variabler.

---

## [T-test](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.r56ttrx8n7xb) {#t-test}

➡ **Bruges til:** At teste **forskelle mellem middelværdier** i en eller flere grupper og drage konklusioner om populationen. Om forskellen mellem dem er **statistisk signifikant**.

***→ T-test** bruges til at teste **hypoteser** om **middelværdier i en population.***

📌 **Egenskaber:**

* Bruges, når stikprøvestørrelsen er **lille (n \< 30\)**, og populationens standardafvigelse **ikke er kendt**.  
* Følger en **t-fordeling**, som ligner normalfordelingen, men har tykkere haler.  
* Afhænger af **frihedsgrader (df \= n \- 1\)**.

**🔍 T-test anvendes ofte i:**

✅ Hypothesis testing → Tester middelværdier mellem grupper  
✅ Når data er **tilnærmelsesvis normalfordelt**  
✅ Når standardafvigelsen **ikke kendes**  
✅ **Comparing means** → Eksperimentelle vs. kontrolgrupper  
✅ **Small sample sizes** → Bruges, når n\<30 og standardafvigelsen er ukendt

**📊 Hvordan tolker man en t-test?**

1️⃣ **Beregn t-værdien**  
2️⃣ **Find den kritiske t-værdi** i en t-fordelingstabel  
3️⃣ **Sammenlign p-værdien** med signifikansniveauet α=0.05:

* **p \< 0.05** → Afvis nulhypotesen (**grupperne er forskellige**)  
* **p ≥ 0.05** → Behold nulhypotesen (**ingen signifikant forskel**)

**🔥 Typer af t-test:**

**1️⃣ One-Sample T-test:** Tester om **middelværdien af en stikprøve er forskellig fra en kendt værdi** (ofte en populationsmiddelværdi).  
**2️⃣ Independent (Unpaired) T-test: Sammenligner middelværdien** af to uafhængige grupper.  
**3️⃣ Paired (Dependent) T-test: Sammenligner middelværdien** af den samme gruppe før og efter en behandling.

---

## [One-tailed og Two-tailed tests](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.gps3idgy5lmf)  {#one-tailed-og-two-tailed-tests}

*One-tailed og Two-tailed bruges til at teste hypoteser i forbindelse med statistisk signifikans.* 

De bestemmer, hvordan vi evaluerer p-værdien og fortolker testresultater i forhold til en nulhypotese (H₀) og en alternativ hypotese (H₁).

🔹 **One-Tailed Test (Én-sidet test)**  
→ En hypoteseprøve, hvor vi kun tester for en ændring i én retning (enten større eller mindre end en given værdi).

🔹 **Two-Tailed Test (To-sidet test)**  
→ En hypoteseprøve, hvor vi tester for ændringer i **begge** retninger (både større og mindre end en given værdi).

* **One-tailed test** har mere statistisk styrke i én retning, men kan overse effekter i den anden.  
  ➡ Bruges til: Når vi har en klar forventning om en specifik retning af ændringen.

* **Two-tailed test** er mere konservativ og bruges ofte, når vi er usikre på effekts retning.  
  ➡ Bruges til: Når vi ikke på forhånd ved, hvilken retning effekten kan have.

---

## [P-value (P-værdi)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.56mbkizpnkw) {#p-value-(p-værdi)}

**👉 *Måler sandsynligheden for, at den observerede forskel er tilfældig (typisk cutoff: 0.05)***   
**👉*Måler sandsynligheden for, at resultatet skyldes tilfældigheder.***

Sandsynligheden for at observere en statistik mindst lige så ekstrem som den faktisk observerede, under antagelse af at nulhypotesen er sand.

* Hvis **p \< 0.05**, afvises H₀ (signifikant resultat).  
* Hvis **p \> 0.05**, beholder vi H₀ (ingen signifikant forskel).

📌 **Eksempel:**  
Hvis en t-test giver **p \= 0.03**, betyder det, at der kun er 3% sandsynlighed for, at forskellen skyldes tilfældigheder – derfor er resultatet statistisk signifikant.

## ---

  [Type I & Type II Errors](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.fc1m5wtyfguv) {#type-i-&-type-ii-errors}

* **Type I Error (False Positive):** Afvisning af en sand H₀.  
* **Type II Error (False Negative):** Ikke afvisning af en falsk H₀.

## ---

## [Confidence Interval (CI)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.jlz4p7m64nji) Parameter estimation og konfidensintervaller bruges til at **estimere ukendte værdier** i en population baseret på en stikprøve. De giver os en måde at **kvantificere usikkerhed** i vores estimater og vurdere, hvor præcise vores forudsigelser er. {#confidence-interval-(ci)-parameter-estimation-og-konfidensintervaller-bruges-til-at-estimere-ukendte-værdier-i-en-population-baseret-på-en-stikprøve.-de-giver-os-en-måde-at-kvantificere-usikkerhed-i-vores-estimater-og-vurdere,-hvor-præcise-vores-forudsigelser-er.}

➡ **Bruges til:** Forretningsanalyser, finansielle forudsigelser, medicinske studier, A/B-testning.

→ Sandsynligheden for, at intervallet indeholder den **sande populationsparameter**.

✅ **Jo større stikprøve, desto smallere konfidensinterval (mere præcist estimat).**  
✅ **Et 95% CI betyder, at vi ved gentagne stikprøver forventer, at den sande værdi ligger i intervallet 95% af tiden.**  
✅ **En bred CI indikerer større usikkerhed i estimatet.**  
✅ **CI bruges ofte i forudsigelser, markedsanalyse og hypotesetestning.**

**Confidence Interval (CI):** Et interval, der estimerer en parameter med en given sikkerhed (f.eks. 95%).   
Hvis CI ikke indeholder nul eller den forventede værdi, afvises H₀.

✅ Når vi vil **estimere en populationsparameter** ud fra en stikprøve.  
✅ Når vi ønsker en **margin of error** for vores estimater.  
✅ Når vi vil **forstå usikkerheden** i vores data.

→ Typiske værdier:

✅ **90% CI** → Mere præcist, men større usikkerhed.  
✅ **95% CI** → Standardniveau, ofte brugt i statistik.  
✅ **99% CI** → Meget sikkert, men bredere interval.

🔹 **Fortolkning af et 95% CI:**  
→ Hvis vi gentager eksperimentet **100 gange**, vil **95% af intervallerne indeholde den sande middelværdi**.

---

## [Parameter Estimation](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.jlz4p7m64nji) {#parameter-estimation}

Parameterestimation og konfidensintervaller bruges til at **estimere ukendte værdier** i en population baseret på en stikprøve. De giver os en måde at **kvantificere usikkerhed** i vores estimater og vurdere, hvor præcise vores forudsigelser er.

→ **Bruges til at estimere ukendte parametre** i en population baseret på en stikprøve.  
→ Brug af **stikprøvedata til at estimere en populationsparameter** (f.eks. gennemsnit eller andel).

→ To typer af estimation:  
✅ **Point estimation** → En **enkelt værdi** beregnet fra en stikprøve, der fungerer som **et skøn** for populationsparameteren (f.eks. stikprøvegennemsnit som et estimat for populationsgennemsnittet).

✅ **Interval estimation** → Et **interval omkring punktestimatet**, der sandsynligvis indeholder den sande populationsværdi med en bestemt sandsynlighed (typisk 95%).

✅ **Margin of Error (Fejlmargin)** → Udtrykker, hvor meget et **estimat kan afvige fra den sande værdi.**

---

[Correlation](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.jlz4p7m64nji)

**🔹 Hvad er korrelation?**  
Korrelation måler **sammenhængen mellem to variabler** – altså, hvordan de bevæger sig i forhold til hinanden.

🔹 Typer af korrelation:

1. **Positiv korrelation (+)** → Når én variabel stiger, stiger den anden.  
   * 📈 **Eksempel**: Jo flere timer du læser, jo højere eksamensscore.  
2. **Negativ korrelation (-)** → Når én variabel stiger, falder den anden.  
   * 📉 **Eksempel**: Jo mere du kører bil, jo mindre benzin har du.  
3. **Ingen korrelation (0)** → Ingen sammenhæng mellem variablerne.  
   * ❌ **Eksempel**: Antal is solgt vs. antal sko solgt.

## [Experimentation in Statistics](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.w7y7iua4wyhg) {#experimentation-in-statistics}

**👉 *Experimentation er en metode til at teste hypoteser og analysere årsagssammenhænge ved at manipulere variabler og observere effekten.*** 

Experimentation er afgørende for dataanalytikere, da det hjælper med at tage datadrevne beslutninger baseret på hypotesetestning og eksperimentelt design. Det er en nøgle færdighed i dataanalyse og business intelligence. 🚀

📌 **Hvornår bruges Experimentation?**   
Dette bruges ofte i A/B-tests, randomiserede forsøg og videnskabelige eksperimenter.

* **A/B-tests på websites/apps** → Test af to versioner af et design, funktion eller prisstrategi.  
* **Medicinske forsøg** → Test af medicin med en placebogruppe.  
* **Markedsføring** → Test af forskellige reklamestrategier for at se, hvilken der performer bedst.  
* **Produktudvikling** → Test af nye funktioner eller processer i en virksomhed.

👉 **Hvad gør dette?**

* **Gennemsnitlig konverteringsrate** for hver gruppe  
* **Antal observationer**, som kan bruges til at vurdere signifikans

---

**🔹  Hvornår bruger vi hvad?**

* Hvis der er en **sammenligning → Control Group.**  
* Hvis der er en **tilfældig fordeling → Randomization.**  
* Hvis der er **en skjult faktor → Confounding Variable.**

| Begreb | Formål | Eksempel |
| ----- | ----- | ----- |
| **Control Group** | Sammenligning for at måle effekt af en intervention | Test vs. gammel annonce |
| **Randomization** | Minimere bias ved tilfældig fordeling af grupper | Tilfældig tildeling i medicinsk test |
| **Confounding Variable** | Sikre, at ingen skjulte faktorer fordrejer resultater | Kaffesalg vs. antal ansatte vs. årstid |

---

### [🔹 Control Group (Kontrolgruppe)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.w7y7iua4wyhg) {#🔹-control-group-(kontrolgruppe)}

→ En **kontrolgruppe** er en gruppe i et eksperiment, der **ikke modtager behandlingen/interventionen**, men bruges til at sammenligne effekten med testgruppen.

✅ **Bruges til:** At evaluere kausalitet i eksperimenter og undgå placebo-effekter.

📌 **Hvorfor vigtigt?**

* Sikrer, at ændringer i testgruppen skyldes interventionen og ikke eksterne faktorer.  
* Giver en baseline til at måle effekt.

📌 **Eksempel:**  
En virksomhed tester en ny marketingstrategi. **Kontrolgruppen ser den gamle annonce**, mens testgruppen ser den nye. Hvis testgruppen køber mere, kan effekten tilskrives den nye annonce.

---

### [🔹 Randomization (Randomisering)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.w7y7iua4wyhg) {#🔹-randomization-(randomisering)}

→ **Tilfældig fordeling** af deltagere i **kontrol- og testgrupper** for at **minimere bias** og sikre sammenlignelige grupper.

✅ **Bruges til:** At undgå selektionsbias og sikre, at eksperimentet er repræsentativt for en større population.

📌 **Hvorfor vigtigt?**

* Fordeler **ukendte variabler** ligeligt mellem grupperne.  
* Sikrer, at forskelle i resultater skyldes interventionen og ikke tilfældige faktorer.

📌 **Eksempel:**  
Et medicinsk studie tester en ny medicin mod hovedpine. **Patienter fordeles tilfældigt** i to grupper: én får medicinen, én får placebo. Dette sikrer, at begge grupper har **samme fordeling af alder, køn og andre faktorer**.

---

### [🔹 Confounding Variables (Forvekslingsvariable)](https://docs.google.com/document/d/1BN4mQUCqPiZpfoauO1y2WW1TIL7_I6X1Q8ad6CRk0K4/edit?tab=t.w7y7iua4wyhg) {#🔹-confounding-variables-(forvekslingsvariable)}

→ **Uønskede variabler**, der påvirker både den uafhængige og afhængige variabel, hvilket skaber en **falsk sammenhæng**.

✅ **Bruges til:** At kontrollere eksterne faktorer, der kan forstyrre eksperimenter og fordreje resultater.

📌 **Hvorfor vigtigt?**

* Kan føre til **fejlagtige konklusioner**.  
* Skal **identificeres og kontrolleres** for at sikre validitet.

📌 **Eksempel:**  
En virksomhed ser en sammenhæng mellem **kaffesalg og antal ansatte**, men en **forvekslingsvariabel** kan være **årstiden** – om vinteren drikker flere kaffe.

# 5\. Exploratory Data Analysis (EDA) {#5.-exploratory-data-analysis-(eda)}

## *Visuel og statistisk udforskning af data for at finde mønstre og sammenhænge.*

**Visualizing Characteristics of Data**

👉 *Visuelle teknikker til at opdage mønstre i data.*

| VISUALISERING | ANVENDELSE |
| ----- | ----- |
| **Histogram** | Viser fordelingen af data. |
| **Box Plot** | Identificerer outliers og viser kvartiler. |
| **Scatter Plot** | Viser sammenhænge mellem variabler. |
| **Heatmap** | Illustrerer korrelationer. |

📌 **Eksempel:**

* **Box Plot** bruges til at analysere løndata og outliers.  
* **Histogram** bruges til at analysere eksamensscores.

---

#  **6\. Data-Driven Decision Making** {#6.-data-driven-decision-making}

## *Brug af data og statistik til at træffe informerede beslutninger og optimere resultater.*

👉 *Statistik bruges til at tage informerede beslutninger baseret på data.*

📌 **Processen:**

1️⃣ **Indsamling af data** (databaser, APIs, surveys).  
2️⃣ **Forberedelse af data** (rensning, validering).  
3️⃣ **Udforskning** (beskrivende statistik, EDA).  
4️⃣ **Modellering & testning** (hypotesetests, regression).  
5️⃣ **Beslutningstagning** (visualisering, rapportering).

📌 **Eksempel:**

* En e-commerce virksomhed bruger A/B-testning til at sammenligne to versioner af en landingsside for at øge konverteringer.