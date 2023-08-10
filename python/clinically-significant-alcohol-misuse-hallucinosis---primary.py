# Michael Doyle, David While, Pearl L H Mok, Kirsten Windfuhr, Darren M Aschroft, Evangelos Kontopantelis, Carolyn A Chew-Graham, Louis Appleby, Jenny Shaw, Roger T Webb, 2023.

import sys, csv, re

codes = [{"code":"E011z00","system":"readv2"},{"code":"E012.11","system":"readv2"},{"code":"E013.00","system":"readv2"},{"code":"E01yz00","system":"readv2"},{"code":"E01z.00","system":"readv2"},{"code":"E230z00","system":"readv2"},{"code":"E23z.00","system":"readv2"},{"code":"Eu10511","system":"readv2"},{"code":"Eu10514","system":"readv2"},{"code":"Eu10711","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('clinically-significant-alcohol-misuse-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["clinically-significant-alcohol-misuse-hallucinosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["clinically-significant-alcohol-misuse-hallucinosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["clinically-significant-alcohol-misuse-hallucinosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
