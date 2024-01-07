# Sharp PC-1211 Programs

This repository contains BASIC programs for the [Sharp PC-1211 Pocket Computer](https://en.wikipedia.org/wiki/Sharp_PC-1211) or the TRS-80 PC-1, as it is better known in the USA.

The `TRS-80 manual` directory contains the sample programs that were available in the original [TRS-80 PC-1 manual](https://archive.org/details/trs80-pc1-manual). The programs were OCD'd in and I made the necessary corrections where needed, without altering the original in any way, except that I modified the original labels to be able to load all programs together (see below). These programs work best on the PC without a connected printer.

My personal programs are divided between two directories:

- The `Printer output` directory contains my programs that work best with the CE-122 printer interface and will print the results formatted for the 16 characters line of the printer. The input will be made on the keyboard and display, but all output will be redirected to the printer and formatted accordingly. To enable the printer, make sure to power on the printer first and activate print. Then press the ON button twice on the Pocket Computer to redirect output to the printer.

- The `Display output` directory contains my programs that work best with the Sharp PC-1211 without any printer connected. Both the input and output will be on the PC display.

Most programs that I wrote are available in both a printer and display version.

## Loading the programs

Use [Sharp PocketTools GUI](https://github.com/SilverGreen93/SharpPocketToolsGUI) to convert the BASIC programs to WAV or MP3.

Then connect the Pocket Computer to any tape player (if you plan to write the audio files to a physical cassette), sound card on the PC or any player that can output hight level audio via an interface such as CE-122, CE-121, or a DIY audio adapter (see this [YouTube video](https://www.youtube.com/watch?v=g4643eLIfSY) for a custom made interface).

Note that the output level must be very high for the PC to load properly. For best results I am using a tape deck (Philips D6600) with volume set at 6~8/10 and a fake CD-tape adapter with 3.5mm jack adapter. This ensures that the level is just right for the PC to load error free.

Then enter `CLOAD "name"` on your TRS-80 or PC-1211 and play the recording.

If you want to load multiple programs simultaneously, you can enter `CLOAD 1"name"` (with a `1`) and play the next audio file. This command merges (actually appends) the next program to the existing ones.

**Note 1:** Programs must use different labels to be able to start them separately after they are merged into memory. For example, if both programs start with label `"A"`, you should change one of them to use another label from the reservable keys. Then from the DEF mode, just press `SHIFT A` to start the program with label "A" and so on.

**Note 2:** On the Sharp PC-1211, there are a maximum of 1424 STEPS / 178 MEMORIES available for program. So you must take into account this maximum capacity when loading multiple programs. If a program does not fit in memory, error 4 will be shown during load.

## List of programs

### From the TRS-80 manual

| Title | Page | File | Steps | Labels |
| ----- | ---- | ---- | ----- | ------ |
| BIORHYTHM | 103 | [BIORYTM.BAS](TRS-80%20manual/BIORYTM.BAS) | 337 | A, B |
| GUESS-NUMBER GAME | 105 | [GUESS.BAS](TRS-80%20manual/GUESS.BAS) | 690 | G |
| IMPEDANCE IN A SERIES CIRCUIT | 107 | [RLC.BAS](TRS-80%20manual/RLC.BAS) | 172 | C |
| DAYS BETWEEN DATES | 109 | [DAYS.BAS](TRS-80%20manual/DAYS.BAS) | 387 | D |
| RANDOM NUMBERS | 111 | [RANDOM.BAS](TRS-80%20manual/RANDOM.BAS) | 121 | Z |
| NORMAL DISTRIBUTION AND PERCENTILE | 113 | [DISTRIB.BAS](TRS-80%20manual/DISTRIB.BAS) | 327 | N, M |

### My programs

My original programs are written in Romanian, but have been translated in English as well. You can find both versions here. The file column contains the Printer version (P) and the Display version (D) links to the program. Each program contains descriptions and comments at the beginning of the file.

**Romanian versions:**

| Titlu | Fișier | Pași | Etichete |
| ----- | ------ | ---- | -------- |
| Bon comandă | P: [BON.BAS](Printer%20output/BON.BAS) <br> D: N/A | 151 | B, G |
| Bioritm | P: [BIORITM.BAS](Printer%20output/BIORITM.BAS) <br> D: [BIORITM.BAS](Display%20output/BIORITM.BAS) | 556 <br> 468 | A, Z |
| Extrageri numere aleatoare | P: [RAND.BAS](Printer%20output/RAND.BAS) <br> D: [RAND.BAS](Display%20output/RAND.BAS) | 179 <br> 142 | X |
| Ghicește codul | P&D: [COD.BAS](Printer%20output/COD.BAS) | 718 | C |
| Diferența între date | P: [ZILE.BAS](Printer%20output/ZILE.BAS) <br> D: [ZILE.BAS](Display%20output/ZILE.BAS) | 466 <br> 414 | D |

**English versions:**

| Title | File | Steps | Labels |
| ----- | ---- | ----- | ------ |
| Receipt printer | P: [RECEIPT.BAS](Printer%20output/en/RECEIPT.BAS) <br> D: N/A | 155 | B, G |
| Biorhythm | P: [BIORYTM.BAS](Printer%20output/BIORYTM.BAS) <br> D: [BIORYTM.BAS](Display%20output/BIORYTM.BAS) | 561 <br> 476 | A, Z |
| Random number draws | P: [RAND.BAS](Printer%20output/en/RAND.BAS) <br> D: [RAND.BAS](Display%20output/en/RAND.BAS) | 180 <br> 147 | X |
| Code breaker | P&D: [CODE.BAS](Printer%20output/CODE.BAS) | 717 | C |
| Days between dates | P: [DAYS.BAS](Printer%20output/en/DAYS.BAS) <br> D: [DAYS.BAS](Display%20output/en/DAYS.BAS) | 456 <br> 410 | D |


## Resources

More books with programs for the Sharp PC-1211 can be found online, here is a list of the most popular:

- [119 Practical Programs for the TRS-80](https://archive.org/details/119_Practical_Programs_for_the_TRS-80_1982_Tab_Books) by John Clark Graig
- [Pocket Computer Programming Made Easy](https://archive.org/details/Pocket_Computer_Programming_Made_Easy_1982_ARCsoft_Publishers) by Jim Cole
- [TRS-80 Pocket Computer Programs](https://archive.org/details/Pocket_Computer_Programs_1981_Artsoft) by Jim Cole
- [Sharp PC-1211 Applications Manual](https://archive.org/details/applications-manual)
- Problem Solving on The TRS-80 Pocket Computer by Inman & Conlan (missing in action!)

You can find all the programs from the book _119 Practical Programs for the TRS-80_ in the following GitHub repo, thanks to [Robert van Engelen](https://github.com/Robert-van-Engelen): [119 Practical Programs for the TRS-80 Pocket Computer](https://github.com/Robert-van-Engelen/119-Practical-Programs-for-the-TRS-80-Pocket-Computer)
