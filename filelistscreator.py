with open('SLRDATA/bn_slr_all_texts.txt', 'r', encoding='utf-8') as fr:
    for i, row in enumerate(fr):
        x = row.split('\t')
        x[0]= x[0].replace(".wav", "")
        newline_wav =  x[0] + '.wav|' + x[1]
        newline_mel = x[0] + '.pt|' + x[1]
        if i < 155370:
            with open('filelists/bnslr_audio_text_train.txt', 'a+', encoding='utf-8') as fw:
                fw.writelines(newline_wav)
            with open('filelists/bnslr_mel_text_train.txt', 'a+', encoding='utf-8') as fw:
                fw.writelines(newline_mel)

        elif i >= 155370 and i< 177560:
            with open('filelists/bnslr_audio_text_val.txt', 'a+', encoding='utf-8') as fw:
                fw.writelines(newline_wav)
            with open('filelists/bnslr_mel_text_val.txt', 'a+', encoding='utf-8') as fw:
                fw.writelines(newline_mel)

        else:
            with open('filelists/bnslr_audio_text_test.txt', 'a+', encoding='utf-8') as fw:
                fw.writelines(newline_wav)
            with open('filelists/bnslr_mel_text_test.txt', 'a+', encoding='utf-8') as fw:
                fw.writelines(newline_mel)


