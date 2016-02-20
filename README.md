# reporter
A delightful solution to automate report creation

###Usage
```
#Must pass name of report to initialize method
report = ReportHandler.new("report_name.rpt")
repot.build([{name: "Google Report", url: "google.co.uk", admin: "Toph"}], "Report Body", jsonify: false)
```

Auto add's date/time.

###jsonify
Option to pass jsonify true or false. Puts the report contents into json format.
