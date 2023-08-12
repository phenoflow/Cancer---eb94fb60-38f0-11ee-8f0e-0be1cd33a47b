# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"142..15","system":"readv2"},{"code":"7008500","system":"readv2"},{"code":"7L1b.00","system":"readv2"},{"code":"B....00","system":"readv2"},{"code":"B11..11","system":"readv2"},{"code":"B62zz11","system":"readv2"},{"code":"B63y.00","system":"readv2"},{"code":"BB...00","system":"readv2"},{"code":"BBC..00","system":"readv2"},{"code":"BBN..00","system":"readv2"},{"code":"BBQA.00","system":"readv2"},{"code":"BBc0.00","system":"readv2"},{"code":"ByuF.00","system":"readv2"},{"code":"ByuG.00","system":"readv2"},{"code":"ByuG100","system":"readv2"},{"code":"ByuGB00","system":"readv2"},{"code":"ByuGD00","system":"readv2"},{"code":"ZV58800","system":"readv2"},{"code":"ZVu6J00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-neopl---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-neopl---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-neopl---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
