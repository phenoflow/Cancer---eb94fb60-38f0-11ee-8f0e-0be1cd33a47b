# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"4C53.00","system":"readv2"},{"code":"B201.00","system":"readv2"},{"code":"B201300","system":"readv2"},{"code":"B624.12","system":"readv2"},{"code":"B627000","system":"readv2"},{"code":"B627100","system":"readv2"},{"code":"B627200","system":"readv2"},{"code":"B627300","system":"readv2"},{"code":"B627400","system":"readv2"},{"code":"B627500","system":"readv2"},{"code":"B627A00","system":"readv2"},{"code":"B62E100","system":"readv2"},{"code":"B62E200","system":"readv2"},{"code":"B62F000","system":"readv2"},{"code":"B62F100","system":"readv2"},{"code":"B673.00","system":"readv2"},{"code":"B67y000","system":"readv2"},{"code":"BB07.00","system":"readv2"},{"code":"BB2..00","system":"readv2"},{"code":"BB2..12","system":"readv2"},{"code":"BB3..00","system":"readv2"},{"code":"BB5B600","system":"readv2"},{"code":"BB5W111","system":"readv2"},{"code":"BB5y000","system":"readv2"},{"code":"BBA..00","system":"readv2"},{"code":"BBB4.00","system":"readv2"},{"code":"BBC1.00","system":"readv2"},{"code":"BBg4.00","system":"readv2"},{"code":"BBgM.00","system":"readv2"},{"code":"BBgP.00","system":"readv2"},{"code":"BBgS.00","system":"readv2"},{"code":"BBgT.00","system":"readv2"},{"code":"BBgV.00","system":"readv2"},{"code":"BBj7.00","system":"readv2"},{"code":"BBr0111","system":"readv2"},{"code":"BBr0113","system":"readv2"},{"code":"BBr2600","system":"readv2"},{"code":"BBrA400","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mhepatocellular-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mhepatocellular-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mhepatocellular-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
