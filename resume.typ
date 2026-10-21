// Résumé source. Build with Typst and the XCharter font (CTAN: fonts/xcharter):
//   typst compile --font-path <dir with XCharter-*.otf> resume.typ resume.pdf
// Figures match the portfolio: 2+ hrs + $50/day (scheduling, which runs every
// day, so 365 days), 1 hr/day + $1,500/month (budget, a 260-day working year).

#set document(title: "Hari Prasath Ulaganathan - CV", author: "Hari Prasath Ulaganathan")
#set page(paper: "us-letter", margin: (x: 0.6in, y: 0.45in))
#set text(font: "XCharter", size: 10pt, lang: "en")
#set par(leading: 0.5em, spacing: 0.78em)
#set list(indent: 0.1em, body-indent: 0.45em, spacing: 0.7em, marker: [•])
#show link: it => it

#show heading.where(level: 2): it => block(above: 1em, below: 0.62em, width: 100%)[
  #text(size: 12pt, weight: "bold", it.body)
  #v(-0.72em)
  #line(length: 100%, stroke: 0.6pt)
]

// An entry line: bold title, detail, and dates pushed to the right margin.
#let entry(title, detail, dates) = block(above: 0.95em, below: 0.6em)[*#title*#detail #h(1fr) #dates]

#align(center)[
  #text(size: 22pt)[Hari Prasath Ulaganathan]
  #v(0.2em)
  Data Analyst | Business Intelligence, Reporting & SQL Analytics
  #v(0.25em)
  Silverthorne, CO #h(0.5em)|#h(0.5em)
  #link("mailto:hari8059@gmail.com")[hari8059\@gmail.com] #h(0.5em)|#h(0.5em)
  #link("https://hari-94.github.io")[hari-94.github.io] #h(0.5em)|#h(0.5em)
  #link("https://github.com/hari-94")[github.com/hari-94]
]

== Summary

Data Analyst with 4+ years of professional experience spanning data analytics, business intelligence, and reporting, including SQL-based data analysis, dashboard development (Tableau, Power BI), and data quality validation across relational databases and cloud data platforms (Snowflake, Databricks, Azure). Skilled in ETL and data warehousing workflows, transforming raw source data into layered dbt models, building KPI and trend-analysis dashboards, and partnering with cross-functional stakeholders on requirements gathering, ad-hoc analysis, and documentation. Most recently built internal tools that remove about 990 hours of manual work and \$36,250 in cost a year. Open to relocation; portfolio and case studies at #link("https://hari-94.github.io")[hari-94.github.io].

== Skills

*Data Analysis & SQL:* SQL, PL/SQL, Python, R, MySQL, PostgreSQL, Microsoft SQL Server, Data Analysis, Data Validation, Data Profiling, Ad-hoc Analysis, Trend Analysis

*BI & Reporting:* Tableau, Tableau Online, Power BI, Qlik (QlikView, Qlik Sense), Excel (Advanced Functions, Pivot Tables, Power Query, Reporting), Dashboard Development, KPI Reporting, Metric Definitions, Business Intelligence, PowerPoint

*Data Engineering & Cloud:* dbt, Snowflake, Airflow, Looker, Azure Data Factory, Azure Databricks, Azure Data Lake, AWS, ETL, Data Warehousing, Relational Databases, Cloud Data Platforms

*Analytics & Data Science:* Pandas, NumPy, SciPy, Scikit-Learn, Statsmodels, regression, time series, NLP, Matplotlib, Seaborn

*Development & Tools:* Streamlit, Supabase, Git/GitHub, REST APIs, ReportLab, openpyxl, Google OR-Tools, Power Automate, SharePoint, LLM Agents, MCP

*Professional:* Stakeholder Communication, Requirements Gathering, Documentation, Project Management, Proposal Writing

== Experience

#entry[Internal Tools Developer (Housekeeping Operations)][, Grand Colorado on Peak 8][Nov 2025 – present]
- Designed and built a housekeeping scheduling engine in Python (custom bin-packing with a Google OR-Tools solver) and automated it end to end with Power Automate, a 5 AM build and HotSOS and Teams delivery: no manual steps, at least 2 hours and about \$50 saved a day (\~\$18,000 a year), used by 41 colleagues.
- Added a three-week staffing forecast built from live bookings, plus per-person performance and room-timing reports, giving managers headcount and productivity data they did not have before.
- Re-engineered inspector group assignment logic to be sequential by floor through data analysis of travel patterns, reducing unnecessary floor-to-floor movement during quality inspections.
- Built a full-stack budget management application (Python, Streamlit, Supabase/PostgreSQL) on a relational database, replacing an hour a day of manual spreadsheet entry and enforcing data quality through database-level duplicate-expense validation.
- Developed a live KPI and budgeting dashboard with month-over-month trend analysis, variance tracking, and automated over-budget alerts that helped curtail expenses by at least \$1,500 a month (\~\$18,000 a year), plus automated PDF reporting (ReportLab) for stakeholders.
- Built a Python/openpyxl ETL pipeline that cleaned and transformed an 85-sheet, multi-year Excel labor-scheduling workbook into 30,401 structured shift records across 181 employees, then performed quantitative trend, clustering, and workload-balance analysis to inform scheduling policy.
- Owned the full deployment lifecycle (GitHub, Streamlit Cloud), performing data validation and troubleshooting to keep analytics and reporting tools reliably in production.

#entry[Solutions Analyst][, ThoughtSpot][Aug 2022 – June 2023]
- Collaborated with cross-functional stakeholders to gather business requirements and translate them into KPI and metric definitions and report specifications driving dashboard development.
- Delivered business intelligence dashboards on schedule, enabling data-driven decision-making and self-service analytics for client teams.
- Wrote SQL queries against Snowflake data warehouse tables to support data analysis, ad-hoc reporting requests, and dashboard metric development.
- Authored data-informed business proposals that secured new client engagements, and mentored team members on SQL-based data handling, data quality investigation, and dashboard development best practices.

#block(above: 0.9em, below: 0.55em)[*ThoughtSpot ETL project — delivery analytics pipeline* #h(0.3em) _Databricks · Snowflake · dbt · Python · SQL_]
Replaced ad-hoc, untested SQL scripts with a layered, tested ETL pipeline feeding the delivery dashboard.
- *Raw (ingestion):* wrote Python scripts on Databricks to extract four operational sources (projects, resources, resource allocations and support tickets), cleanse them and load them into raw tables in Snowflake.
- *Staging (dbt views):* one model per source that only cleans, casting types, normalising free-typed status values to a controlled vocabulary and converting Y/N flags to booleans, with no business logic.
- *Intermediate (ephemeral dbt models):* shared business rules defined once, pricing each allocation at the resource’s rate and measuring ticket resolution hours against P1/P2/P3 SLA targets kept in a macro and project variables.
- *Marts (dbt tables):* conformed project and resource dimensions, allocation and ticket fact tables at a declared grain, and a pre-aggregated project-health table the dashboard reads directly, so the BI layer does no arithmetic of its own.
- *Quality and automation:* 51 data tests (uniqueness, referential integrity, accepted values, ranges) and two singular tests fail the build before bad data reaches a dashboard; Python scripts on the marts automate recurring KPI reports.

#entry[PMO Senior Executive][, CMA-CGM][June 2020 – Nov 2021]
- Published weekly and monthly KPI and project status reports, and built business intelligence dashboards tracking resource-allocation and delivery performance metrics for the IT infrastructure team.
- Performed trend analysis on project and resource reporting data to proactively flag risks and showstoppers, supporting faster stakeholder-driven issue resolution.
- Managed contractor invoicing, SharePoint-based reporting and documentation administration, and preliminary hiring interviews for team vacancies.

#entry[Management Trainee, Risk Management][, CMA-CGM][July 2019 – June 2020]
- Supported ad-hoc analysis, project reporting, and resource/asset tracking for leadership requests, contributing to risk administration and business reporting.

== Projects

// A project line: bold name, italic stack, and the repo pushed to the right margin.
#let project(name, stack, repo) = block(above: 0.95em, below: 0.5em)[*#name* #h(0.3em) #emph(stack) #h(1fr) #link("https://github.com/hari-94/" + repo.text)[github.com/hari-94/#repo]]

#block(above: 1em, below: 0.5em)[*AI Job-Search Agent with WhatsApp Delivery* #h(0.3em) _LLM agent · MCP · Python · REST API · Task Scheduler_]
- Designed an LLM agent that runs 10+ nationwide searches each morning through Indeed and ZipRecruiter MCP connectors, screens postings against written rules (experience, pay, recency, clearance), drops repeats and sends ranked matches with a fit-and-gap note: 40 vetted matches in its first six days.
- Built the delivery layer in Python: 186 scheduled reminders sent every 5 minutes by Windows Task Scheduler after measuring GitHub Actions cron running hours late, and traced intermittent 403s to the gateway’s command-injection filter, fixing them with a workaround proven by a no-send preflight of every message.

#block(above: 0.95em, below: 0.5em)[*Self-Service Business Intelligence Enablement — CMA-CGM* #h(0.3em) _Looker · Snowflake · SQL_]
- Built LookML Explores and metric definitions over curated Snowflake tables so PMO and infrastructure teams could self-serve ticketing and resource KPIs, and profiled source data to fix upstream quality issues.

#project[Stock Data Pipeline and Strategy Backtest][Python · Pandas · Snowflake][ETL]
- ETL from the Yahoo Finance API into Snowflake with a 7-day moving average computed in Pandas, the table created on first run, a suspended warehouse resumed automatically and credentials kept out of code.
- Backtested a moving-average crossover strategy against buy-and-hold on six stocks (#link("https://github.com/hari-94/Golden-Crossover-Analysis")[notebook]): buy-and-hold won on five of six, NVDA the exception at 21,349% against 18,864%.

#project[BI Dashboards][Power BI · Tableau · Snowflake · DirectQuery][PowerBI-Dashboard]
- Power BI star-schema mart over Snowflake’s TPC-H data via DirectQuery, comparing spending and savings by country with Sankey and waterfall views, plus a #link("https://public.tableau.com/views/Sales_17411241874230/Dashboard1")[Tableau Public] sales dashboard with year-over-year KPIs.

#block(above: 1em, below: 0.5em)[*Case studies* — scheduling engine used by 41 colleagues, budget tracker, dbt warehouse: #link("https://hari-94.github.io")[hari-94.github.io]]

== Education

#entry[Colorado State University][, MS in Management and Computer Information Systems (MCIS)][Aug 2023 – Dec 2024]
#entry[Great Learning][, PG in Data Science and Engineering][June 2021 – May 2022]
#entry[SRM Institute of Science and Technology, Chennai][, MBA in Systems and Marketing][2017 – 2019]
#entry[Rajiv Gandhi College of Engineering and Technology][, BE in Computer Science][2012 – 2016]

== Certifications

- Business Analyst Certification — ThoughtSpot (Mar 2025)
- Databricks Academy Accreditation — Lakehouse Fundamentals (Dec 2024); Generative AI Fundamentals (Feb 2025)
