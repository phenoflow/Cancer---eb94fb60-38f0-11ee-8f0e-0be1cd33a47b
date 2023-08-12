# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"B600100","system":"readv2"},{"code":"B600300","system":"readv2"},{"code":"B601100","system":"readv2"},{"code":"B601200","system":"readv2"},{"code":"B601300","system":"readv2"},{"code":"B601500","system":"readv2"},{"code":"B601800","system":"readv2"},{"code":"B602100","system":"readv2"},{"code":"B602200","system":"readv2"},{"code":"B602300","system":"readv2"},{"code":"B602500","system":"readv2"},{"code":"B610100","system":"readv2"},{"code":"B610300","system":"readv2"},{"code":"B611100","system":"readv2"},{"code":"B612400","system":"readv2"},{"code":"B614200","system":"readv2"},{"code":"B614300","system":"readv2"},{"code":"B614400","system":"readv2"},{"code":"B614800","system":"readv2"},{"code":"B615100","system":"readv2"},{"code":"B615200","system":"readv2"},{"code":"B615500","system":"readv2"},{"code":"B616400","system":"readv2"},{"code":"B616800","system":"readv2"},{"code":"B61z100","system":"readv2"},{"code":"B61z200","system":"readv2"},{"code":"B61z300","system":"readv2"},{"code":"B61z400","system":"readv2"},{"code":"B61z500","system":"readv2"},{"code":"B61z800","system":"readv2"},{"code":"B620100","system":"readv2"},{"code":"B620200","system":"readv2"},{"code":"B620300","system":"readv2"},{"code":"B620500","system":"readv2"},{"code":"B620800","system":"readv2"},{"code":"B621300","system":"readv2"},{"code":"B621400","system":"readv2"},{"code":"B621500","system":"readv2"},{"code":"B621800","system":"readv2"},{"code":"B623100","system":"readv2"},{"code":"B623300","system":"readv2"},{"code":"B624300","system":"readv2"},{"code":"B625200","system":"readv2"},{"code":"B625800","system":"readv2"},{"code":"B626500","system":"readv2"},{"code":"B626800","system":"readv2"},{"code":"B62y100","system":"readv2"},{"code":"B62y200","system":"readv2"},{"code":"B62y300","system":"readv2"},{"code":"B62y400","system":"readv2"},{"code":"B62y500","system":"readv2"},{"code":"B62y600","system":"readv2"},{"code":"B62y800","system":"readv2"},{"code":"B6z0.00","system":"readv2"},{"code":"BBs..00","system":"readv2"},{"code":"BBsz.00","system":"readv2"},{"code":"ByuC200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphoproliferative-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphoproliferative-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphoproliferative-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
