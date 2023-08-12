# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"B0...00","system":"readv2"},{"code":"B00..00","system":"readv2"},{"code":"B000.00","system":"readv2"},{"code":"B000000","system":"readv2"},{"code":"B000100","system":"readv2"},{"code":"B001.00","system":"readv2"},{"code":"B001000","system":"readv2"},{"code":"B001100","system":"readv2"},{"code":"B002.00","system":"readv2"},{"code":"B002100","system":"readv2"},{"code":"B002200","system":"readv2"},{"code":"B002300","system":"readv2"},{"code":"B003.00","system":"readv2"},{"code":"B003000","system":"readv2"},{"code":"B003100","system":"readv2"},{"code":"B003200","system":"readv2"},{"code":"B003300","system":"readv2"},{"code":"B004300","system":"readv2"},{"code":"B005.00","system":"readv2"},{"code":"B006.00","system":"readv2"},{"code":"B0z..00","system":"readv2"},{"code":"B0zy.00","system":"readv2"},{"code":"B330.00","system":"readv2"},{"code":"BBJB.00","system":"readv2"},{"code":"Byu0.00","system":"readv2"},{"code":"ByuG700","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mangiolipomatous-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mangiolipomatous-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mangiolipomatous-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
