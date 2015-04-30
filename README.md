# UK TIMES ACRONYMS

This is the source code to a simple application that makes it quick to look up all the codes and acronyms that are used in the 'UK TIMES' energy system model.

See https://decc.github.io/uk-times-acronyms for an online version.

## Using the list from Excel

You can download an [example excel file](https://decc.github.io/uk-times-acronyms/example.xlsx).

To create one from scratch:

### On PC Excel 

1. Download [this query file](https://decc.github.io/uk-times-acronyms/uk_times_acronyms.iqy)
2. In Excel, create a new, blank, worksheet
3. choose the 'Data' ribbon, 
4. choose 'Connections'
5. choose 'Add...'
6. choose 'Browse for more'
7. choose the downloaded query file (uk_times_acronyms.iqy) and click 'Open'
8. click Close
9. on the Data ribbon, choose 'Existing Connections'
10. Select 'uk_times_acronyms'
11. Click 'Open'
12. Choose where to put it, and click 'ok'


4. Choose the uk_times_acronyms.iqy from wherever you saved it.
5. Click 'ok'

### On Mac Excel 2011

1. Download [this query file](https://decc.github.io/uk-times-acronyms/uk_times_acronyms.iqy)
2. In Excel, create a new, blank, worksheet
3. choose the 'data' menu, then 'get external data'
4. Choose the uk_times_acronyms.iqy from wherever you saved it.
5. Click 'ok'

### To use the list for lookups

1. Unfortunately, Excel does not automatically create a named range for the query (CHECK ON PC)
2. So, first step is to create a named range to cover the table
3. Next step is to use a VLOOKUP to get the name for a code

## Fixing or adding an acronym

Edit the [codes.tsv](./codes.tsv) file in this folder in Excel (If you have made edits in an external data table elsewhere, just copy and paste them over the contents of the codes.tsv file - it will be fine).

Either send your modified version to tom.counsell@decc.gsi.gov.uk or, if you know what you are doing, make a pull request.

## Bugs

Please report bugs on http://github.com/decc/uk-times-acronyms


