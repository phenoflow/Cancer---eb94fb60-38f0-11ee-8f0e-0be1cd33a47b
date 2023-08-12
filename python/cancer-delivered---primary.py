# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"7L1d.00","system":"readv2"},{"code":"7L1dy00","system":"readv2"},{"code":"7L1dz00","system":"readv2"},{"code":"7L1e.00","system":"readv2"},{"code":"7L1ez00","system":"readv2"},{"code":"B15..00","system":"readv2"},{"code":"B150.00","system":"readv2"},{"code":"B150000","system":"readv2"},{"code":"B150200","system":"readv2"},{"code":"B150z00","system":"readv2"},{"code":"B152.00","system":"readv2"},{"code":"B153.00","system":"readv2"},{"code":"B15z.00","system":"readv2"},{"code":"B808.00","system":"readv2"},{"code":"B808000","system":"readv2"},{"code":"B808z00","system":"readv2"},{"code":"Byu1100","system":"readv2"},{"code":"L241100","system":"readv2"},{"code":"L241200","system":"readv2"},{"code":"L241300","system":"readv2"},{"code":"ZV10015","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-delivered---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-delivered---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-delivered---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
