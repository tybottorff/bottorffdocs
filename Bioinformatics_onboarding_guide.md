# Bioinformatics Onboarding Resources:

Last Updated Sept. 5th, 2023 by Erin Witkop

## 1.	Data servers and data/code storage:

- Isilon server: smb://isilon.brivmrc.org/Bioinformatics/ 
    - Houses Illumina raw and processed data
    - 10X single cell data is only available here
    - Projects named by data and then flowcell ID 
    - Houses older data that was not moved onto apird server
- Apird: 
    - R package for loading non-10X single cell sequencing data, bulk data, annotation data and library info data
    - Follow download instructions here: https://github.com/BenaroyaResearch/apird#another-note-on-user-authentication 
- Chaussabel server: smb://BRIVMRC.ORG/SystemsImmunology/Chaussabel/Projects
	
- BOX Data storage website: https://bri.app.box.com/folder/0 

- Code Storage Github: https://github.com/BenaroyaResearch 

- BAP Bioinformatics Analysis Server: https://bap.benaroyaresearch.org 
    - This is a shiny app used to run bulk RNAseq analysis and TCR analysis in a GUI interface. Useful for short simple comparisons, but not full bioinformatics analysis 

## 2.	Project Info Databases:

- LabDB study metabrowser: https://labdb.benaroyaresearch.org 
    - Houses project info, links to code and data, and monday meeting bioinformatics notes

- Genomics Project tracking website: https://gcq.benaroyaresearch.org/project/list?projectType= 

- Literature tracking: https://litdb.benaroyaresearch.org 
    - Keeps track of BRI and other center databases

- BRI Sample Repository: https://surveys.benaroyaresearch.org 
    - Contains information about the experiment

- Project Info list: Located at this path `/Volumes/Bioinformatics/pipeline/` on isilon are `lib_list_######.txt` and `project_list_######.txt` files that list this information. It is updated when new projects are processed. 

## 3.	Data Processing: External servers for data processing

Detailed information on computing resources can be found here: https://github.com/BenaroyaResearch/bioinformaticsDocs/blob/main/ressources.md

-	Remote desktop website (for use if you don’t have a BRI computer and are offsite): rdp.benaroyaresearch.org

Notes from Hannah: 
- srvbiometal01 is now srv-hpc-2, srv-hpc-2 is primarily designed to allow for pipeline development.
- srv-hpc-1 is a dedicated pipeline machine.  There is also a server for 10X processing, but its name currently escapes me. 
- posit and srv-rstudio-01 are where I would go to run R in a high performance environment. Posit is more designed for non-bfx group members, though. There are 10 building licenses. There are never 10 people who need them but shifting them does require some IT effort, so if you want to use posit, you'll need to ask Brian a bit in advance. I've found that posit's default instance size is rather small and just pick a large instance for ease of use. 
- stg-bap-01 and srv-bap-01 are for shiny app hosting (and are production and staging, respectively). We also have a shinyappsio account. Apps on srv-bap-01 are only available over the VPN, so shinyappsio is the way to go if you want to share something externally. shinyappsio also has easy functionality for restricting access to a set of users. If you ever want to put something on srv-bap-01, reach out to Stephan or me first as this hosts the Bioinformatics Analysis Portal so we want to be a little careful about changing things here. 

## 4.	Communications and meeting resources:

-	2023 Schedule for when we present at meetings : [https://bri.app.box.com/file/896665390267?s=snau46n6m1jbho6ih8ho9kv4wi2kji1g ](https://bri.app.box.com/file/1068066377051?s=68w7dx09wgmrbzy4xo9y76bxfgv075x5)
-	Slack channel: Benaroya Research Institute
-	Email for IT resources: helpdesk@benaroyaresearch.org
-	IT helpdesk on confluence with how-to’s about BRI : https://confluence.benaroyaresearch.org/display/HD  

## 5. HR related resources:

-	Benefits https://benefits.benaroyaresearch.org
-	Timesheets, paystubs, entering benefits and other information: https://ew42.ultipro.com/default.aspx 
-	BRInet sharepoint with other information: https://benaroyaresearch.sharepoint.com 
-	Facilities help: Mike Rego mrego@benaroyaresearch.org 
-	Systems Immunology team assistant: Brenda Norris BNorris@benaroyaresearch.org 

## 6. Weekly meetings: 

-	Monday 9:15: Bioinformatics Startup Meeting 
    - Calendar invite from Charlie
-	Monday 10:00am Systems Immunology Operations meeting
    - Calendar invites from Vivan Gersuk
-	Every other Tuesday: 10am Code Review meeting
    - Calendar invites from Charlie
-	Wednesday 12:30: Translational meeting (usually suspended during summer)
    - Links sent via email by Tina Polintan
-	Thursday 9:30: Work in Progress (usually suspended during summer)
    - Links sent by Tina Polintan
-	Thursday 1pm: Bioinformatics team meeting
    - Calendar Invites sent by Brenda Norris
    - Schedule at:[ https://bri.app.box.com/file/896665390267?s=snau46n6m1jbho6ih8ho9kv4wi2kji1g ](https://bri.app.box.com/file/1068066377051?s=68w7dx09wgmrbzy4xo9y76bxfgv075x5)

