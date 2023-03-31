To run the script, make sure you have Ruby installed on your system. The script requires two input files: a text file containing a list of sensitive field names (one per line) and a JSON file containing the user data to be scrubbed.

To execute the script, first make it executable with the following command:

`chmod +x scrub.rb`

Then you can run the script like this:

`./scrub.rb sensitive_fields.txt input.json`

Replace sensitive_fields.txt with the path to your sensitive fields text file and input.json with the path to your JSON file containing the data you want to scrub. The script will output a scrubbed JSON object with sensitive fields replaced according to the specified rules.
