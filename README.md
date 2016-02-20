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

###Example (With Jsonify)
```
[{
{"name":"Web Status Check"},
{"siteurl":"google.co.uk"},
{"Date_Time":"2016-02-20 15:57:17 +0000"},
{"Report_Body":"some sample text"}
}]
```

###Example (Without Jsonify)
```
name: Web Status Check
siteurl: google.co.uk
Date/Time: 2016-02-20 15:58:55 +0000


Report Body:
some sample text
```


