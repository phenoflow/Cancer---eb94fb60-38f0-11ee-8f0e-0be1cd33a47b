# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"1429","system":"readv2"},{"code":"B64..11","system":"readv2"},{"code":"B641.11","system":"readv2"},{"code":"B651200","system":"readv2"},{"code":"B66..00","system":"readv2"},{"code":"B66..11","system":"readv2"},{"code":"B661.00","system":"readv2"},{"code":"B66y.00","system":"readv2"},{"code":"B672.00","system":"readv2"},{"code":"B672.11","system":"readv2"},{"code":"BBr0112","system":"readv2"},{"code":"BBr2011","system":"readv2"},{"code":"BBr4.00","system":"readv2"},{"code":"BBr4000","system":"readv2"},{"code":"BBr6311","system":"readv2"},{"code":"BBr7000","system":"readv2"},{"code":"BBrA100","system":"readv2"},{"code":"BBrA111","system":"readv2"},{"code":"BBrA500","system":"readv2"},{"code":"ByuD700","system":"readv2"},{"code":"ZV10600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-merythroleukaemia---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-merythroleukaemia---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-merythroleukaemia---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
