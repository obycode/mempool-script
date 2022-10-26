# Mempool Analysis Tool

This tool is used to analyze the mempool and send the data to a local CSV file
and to a Google Sheet for graphing. The script runs at a 30s interval.

## Setup

You will need to follow the steps
[here](https://developers.google.com/sheets/api/quickstart/nodejs) to generate
a _credentials.json_ file.

Next, you will need to update the spreadsheet ID in _app.js_ if you will be
writing to a different sheet. This ID can be copied from the URL of the
spreadsheet:

```
https://docs.google.com/spreadsheets/d/{SPREADSHEET-ID-HERE}/edit#gid=0
```

Replace the value in the initialization of `SPREADSHEET` with the appropriate
value for your sheet:
```js
const SPREADSHEET = "1vzZM3k7VkWMbWmU3-AbcNY8DcVpGxu5c-MNqYRKSWrQ";
```

## Execution

To run the script, simply run:

```sh
./collect.sh
```

On first run, a browser window will pop up to authorize the access to Google
Docs.

Changes should begin showing up in the spreadsheet every 30 seconds, and
also in the local file, _mempool.csv_.