

# 📊 SmileGuru Web Analytics Dashboard Project

## 🧠 Project Summary

This project presents a comprehensive data analysis and dashboard report for **SmileGuru**, a dental services website, with a focus on understanding user engagement, device usage patterns, event distribution, and content interaction. It leverages data engineering and data visualization techniques to drive meaningful insights that inform business decisions.

---

## 🗂️ Project Structure

```bash
📁 SmileGuru-Analytics/
│
├── 📄 README.md               <- Project documentation (this file)
├── 📂 data/
│   ├── Smile_Guru_ga4_data.csv         <- GA4 Web Analytics Data
│   └── smile_guru.sql                  <- SQL queries for preprocessing and transformation
│
├── 📂 dashboard/
│   └── Smile guru.pbix                 <- Power BI Dashboard file
│
├── 📂 presentation/
│   └── Smile guru report.pptx         <- Project summary presentation
```

---

## 🎯 Objective

To analyze user behavior on the SmileGuru website using data-driven methods and provide recommendations to enhance user experience and website performance.

---

## 🛠️ Tools & Technologies

- **Power BI** – Interactive visual dashboard creation
- **MySQL Workbench** – SQL-based data preparation and transformation
- **Python (optional)** – For potential advanced modeling
- **Google Analytics 4 (GA4)** – Source of user event data

---

## 📥 Data Overview

- **Source**: Google Analytics 4 (exported to CSV)
- **Rows**: 1,059
- **Key Columns**:
  - `event_timestamp`, `event_date`, `event_name`
  - `user_pseudo_id`, `device_category`, `device_os`
  - `page_location`

---

## 🧹 Data Cleaning & Transformation

Data was first imported to MySQL Workbench with all columns as `TEXT`, followed by:

- Conversion to appropriate data types (`DATE`, `VARCHAR`, `BIGINT`)
- Handling missing values:
  - Proportional imputation for `event_name`, `device_category`, `device_os`, `event_timestamp`
  - Replaced null `user_pseudo_id` with `'unknown'`
  - Defaulted missing `page_location` to homepage
- Derived columns:
  - `ID` (Unique Identifier)
  - `page` (extracted from URL path)

---

## 📊 Dashboard Highlights (Power BI)

### 1. **Device & OS Usage**
- **Top OS**: iOS (31.16%), Android (30.78%), Windows (30.59%)
- **Device Category**: Desktop (32.39%), Mobile (31.35%), Tablet (31.07%), Smartwatch (5.19%)

### 2. **Event Distribution**
- **Top Actions**: Form Submissions, Page Views, Scroll Events, Clicks

### 3. **Page Popularity**
- **Top Pages**: Main Page, About, Root Canal, Contact, Teeth Whitening

### 4. **Click & Scroll Events**
- Most engagement on **Main**, **About**, and **Contact** pages

### 5. **User Engagement Insights**
- **Total Unique Users**: 1,053
- **Most Active User ID**: `982,749.502`
- **Most Form Submissions**: About Page
- **Next Likely Event After Page View**: Form Submission

---

## 📈 Insights & Recommendations

- Optimize for **Mobile** and **Desktop** platforms, which account for over 63% of traffic
- Focus on improving **form conversion** and **user journey flow**
- Enhance **service-related pages** with more engaging content
- Consider implementing a **funnel analysis** to identify drop-offs after page views

---

## 📢 Conclusion

The analysis provided actionable insights into how users interact with the SmileGuru website. The dashboards and reports enable stakeholders to optimize digital strategies, improve engagement, and drive more conversions.

---

## 📎 Files Included

| File | Description |
|------|-------------|
| `Smile_Guru_ga4_data.csv` | data used for analysis |
| `smile_guru.sql` | SQL preprocessing script |
| `Smile guru.pbix` | Power BI dashboard |
| `Smile guru report.pptx` | Project presentation deck |

