// Résumé source. Build with Typst and the XCharter font (CTAN: fonts/xcharter):
//   typst compile --font-path <dir with XCharter-*.otf> resume.typ resume.pdf
// Figures match the portfolio: 1.3 hrs + $60/day (scheduling), 1 hr/day +
// $1,500/month (budget), annualised on a 260-day working year.

#set document(title: "Hari Prasath Ulaganathan - CV", author: "Hari Prasath Ulaganathan")
#set page(paper: "us-letter", margin: (x: 0.6in, y: 0.5in))
#set text(font: "XCharter", size: 10pt, lang: "en")
#set par(leading: 0.52em, spacing: 0.85em)
#set list(indent: 0.1em, body-indent: 0.45em, spacing: 0.82em, marker: [•])
#show link: it => it

#show heading.where(level: 2): it => block(above: 1em, below: 0.62em, width: 100%)[
  #text(size: 12pt, weight: "bold", it.body)
  #v(-0.72em)
  #line(length: 100%, stroke: 0.6pt)
]

// An entry line: bold title, detail, and dates pushed to the right margin.
#let entry(title, detail, dates) = block(above: 1.05em, below: 0.62em)[*#title*#detail #h(1fr) #dates]

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

Data Analyst with 4+ years of professional experience spanning data analytics, business intelligence, and reporting, including SQL-based data analysis, dashboard development (Tableau, Power BI), and data quality validation across relational databases and cloud data platforms (Snowflake, Azure). Skilled in ETL and data warehousing workflows, transforming raw source data into layered dbt models, building KPI and trend-analysis dashboards, and partnering with cross-functional stakeholders on requirements gathering, ad-hoc analysis, and documentation. Most recently built internal tools that remove about 598 hours of manual work and \$33,600 in cost a year. Open to relocation; portfolio and case studies at #link("https://hari-94.github.io")[hari-94.github.io].

== Skills

*Data Analysis & SQL:* SQL, PL/SQL, Python, R, MySQL, PostgreSQL, Microsoft SQL Server, Data Analysis, Data Validation, Data Profiling, Ad-hoc Analysis, Trend Analysis

*BI & Reporting:* Tableau, Tableau Online, Power BI, Qlik (QlikView, Qlik Sense), Excel (Advanced Functions, Pivot Tables, Power Query, Reporting), Dashboard Development, KPI Reporting, Metric Definitions, Business Intelligence, PowerPoint

*Data Engineering & Cloud:* dbt, Snowflake, Airflow, Looker, Azure Data Factory, Azure Databricks, Azure Data Lake, AWS, ETL, Data Warehousing, Relational Databases, Cloud Data Platforms

*Analytics & Data Science:* Pandas, NumPy, SciPy, Scikit-Learn, Statsmodels, regression modeling, time series, NLP, Matplotlib, Seaborn

*Development & Tools:* Streamlit, Supabase, Git/GitHub, REST APIs, ReportLab, openpyxl

*Professional:* Stakeholder Communication, Requirements Gathering, Documentation, Project Management, Proposal Writing

== Experience

#entry[Internal Tools Developer (Housekeeping Operations)][, Grand Colorado on Peak 8][Nov 2025 – present]
- Designed and built a scheduling automation tool for housekeeping operations, implementing custom tight-packing and greedy-packing algorithms to assign Full Clean and Daily Service rooms across staff, cutting 1.3 hours of manual scheduling and about \$60 in operating cost a day (\~\$15,600 a year).
- Re-engineered inspector group assignment logic to be sequential by floor through data analysis of travel patterns, reducing unnecessary floor-to-floor movement during quality inspections.
- Built a full-stack budget management application (Python, Streamlit, Supabase/PostgreSQL) on a relational database, replacing an hour a day of manual spreadsheet entry and enforcing data quality through database-level duplicate-expense validation.
- Developed a live KPI and budgeting dashboard with month-over-month trend analysis, variance tracking, and automated over-budget alerts that helped curtail expenses by at least \$1,500 a month (\~\$18,000 a year), plus automated PDF reporting (ReportLab) for stakeholders.
- Built a Python/openpyxl ETL pipeline that cleaned and transformed an 85-sheet, multi-year Excel labor-scheduling workbook into 30,401 structured shift records across 181 employees, then performed quantitative trend, clustering, and workload-balance analysis to inform scheduling policy.
- Owned the full deployment lifecycle (GitHub, Streamlit Cloud), performing data validation and troubleshooting to keep analytics and reporting tools reliably in production.

#entry[Solutions Analyst][, ThoughtSpot][Aug 2022 – June 2023]
- Collaborated with cross-functional stakeholders to gather business requirements and translate them into KPI and metric definitions and report specifications driving dashboard development.
- Delivered business intelligence dashboards on schedule, enabling data-driven decision-making and self-service analytics for client teams.
- Wrote SQL queries against Snowflake data warehouse tables to support data analysis, ad-hoc reporting requests, and dashboard metric development.
- Modeled raw source data into layered dbt models (staging, intermediate, and mart) on Snowflake, replacing ad-hoc SQL scripts with version-controlled, documented, and testable ETL transformations covered by 51+ data tests that embedded data validation into the BI reporting workflow.
- Automated recurring KPI and performance report generation in Python against curated Snowflake marts, streamlining business intelligence reporting and removing manual report assembly from the analytics workflow.
- Authored data-informed business proposals that secured new client engagements, and mentored team members on SQL-based data handling, data quality investigation, and dashboard development best practices.

#entry[PMO Senior Executive][, CMA-CGM][June 2020 – Nov 2021]
- Published weekly and monthly KPI and project status reports, and built business intelligence dashboards tracking resource-allocation and delivery performance metrics for the IT infrastructure team.
- Performed trend analysis on project and resource reporting data to proactively flag risks and showstoppers, supporting faster stakeholder-driven issue resolution.
- Managed contractor invoicing, SharePoint-based reporting and documentation administration, and preliminary hiring interviews for team vacancies.

#entry[Management Trainee, Risk Management][, CMA-CGM][July 2019 – June 2020]
- Supported ad-hoc analysis, project reporting, and resource/asset tracking for leadership requests, contributing to risk administration and business reporting.

== Projects

#block(above: 1em, below: 0.5em)[*Self-Service Business Intelligence Enablement — CMA-CGM*]
Looker, Snowflake, SQL
- Built LookML-defined Explores and metric definitions over curated Snowflake data warehouse tables so PMO and infrastructure teams could self-serve ticketing and resource-allocation KPI reporting without analyst involvement.
- Performed data validation and data profiling to trace and resolve upstream data-quality discrepancies in Snowflake source tables, keeping Looker business intelligence dashboard metrics consistent with source-of-truth records.

#block(above: 1.1em, below: 0.5em)[*Code and case studies* — #link("https://hari-94.github.io")[hari-94.github.io] · #link("https://github.com/hari-94")[github.com/hari-94]]
Scheduling engine (BGV-Scheduling), budget tracker (gc8-budget-tracker) and a layered dbt warehouse (dbt_TS), each with an animated walkthrough of how it works.

== Education

#entry[Colorado State University][, MS in Management and Computer Information Systems (MCIS)][Aug 2023 – Dec 2024]
#entry[Great Learning][, PG in Data Science and Engineering][June 2021 – May 2022]
#entry[SRM Institute of Science and Technology, Chennai][, MBA in Systems and Marketing][2017 – 2019]
#entry[Rajiv Gandhi College of Engineering and Technology][, BE in Computer Science][2012 – 2016]

== Certifications

- Business Analyst Certification — ThoughtSpot (Mar 2025)
- Databricks Academy Accreditation — Lakehouse Fundamentals (Dec 2024); Generative AI Fundamentals (Feb 2025)
- Job Simulations via Forage — Data Analytics, Deloitte Australia; Digital Intelligence, PwC Switzerland (Feb 2025)
