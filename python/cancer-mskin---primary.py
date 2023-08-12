# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"B3...00","system":"readv2"},{"code":"B33..00","system":"readv2"},{"code":"B332.00","system":"readv2"},{"code":"B332000","system":"readv2"},{"code":"B332100","system":"readv2"},{"code":"B333000","system":"readv2"},{"code":"B333100","system":"readv2"},{"code":"B333200","system":"readv2"},{"code":"B333300","system":"readv2"},{"code":"B333400","system":"readv2"},{"code":"B333500","system":"readv2"},{"code":"B334.00","system":"readv2"},{"code":"B334100","system":"readv2"},{"code":"B335000","system":"readv2"},{"code":"B335100","system":"readv2"},{"code":"B335200","system":"readv2"},{"code":"B335300","system":"readv2"},{"code":"B335400","system":"readv2"},{"code":"B335500","system":"readv2"},{"code":"B335600","system":"readv2"},{"code":"B335700","system":"readv2"},{"code":"B335800","system":"readv2"},{"code":"B335900","system":"readv2"},{"code":"B335A00","system":"readv2"},{"code":"B336.00","system":"readv2"},{"code":"B336000","system":"readv2"},{"code":"B336100","system":"readv2"},{"code":"B336200","system":"readv2"},{"code":"B336300","system":"readv2"},{"code":"B336400","system":"readv2"},{"code":"B336500","system":"readv2"},{"code":"B337.00","system":"readv2"},{"code":"B337000","system":"readv2"},{"code":"B337100","system":"readv2"},{"code":"B337200","system":"readv2"},{"code":"B337300","system":"readv2"},{"code":"B337400","system":"readv2"},{"code":"B337500","system":"readv2"},{"code":"B337600","system":"readv2"},{"code":"B337700","system":"readv2"},{"code":"B337800","system":"readv2"},{"code":"B337900","system":"readv2"},{"code":"B33X.00","system":"readv2"},{"code":"B3y..00","system":"readv2"},{"code":"BB6..00","system":"readv2"},{"code":"Byu4.00","system":"readv2"},{"code":"Byu5A00","system":"readv2"},{"code":"ZV10y14","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-mskin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-mskin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-mskin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
