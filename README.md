# CreswaveCodeTest

### REQUIREMENTS 
- JasperSoft Studio community edition 6.21.2
- MySQL Community Server - GPL 8.0.25 
- MySQL JDBC driver - mysql-connector-java-8.0.28

### SETUP INSTRUCTIONS  
1. Run the SQL script **EmployeeReportDB** in the project workspace folder `resources/lib/`. This sets up the MySQL database, tables and sample records.
2. Launch JasperSoft Studio and start working on a new blank workspace.
3. Delete the empty **MyReports** project from the new workspace.
4. Go to `File > import..` on the menu bar.
5. Select `General > Existing Projects into Workspace`. Browse and find the workspace you want to import the projects from. In this case, **JasperReportsCodeTest** folder.
6. Check the option `copy projects into workspace` so not to modify the original ones.
7. After the project has loaded into workspace, select the file **EmployeeReportDataAdapter.jrdax** and set your JDBC credentials. Confirm the JDBC driver is installed, by clicking on `Driver Classpath` at the bottom of the wizard. If not present, click `Add` and select the jar file located in `resources/lib/` folder, in the project workspace. Test the connection and if successful click `Finish`.
8. On the project workspace select the file **EmployeeReport.jrxml**. While on *design mode*, select `DataSet and Query editor dialog` icon at the top or by right clicking on *EmployeeReport* in the outline window on the left. Select your Data Adapter from the dropdown; in this case, **EmployeeReportDB**.
9. Run the report in the *preview mode* and input parameters for filtering the data e.g. **departmentParam = IT** ,**startSalaryParam = 500** and **endSalaryParam = 200000**.
10. The outputs of the report (PDF, Word, Excel) are attached in the folder `resources/out/` on the project workspace.
