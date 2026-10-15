# 2.3 Billion in Sales, One Dashboard: A Tableau Deep Dive

An interactive Tableau dashboard that turns 2.3B in retail sales into clear answers on products, channels, regions and profit.
Built with joined sales and dimension tables and filters for channel, class, subcategory and continent.

## Tools Used

| Tool | How it was used |
|---|---|
| **Tableau** | Connecting and joining the data, building the charts and dashboard, and adding filters and KPIs |
| **Microsoft Excel** | Source data files (sales and lookup tables), and cleaning the data before loading it into Tableau |

## Dataset

| File | Description |
|---|---|
| Sales Data (Sales 2007, Sales 2008) | Transaction-level sales: keys (date, channel, store, product, promotion, geography), unit cost and price, sales quantity and amount, discounts, returns and total cost |
| DIM Product | Product details (name, class, brand, colour, unit cost and price) |
| DIM Product Sub Category | Product subcategories |
| DIM Product Category | Product categories |
| DIM Channel | Sales channels: Store, Online, Catalog, Reseller |
| DIM Geography | City, state, country and continent |
| DIM Store | Store details |

## Excel: Data Cleaning

Before building the dashboard, I cleaned the raw sales data in Excel.

**Steps taken**
- **Removed duplicates:** deleted repeated records so each sale is counted once
- **Converted to Excel Tables:** made the data easier to filter, sort and manage
- **Cleared formats:** removed inconsistent formatting so the data loads cleanly
- **Identified issues:** used ChatGPT to help spot what was wrong in the data
- **Automated the cleaning:** used VBA to clean whole rows [add what the code does]
- **Combined datasets:** merged the sales data with the product tables (product, category, subcategory) [add how]

**Result** (Sales 2007 and Sales 2008 only)
- Rows before cleaning: [current count − 2]
- Rows after cleaning: [current count]

**Files**
- Original dataset: [Link to file]
- Cleaned dataset: [Link to file]
- VBA code: [Link to file]

## 3. Tableau: Data Visualization and Dashboard

### Data model

The sales data is connected to the dimension tables. Product, subcategory and category are chained together to form a product hierarchy.

- Sales → DIM Channel
- Sales → DIM Geography
- Sales → DIM Store
- Sales → DIM Product → DIM Product Sub Category → DIM Product Category

Join type used: _[inner / left / right / full]

![Tableau data model][Link to file]

### Worksheets and charts

| Chart | What it shows |
|---|---|
| Sales vs Sales Quantity | Sales amount and sales quantity by product |
| Sales Trend Across Class | Sales over time for the Deluxe, Economy and Regular product classes |
| Running Total of Profit | How profit builds up over time |
| Sales by Continent (donut charts) | Share of Store, Online, Reseller and Catalog sales in Asia, Europe and North America |
| Channel bar chart | Channel comparison for the selected continent |

### Formatting and theme

A green colour theme is used across all charts. KPIs sit in a header strip at the top of the dashboard.  
_[Add fonts, chart-formatting choices and any other design decisions.]_

### Dashboard

**KPIs**

| Sales Amount | Sales Quantity | Profit Margin | Profit | Total Cost |
|---|---|---|---|---|
| 2,301,662,971 | 8,743,836 | 58% | 1,329,922,964 | 971,740,007 |

**Filters:** Channel, Class, Product Subcategory, Continent

![Sales dashboard][Link to file]

### Key insights

1. Strong, healthy business. Revenue is 2,301,662,971, with 8,743,836 units sold and a profit of 1,329,922,964 against a total cost of 971,740,007. The 58% profit margin indicates strong profitability.

2. Store leads, and North America dominates. North America generates ~812M in profit, ahead of Europe (~265M) and Asia (~254M). Catalog sales exist only in North America, suggesting potential for expansion into other regions.

3. Growth opportunities. Online and Reseller are smaller channels across continents. Expanding them, particularly in Asia and Europe, could diversify revenue and reduce dependence on Store sales. Further analysis should confirm their profitability and growth potential.

4. Seasonality. November and December appear to be the strongest months across all classes [verify]. If confirmed, advance inventory planning and targeted promotions could help maximise seasonal sales.

5. Product class trends. Economy sales increase over time, while Regular declines and Deluxe remains the lowest-performing class. This may indicate changing customer preferences, making Regular's declining performance worth investigating.

6. Value vs. volume. Average revenue per unit is approximately 263. Comparing product-level revenue and quantity can identify high-value products versus volume sellers, helping refine pricing and sales strategies.

7. Profit trends. Cumulative profit rises steadily, indicating positive overall profitability. However, monthly profit analysis is needed to identify fluctuations and weaker periods.

## Author

Guneet Kaur Sethi


