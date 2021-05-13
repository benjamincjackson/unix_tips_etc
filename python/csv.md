Example use of csv.DictReader()

```
import csv

with open("sample_dates.csv", 'r', newline = '') as csv_in, \
    open("sample_dates.firstwave.covfiltered.csv", 'w', newline = '') as csv_out:

    reader = csv.DictReader(csv_in, delimiter=",", quotechar='\"', dialect = "unix")
    writer = csv.DictWriter(csv_out, fieldnames = ["sequence_name", "sample_date"], delimiter=",", quotechar='\"', quoting=csv.QUOTE_MINIMAL, dialect = "unix")
    writer.writeheader()

    for row in reader:
        writer.writerow({"sequence_name": row["sequence_name"], "sample_date": row["sample_date"]})
        # writer.writerow({x: row[x] for x in writer.fieldnames})
        ...
```

you can set the writer fieldnames to the reader fieldnames with `fieldnames = reader.fieldnames`
