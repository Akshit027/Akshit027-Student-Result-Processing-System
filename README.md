# 🎓 Student Result Processing System

A MySQL-based system designed to manage student grades, calculate GPAs, generate semester-wise results, and produce rank lists using SQL queries and database triggers.

## 🧩 Objective

To automate student result management and performance analysis for academic institutions.

## 🛠️ Tools & Technologies

- MySQL / phpMyAdmin / MySQL Workbench
- SQL Triggers & Window Functions
- CSV Export
- Optional Frontend: PHP, Bootstrap

## 📐 Key Components

- **Students**: Student records
- **Courses**: Course details with credit info
- **Semesters**: Academic term information
- **Grades**: Marks, grade, GPA per course
- **GradeScale**: Grade-to-GPA mapping table

## 📊 Core Features

- GPA calculation based on course credits and grades
- Trigger to auto-calculate GPA before grade insert
- Pass/Fail report per student
- Semester-wise GPA summary
- Rank list generation using SQL window functions
- CSV export of semester result summary

## 🚀 Getting Started

1. Clone this repo.
2. Import the `.sql` schema into MySQL.
3. Insert sample data or use your own.
4. Run queries from the `/sql/queries.sql` file.

## 📁 Folder Structure

📦 student-result-system/
├── sql/
│ ├── schema.sql
│ ├── sample_data.sql
│ ├── triggers.sql
│ └── queries.sql
├── README.md


## 📌 Future Enhancements

- Web dashboard to display results
- Authentication for admin/student roles
- API for external integration

## 👨‍💻 Author

**Akshit Jaiswal**    

---

## 📄 License

This project is licensed under the MIT License.

