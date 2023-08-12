# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"B05z000","system":"readv2"},{"code":"B3...12","system":"readv2"},{"code":"B30z000","system":"readv2"},{"code":"B31z000","system":"readv2"},{"code":"B33z000","system":"readv2"},{"code":"B592X00","system":"readv2"},{"code":"B612.00","system":"readv2"},{"code":"B62A.00","system":"readv2"},{"code":"B62D.00","system":"readv2"},{"code":"B653.00","system":"readv2"},{"code":"BBDB.11","system":"readv2"},{"code":"BBF3.00","system":"readv2"},{"code":"BBF4.00","system":"readv2"},{"code":"BBF4.11","system":"readv2"},{"code":"BBF5.00","system":"readv2"},{"code":"BBF5.11","system":"readv2"},{"code":"BBF6.00","system":"readv2"},{"code":"BBL0.00","system":"readv2"},{"code":"BBLD.00","system":"readv2"},{"code":"BBLH.00","system":"readv2"},{"code":"BBLJ.00","system":"readv2"},{"code":"BBN1.00","system":"readv2"},{"code":"BBN2.00","system":"readv2"},{"code":"BBN4.00","system":"readv2"},{"code":"BBN5.00","system":"readv2"},{"code":"BBTA.00","system":"readv2"},{"code":"BBV..00","system":"readv2"},{"code":"BBV..11","system":"readv2"},{"code":"BBV..12","system":"readv2"},{"code":"BBV..13","system":"readv2"},{"code":"BBV1.00","system":"readv2"},{"code":"BBV1.11","system":"readv2"},{"code":"BBV1.13","system":"readv2"},{"code":"BBV2.00","system":"readv2"},{"code":"BBV3.00","system":"readv2"},{"code":"BBV4.00","system":"readv2"},{"code":"BBV5.00","system":"readv2"},{"code":"BBVz.00","system":"readv2"},{"code":"BBX1.11","system":"readv2"},{"code":"BBY0.00","system":"readv2"},{"code":"BBY0.11","system":"readv2"},{"code":"BBbW.00","system":"readv2"},{"code":"BBd2.11","system":"readv2"},{"code":"BBd2.12","system":"readv2"},{"code":"BBf2.00","system":"readv2"},{"code":"BBgJ.11","system":"readv2"},{"code":"BBh0.11","system":"readv2"},{"code":"BBp1.00","system":"readv2"},{"code":"BBrA300","system":"readv2"},{"code":"Byu5B00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-mosteosarcoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-mosteosarcoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-mosteosarcoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
