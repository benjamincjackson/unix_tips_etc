Example use of csv.DictReader()

```
import csv

with open("sample_dates.csv", 'r', newline = '') as csv_in, \
    open("sample_dates.firstwave.covfiltered.csv", 'w', newline = '') as fw_csv_out:

    reader = csv.DictReader(csv_in, delimiter=",", quotechar='\"', dialect = "unix")
    writer_fw = csv.DictWriter(fw_csv_out, fieldnames = ["sequence_name", "sample_date"], delimiter=",", quotechar='\"', quoting=csv.QUOTE_MINIMAL, dialect = "unix")
    writer_fw.writeheader()

    for row in reader:
        writer_fw.writerow(row)
        ...
```
