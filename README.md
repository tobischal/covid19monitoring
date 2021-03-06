# Table of Content

- [Aim](https://github.com/statistikZH/covid19monitoring/tree/master#aim) <br>
- [Gitrepos overview](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-overview) <br>
- [Gitrepos without data protection](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-without-data-protection) <br>
- [Gitrepos with data protection](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-with-data-protection) <br>
- [Naming convention for gitrepos folders](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-gitrepos-folders) <br>
- [Naming convention for scripts](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-scripts) <br>
- [Data structure specification for output data](https://github.com/statistikZH/covid19monitoring/tree/master#data-structure-specification-for-output-data) <br>
- [Naming convention for output data](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for--output-data) <br>
- [Metadata for gitrepos folders](https://github.com/statistikZH/covid19monitoring/tree/master#metadata-for-gitrepos-folders) <br>

# Aim

The project aims to collect indicators for as many areas of social life affected by the COVID19 crisis as possible. The data will be made available as daily updated time series and in a standardised format. In terms of geography, the immediate focus is the Canton of Zurich; however, contributions from the rest of Switzerland are welcome. More on the project [here in german](https://statistikzh.github.io/covid19monitoring/). <br>

An overview of the data that has already been published can be found here:

**> Table** <br>

[![Dashboard of data updates](https://github.com/statistikZH/covid19monitoring/blob/master/dashboard/dashboard.png "Dashboard of data updates")](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/)

**> Visualization** <br>
A visualizsation of the data can be found [here](https://www.web.statistik.zh.ch/cms_vis/covid19_indikatoren/). <br> Observable notebook: https://observablehq.com/@mmznrstat/monitoring-covid19-effekt

# Gitrepos overview

Daily validation: https://docs.google.com/spreadsheets/d/15jE8I-PSsLh_Bd5hHxe8Ts4Ria7e58K7LcntKySxATo/edit#gid=0

| gitrepos  | responsible | validated (conforms to specs) |first published|
| ------------- | ------------- | ------------- | ------------- |
| [covid19monitoring_other_Weather](https://github.com/statistikZH/covid19monitoring_other_Weather)  | PM | 2020-03-24 |2020-03-31|
| [covid19monitoring_mobility_VBZHardbruecke](https://github.com/statistikZH/covid19monitoring_mobility_VBZHardbruecke) | PM | 2020-03-30 |2020-03-31|
| [covid19monitoring_mobility_ZaehlstellenMIVLVVelo](https://github.com/statistikZH/covid19monitoring_mobility_ZaehlstellenMIVLVVelo) | PM | 2020-04-06 |2020-04-07|
| [covid19monitoring_mobility_intervista](https://github.com/statistikZH/covid19monitoring_mobility_intervista)   | PM | 2020-03-25 |2020-03-31|
| [covid19monitoring_economy_SMI](https://github.com/statistikZH/covid19monitoring_economy_SMI)   | PM | 2020-03-26 |2020-03-31|
| [covid19monitoring_economy_FlightTraffic](https://github.com/statistikZH/covid19monitoring_economy_FlightTraffic)   | BS | 2020-03-26 |2020-03-31|
| [covid19monitoring_economy_SIX](https://github.com/statistikZH/covid19monitoring_economy_SIX)   | BS | 2020-03-30 |2020-03-31|
| [covid19monitoring_health_covid19cases](https://github.com/statistikZH/covid19monitoring_health_covid19cases)   | PM | 2020-04-01 |2020-04-02|
| [covid19monitoring_education_lvzmath](https://github.com/bildungsmonitoringZH/covid19_edu_lmvzmath)   | FI/KK | 2020-04-01 |2020-04-05|
| [covid19monitoring_education_mindmaps](https://github.com/bildungsmonitoringZH/covid19_edu_mindsteps)   | FI/KK | 2020-03-30 |2020-03-31|
| [covid19monitoring_economy_KOF](https://github.com/statistikZH/covid19monitoring_economy_KOF)   | PM | 2020-04-02 | 2020-04-02 |
| [covid19monitoring_mobility_SBBHauptbahnhof](https://github.com/statistikZH/covid19monitoring_mobility_SBBHauptbahnhof)  | KK | 2020-04-03 | 2020-04-03 |
| [covid19monitoring_social_SWISSIX](https://github.com/statistikZH/covid19monitoring_social_SWISSIX)  | KK | 2020-04-08 | 2020-04-08 |
| [covid19monitoring_education_KITA](https://bildungsmonitoringzh.github.io/covid19_edu_ajb)  | FI/KK | 2020-04-09 | 2020-04-09 |
| [covid19monitoring_economy_AWA](https://github.com/statistikZH/covid19monitoring_economy_AWA)  | BS | 2020-04-09 | 2020-04-09 |
| [covid19monitoring_mobility_VerkehrsmessstellenKantonZH](https://github.com/statistikZH/covid19monitoring_mobility_VerkehrsmessstellenKantonZH)  | GC/KK | 2020-04-16 | 2020-04-16 |
| [covid19monitoring_education_Lehrvertraege](https://github.com/bildungsmonitoringZH/covid19_edu_bista)  | FI/KK | 2020-04-16 | 2020-04-16 |
| [covid19monitoring_economy_Kreditkarten](https://github.com/statistikZH/covid19monitoring_economy_Kreditkarten)  | BS | 2020-04-20 | 2020-04-20 |
| [covid19monitoring_social_EnergieSwissgrid](https://github.com/statistikZH/covid19monitoring_social_EnergieSwissgrid)  | KK | 2020-04-22 | 2020-04-22 |
| [covid19monitoring_education_ILIAS](https://github.com/bildungsmonitoringZH/covid19_edu_phzh)  | FI/KK | 2020-04-22 | 2020-04-24 |

**> validated**: Data follows specification of our output table, inclusion in covid19monitoring is technically possible - the data flow works.

**> published:** Data is included in official published release.

<!---
# Our github procedure 

![](methodology.jpg)
--->

# Gitrepos without data protection

1. Create private repository <br>

2. As soon as Peter Moser gives his ok, transform your private repository into a public repository: 

> Settings -> Danger Zone -> Make this repository public

# Gitrepos with data protection

1. Create private repository  (named *+ _ + private*; see naming convention below) <br>

2. As soon as Peter Moser gives his ok, create a 2nd gitrepos that has the same name but without the *+ _ + private* string in the end. Here, you only copy the non-sensitive data from step 1. 

# Naming convention for gitrepos folders

## > gitrepos without data protection

covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase)<br>

> E.g.: covid19monitoring_other_Weather

## > gitrepos with data protection

covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase) **+ _ + private** <br>

> E.g.:covid19monitoring_other_Weather_private

# Naming convention for scripts

topic (start with uppercase) + _ +  NameOfDataset (CamelCase) <br>

> E.g.: Other_Weather

# Naming convention for  output data

topic (start with uppercase) + _ + NameOfDataset (CamelCase)

> E.g.: Other_Weather

# Data structure specification for output data

Each data output must contain the following variables in the defined standard format. Refer to the  [spreadsheet](https://docs.google.com/spreadsheets/d/e/2PACX-1vRAXE1Sahd8Gv5wiadUQrmyENCvsBhiCW1c1tGKEuXBtmPRXxvw4F-BmGDdjQcgQp7gz61qt6xw-JSk/pubhtml#) for variable definition and example.

<!---
# Template for GiHub Page

The template for our GitHub Page can be found [here](https://github.com/statistikZH/covid19monitoring/blob/master/Template_GitHubPages.Rmd). This template generates the following [GitHub Pages](https://statistikzh.github.io/covid19monitoring/). 
--->

# Metadata for gitrepos folders

**Grundlage** <br>
Short description of dataset.  <br>
*Kurze Beschreibung worum es im Datensatz geht.*  

**Methodisches** <br>
Methodological notes. Analyses are explained in more detail here. (e.g.  with reference to script).   <br>
*Methodische Anmerkungen. Analysen werden hier genauer erläutert (e.v. mit Bezug auf Skript).*  <br>

**Weitere Hinweise zur Variable**  <br>
Optional. Only necessary if the description of “variable_long” is not sufficient to describe the variable.   <br>
*Fakultativ. Nur verwenden wenn die Beschreibung von “variable_long”  fürs Verständnis der Variablen nicht ausreicht.* <br>

**Weitere Informationen** <br>
[Projektseite: "Gesellschafsmonitoring COVID19"](https://github.com/statistikZH/covid19monitoring) <br>
[Datenbezug](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/) <br>
[Visualisierung](https://www.web.statistik.zh.ch/cms_vis/covid19_indikatoren/) <br>


