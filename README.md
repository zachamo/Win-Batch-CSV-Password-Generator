# Win-Batch-CSV-Password-Generator
Built for an import file with a hardcoded password placeholder. Finds and overwrites placeholder with a generated password. Warning: it's clumbsy

Running the 'initiator.bat' file will scan the current folder for filenames matching the specified format, search for the password placeholder, generate a password string, and replace the placeholder.

Sample CSV contents:
Name,ID,Password
John Smith,1246546,Password123
John Smoth,124564566546,Password123
John dsfwetr,564365,Password123
