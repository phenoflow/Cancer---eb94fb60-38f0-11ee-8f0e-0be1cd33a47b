# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"4C54.00","system":"readv2"},{"code":"4KJ0.00","system":"readv2"},{"code":"4KJ1.00","system":"readv2"},{"code":"4KJ2.00","system":"readv2"},{"code":"4KJ3.00","system":"readv2"},{"code":"4M...00","system":"readv2"},{"code":"4M5..00","system":"readv2"},{"code":"4M6..00","system":"readv2"},{"code":"5135","system":"readv2"},{"code":"5A12.00","system":"readv2"},{"code":"5A15.00","system":"readv2"},{"code":"7932400","system":"readv2"},{"code":"7B27.13","system":"readv2"},{"code":"7B27900","system":"readv2"},{"code":"7G03K00","system":"readv2"},{"code":"7K13500","system":"readv2"},{"code":"7K13600","system":"readv2"},{"code":"7K13700","system":"readv2"},{"code":"7K13900","system":"readv2"},{"code":"7L1K300","system":"readv2"},{"code":"8A9..00","system":"readv2"},{"code":"B36..00","system":"readv2"},{"code":"B498.00","system":"readv2"},{"code":"B51..11","system":"readv2"},{"code":"B595.00","system":"readv2"},{"code":"B626.00","system":"readv2"},{"code":"B626z00","system":"readv2"},{"code":"B900011","system":"readv2"},{"code":"B905400","system":"readv2"},{"code":"B911100","system":"readv2"},{"code":"B935.11","system":"readv2"},{"code":"BB08.00","system":"readv2"},{"code":"BB09.00","system":"readv2"},{"code":"BB0A.00","system":"readv2"},{"code":"BB0z.00","system":"readv2"},{"code":"BB10.00","system":"readv2"},{"code":"BB30.00","system":"readv2"},{"code":"BB5C011","system":"readv2"},{"code":"BB5H.11","system":"readv2"},{"code":"BB5R.00","system":"readv2"},{"code":"BB5R000","system":"readv2"},{"code":"BB5R100","system":"readv2"},{"code":"BB5R200","system":"readv2"},{"code":"BB5R400","system":"readv2"},{"code":"BB5R500","system":"readv2"},{"code":"BB5R600","system":"readv2"},{"code":"BB5R611","system":"readv2"},{"code":"BB5R800","system":"readv2"},{"code":"BB5Rz00","system":"readv2"},{"code":"BB5Y.00","system":"readv2"},{"code":"BB5a011","system":"readv2"},{"code":"BB5h.00","system":"readv2"},{"code":"BB5hz00","system":"readv2"},{"code":"BB5y200","system":"readv2"},{"code":"BB61100","system":"readv2"},{"code":"BB70.00","system":"readv2"},{"code":"BB81.12","system":"readv2"},{"code":"BB81.13","system":"readv2"},{"code":"BB81.14","system":"readv2"},{"code":"BB81L00","system":"readv2"},{"code":"BB85111","system":"readv2"},{"code":"BBA1.00","system":"readv2"},{"code":"BBB1.11","system":"readv2"},{"code":"BBC0.00","system":"readv2"},{"code":"BBC0.11","system":"readv2"},{"code":"BBC0.12","system":"readv2"},{"code":"BBC0.13","system":"readv2"},{"code":"BBC0000","system":"readv2"},{"code":"BBC3.00","system":"readv2"},{"code":"BBC3000","system":"readv2"},{"code":"BBC4.00","system":"readv2"},{"code":"BBC5.00","system":"readv2"},{"code":"BBC7.00","system":"readv2"},{"code":"BBC9.13","system":"readv2"},{"code":"BBCC.00","system":"readv2"},{"code":"BBCC000","system":"readv2"},{"code":"BBCC011","system":"readv2"},{"code":"BBCC100","system":"readv2"},{"code":"BBCCz00","system":"readv2"},{"code":"BBCCz11","system":"readv2"},{"code":"BBCD.00","system":"readv2"},{"code":"BBCE.00","system":"readv2"},{"code":"BBCF.00","system":"readv2"},{"code":"BBCG.00","system":"readv2"},{"code":"BBD..00","system":"readv2"},{"code":"BBD4.00","system":"readv2"},{"code":"BBD5.00","system":"readv2"},{"code":"BBD6.00","system":"readv2"},{"code":"BBDC.00","system":"readv2"},{"code":"BBDz.00","system":"readv2"},{"code":"BBF..00","system":"readv2"},{"code":"BBF0.00","system":"readv2"},{"code":"BBFz.00","system":"readv2"},{"code":"BBJD.11","system":"readv2"},{"code":"BBK3800","system":"readv2"},{"code":"BBL3.12","system":"readv2"},{"code":"BBL4.00","system":"readv2"},{"code":"BBL5.00","system":"readv2"},{"code":"BBL6.00","system":"readv2"},{"code":"BBL7112","system":"readv2"},{"code":"BBM0.00","system":"readv2"},{"code":"BBM0000","system":"readv2"},{"code":"BBM0100","system":"readv2"},{"code":"BBM0z00","system":"readv2"},{"code":"BBP8.00","system":"readv2"},{"code":"BBQ4.00","system":"readv2"},{"code":"BBQ4.14","system":"readv2"},{"code":"BBQB.00","system":"readv2"},{"code":"BBR6.00","system":"readv2"},{"code":"BBT..00","system":"readv2"},{"code":"BBT..11","system":"readv2"},{"code":"BBTL.00","system":"readv2"},{"code":"BBTz.00","system":"readv2"},{"code":"BBU..00","system":"readv2"},{"code":"BBU..11","system":"readv2"},{"code":"BBUz.00","system":"readv2"},{"code":"BBW7.11","system":"readv2"},{"code":"BBX..00","system":"readv2"},{"code":"BBX0.00","system":"readv2"},{"code":"BBX1.00","system":"readv2"},{"code":"BBX2.00","system":"readv2"},{"code":"BBX3.00","system":"readv2"},{"code":"BBXz.00","system":"readv2"},{"code":"BBY..00","system":"readv2"},{"code":"BBYz.00","system":"readv2"},{"code":"BBZ..00","system":"readv2"},{"code":"BBZ0.00","system":"readv2"},{"code":"BBZ1.00","system":"readv2"},{"code":"BBZ2.00","system":"readv2"},{"code":"BBZD.00","system":"readv2"},{"code":"BBZJ.00","system":"readv2"},{"code":"BBZP.00","system":"readv2"},{"code":"BBZz.00","system":"readv2"},{"code":"BBa..00","system":"readv2"},{"code":"BBa0.11","system":"readv2"},{"code":"BBa4.00","system":"readv2"},{"code":"BBa4.13","system":"readv2"},{"code":"BBaz.00","system":"readv2"},{"code":"BBba.00","system":"readv2"},{"code":"BBba000","system":"readv2"},{"code":"BBc8.00","system":"readv2"},{"code":"BBcA.00","system":"readv2"},{"code":"BBe..00","system":"readv2"},{"code":"BBe9.00","system":"readv2"},{"code":"BBez.00","system":"readv2"},{"code":"BBf..00","system":"readv2"},{"code":"BBf0.00","system":"readv2"},{"code":"BBg0.00","system":"readv2"},{"code":"BBn..00","system":"readv2"},{"code":"BBn1.00","system":"readv2"},{"code":"BBn3.00","system":"readv2"},{"code":"BBnz.00","system":"readv2"},{"code":"BBp..00","system":"readv2"},{"code":"BBpz.00","system":"readv2"},{"code":"BBy..00","system":"readv2"},{"code":"BBy0.00","system":"readv2"},{"code":"BBy2.00","system":"readv2"},{"code":"BByz.00","system":"readv2"},{"code":"C13y300","system":"readv2"},{"code":"C37yD00","system":"readv2"},{"code":"F282.11","system":"readv2"},{"code":"F456400","system":"readv2"},{"code":"F4G1111","system":"readv2"},{"code":"K01w112","system":"readv2"},{"code":"N332500","system":"readv2"},{"code":"PE1..12","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-pseudotumour---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-pseudotumour---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-pseudotumour---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
