Kallab                                                      MET/CAL Procedure
=============================================================================
INSTRUMENT:            HP 3312A Function Generator
DATE:                  2021-07-09 13:06:42
AUTHOR:                Antti Harala
REVISION:              1.0
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       84
NUMBER OF LINES:       1031
CONFIGURATION:         DSO6032A
CONFIGURATION:         FSMR26-N
CONFIGURATION:         Agilent E3634A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
  1.001  CALL         Sub Preamble
  1.002  DISP         This procedure requires R&S FSMR with METCAL alias FSMR,
  1.002  DISP         DSO series oscolloscope with METCAL alias of DSO and
  1.002  DISP         Agilent E3634A Power Supply with METCAL alias of E3634A.
  1.002  DISP
  1.002  DISP         Let the UUT warm up properly for 30 minutes.

  1.003  HEAD         Sine Wave Amplitude Flatness Test
  1.004  TARGET       -p
  1.005  DISP         Set UUT FUNCTION to Sine, RANGE to 1k, DIAL to 1 and AMPLITUDE to CW
  1.005  DISP         and DC OFFSET to zero / middle. All modulation etc... off.
  1.005  DISP
  1.005  DISP         Connect UUT V OUTPUT to DSO CH1.
  1.006  SCPI         [@DSO] *RST [T60000]
  1.007  SCPI         [@DSO]:CHAN1:IMP FIFT
  1.008  SCPI         [@DSO] :AUT
  1.009  SCPI         [@DSO] :ACQ:TYPE HRES
  1.010  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  1.011  MATH         MEM1 = MEM
  1.012  RSLT         =Sine Wave Amplitude Flatness Test (Vpp at 1 kHz = [MEM1]V)
  1.013  TARGET       -p
  1.014  DISP         Set RANGE to 10.
  1.015  SCPI         [@DSO]:CHAN1:IMP FIFT
  1.016  SCPI         [@DSO]:CHAN1:OFFS 0 V [T45000]
  1.017  SCPI         [@DSO]:CHAN1:SCAL 2 V
  1.018  SCPI         [@DSO]:TRIG:LEV 0 V
  1.019  SCPI         [@DSO]:TIM:SCAL 100 ms
  1.020  SCPI         [@DSO]:ACQ:TYPE HRES
  1.021  SCPI         [@DSO][T60000]:SING
  1.022  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  1.023  MEMC         V              3%            10H
  2.001  DISP         Set DIAL to 5.
  2.002  SCPI         [@DSO] :AUT
  2.003  SCPI         [@DSO] :ACQ:TYPE HRES
  2.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  2.005  MEMC         V              3%            5H
  3.001  DISP         Set RANGE to 100.
  3.002  SCPI         [@DSO] :AUT
  3.003  SCPI         [@DSO] :ACQ:TYPE HRES
  3.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  3.005  MEMC         V              3%            500H
  4.001  DISP         Set RANGE to 1k.
  4.002  SCPI         [@DSO] :AUT
  4.003  SCPI         [@DSO] :ACQ:TYPE HRES
  4.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  4.005  MEMC         V              3%            5kH
  5.001  DISP         Set RANGE to 10k.
  5.002  SCPI         [@DSO] :AUT
  5.003  SCPI         [@DSO] :ACQ:TYPE HRES
  5.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  5.005  MEMC         V              3%            50kH
  6.001  DISP         Set DIAL to 10.
  6.002  SCPI         [@DSO] :AUT
  6.003  SCPI         [@DSO] :ACQ:TYPE HRES
  6.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  6.005  MEMC         V              3%            100kH
  7.001  DISP         Set RANGE to 100k and DIAL to 1.
  7.002  SCPI         [@DSO] :AUT
  7.003  SCPI         [@DSO] :ACQ:TYPE HRES
  7.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  7.005  MEMC         V              10%           100kH
  8.001  DISP         Set DIAL to 5.
  8.002  SCPI         [@DSO] :AUT
  8.003  SCPI         [@DSO] :ACQ:TYPE HRES
  8.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  8.005  MEMC         V              10%           500kH
  9.001  DISP         Set DIAL to 10.
  9.002  SCPI         [@DSO] :AUT
  9.003  SCPI         [@DSO] :ACQ:TYPE HRES
  9.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
  9.005  MEMC         V              10%           1MH
 10.001  DISP         Set RANGE to 1M.
 10.002  SCPI         [@DSO] :AUT
 10.003  SCPI         [@DSO] :ACQ:TYPE HRES
 10.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
 10.005  MEMC         V              10%           10MH
 11.001  DISP         Set DIAL to 5.
 11.002  SCPI         [@DSO] :AUT
 11.003  SCPI         [@DSO] :ACQ:TYPE HRES
 11.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
 11.005  MEMC         V              10%           5MH
 12.001  DISP         Set DIAL to 1.
 12.002  SCPI         [@DSO] :AUT
 12.003  SCPI         [@DSO] :ACQ:TYPE HRES
 12.004  SCPI         [@DSO] :MEAS:VAMP? CHAN1[I]
 12.005  MEMC         V              10%           1MH

 13.001  HEAD         Dial Accuracy Test
 13.002  RSLT         =Dial Accuracy Test
 13.003  TARGET       -p

# Dial at 1.

 13.004  DISP         Set FUNCTION to Sine, RANGE to .1 and DIAL to 1.
 13.005  SCPI         [@DSO] *RST
 13.006  SCPI         [@DSO]:CHAN1:IMP FIFT
 13.007  SCPI         [@DSO]:CHAN1:OFFS 0 V
 13.008  SCPI         [@DSO]:CHAN1:SCAL 2 V
 13.009  SCPI         [@DSO]:TRIG:LEV 2 V
 13.010  SCPI         [@DSO]:TIM:SCAL 5 s
 13.011  SCPI         [@DSO]:ACQ:TYPE HRES
 13.012  SCPI         [@DSO][T120000]:SING
 13.012  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 13.013  MEMC   1.3   0.100H         5/

 14.001  DISP         Set RANGE to 1.
 14.002  SCPI         [@DSO] :CHAN1:OFFS 0 V
 14.003  SCPI         [@DSO] :CHAN1:SCAL 2 V
 14.004  SCPI         [@DSO] :TIM:SCAL 200 ms
 14.005  SCPI         [@DSO] :ACQ:TYPE HRES
 14.006  SCPI         [@DSO][T120000]:SING
 14.006  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 14.007  MEMC   13    1.000H         5/

 15.001  DISP         Set RANGE to 10.
 15.002  SCPI         [@DSO] :CHAN1:OFFS 0 V [T60000]
 15.003  SCPI         [@DSO] :CHAN1:SCAL 2 V
 15.004  SCPI         [@DSO] :TRIG:LEV 0 V
 15.005  SCPI         [@DSO] :TIM:SCAL 20 ms
 15.006  SCPI         [@DSO] :ACQ:TYPE HRES
 15.007  SCPI         [@DSO][T120000]:SING
 15.007  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 15.008  MEMC   130   10.000H        5/

 16.001  DISP         Set RANGE to 100.
 16.002  SCPI         [@DSO] :AUT
 16.003  SCPI         [@DSO] :ACQ:TYPE HRES
 16.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 16.005  MEMC   1300  100.000H       5/

 17.001  DISP         Set RANGE to 1k.
 17.002  SCPI         [@DSO] :AUT
 17.003  SCPI         [@DSO] :ACQ:TYPE HRES
 17.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 17.005  MEMC   13000 1000.000H      5/

 18.001  DISP         Set RANGE to 10k.
 18.002  SCPI         [@DSO] :AUT
 18.003  SCPI         [@DSO] :ACQ:TYPE HRES
 18.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 18.005  MEMC   130e3 10000.000H     5/

 19.001  DISP         Set RANGE to 100k.
 19.002  SCPI         [@DSO] :AUT
 19.003  SCPI         [@DSO] :ACQ:TYPE HRES
 19.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 19.005  MEMC   1.3e6 100000.000H    5/

 20.001  DISP         Set RANGE to 1M.
 20.002  SCPI         [@DSO] :AUT
 20.003  SCPI         [@DSO] :ACQ:TYPE HRES
 20.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 20.005  MEMC   1.3e7 1000000.0H     5/

 # Dial at 6.

 21.001  DISP         Set RANGE to .1 and DIAL to 6.
 21.002  SCPI         [@DSO] *RST
 21.003  SCPI         [@DSO]:CHAN1:IMP FIFT
 21.004  SCPI         [@DSO]:CHAN1:OFFS 0 V
 21.005  SCPI         [@DSO]:CHAN1:SCAL 2 V
 21.006  SCPI         [@DSO]:TRIG:LEV 2 V
 21.007  SCPI         [@DSO]:TIM:SCAL 1 s
 21.008  SCPI         [@DSO]:ACQ:TYPE HRES
 21.009  SCPI         [@DSO][T120000]:SING
 21.009  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 21.010  MEMC   1.3   0.600H         5/

 22.001  DISP         Set RANGE to 1.
 22.002  SCPI         [@DSO] :CHAN1:OFFS 0 V
 22.003  SCPI         [@DSO] :CHAN1:SCAL 2 V
 22.004  SCPI         [@DSO] :TIM:SCAL 50 ms
 22.005  SCPI         [@DSO] :ACQ:TYPE HRES
 22.006  SCPI         [@DSO][T120000]:SING
 22.006  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 22.007  MEMC   13    6.000H         5/

 23.001  DISP         Set RANGE to 10.
 23.002  SCPI         [@DSO] :CHAN1:OFFS 0 V [T60000]
 23.003  SCPI         [@DSO] :CHAN1:SCAL 2 V
 23.004  SCPI         [@DSO] :TRIG:LEV 0 V
 23.005  SCPI         [@DSO] :TIM:SCAL 5 ms
 23.006  SCPI         [@DSO] :ACQ:TYPE HRES
 23.007  SCPI         [@DSO][T120000]:SING
 23.007  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 23.008  MEMC   130   60.000H        5/

 24.001  DISP         Set RANGE to 100.
 24.002  SCPI         [@DSO] :AUT
 24.003  SCPI         [@DSO] :ACQ:TYPE HRES
 24.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 24.005  MEMC   1300  600.000H       5/

 25.001  DISP         Set RANGE to 1k.
 25.002  SCPI         [@DSO] :AUT
 25.003  SCPI         [@DSO] :ACQ:TYPE HRES
 25.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 25.005  MEMC   13000 6000.000H      5/

 26.001  DISP         Set RANGE to 10k.
 26.002  SCPI         [@DSO] :AUT
 26.003  SCPI         [@DSO] :ACQ:TYPE HRES
 26.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 26.005  MEMC   130e3 60000.000H     5/

 27.001  DISP         Set RANGE to 100k.
 27.002  SCPI         [@DSO] :AUT
 27.003  SCPI         [@DSO] :ACQ:TYPE HRES
 27.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 27.005  MEMC   1.3e6 600000.000H    5/

 28.001  DISP         Set RANGE to 1M.
 28.002  SCPI         [@DSO] :AUT
 28.003  SCPI         [@DSO] :ACQ:TYPE HRES
 28.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 28.005  MEMC   1.3e7 6000000.0H     5/

 # Dial at 13.

 29.001  DISP         Set RANGE to .1 and DIAL to 13.
 29.002  SCPI         [@DSO] *RST
 29.003  SCPI         [@DSO]:CHAN1:IMP FIFT
 29.004  SCPI         [@DSO]:CHAN1:OFFS 0 V
 29.005  SCPI         [@DSO]:CHAN1:SCAL 2 V
 29.006  SCPI         [@DSO]:TRIG:LEV 2 V
 29.007  SCPI         [@DSO]:TIM:SCAL 500 ms
 29.008  SCPI         [@DSO]:ACQ:TYPE HRES
 29.009  SCPI         [@DSO][T120000]:SING
 29.009  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 29.010  MEMC   1.3   1.300H         5/

 30.001  DISP         Set RANGE to 1.
 30.002  SCPI         [@DSO] :CHAN1:OFFS 0 V
 30.003  SCPI         [@DSO] :CHAN1:SCAL 2 V
 30.004  SCPI         [@DSO] :TIM:SCAL 20 ms
 30.005  SCPI         [@DSO] :ACQ:TYPE HRES
 30.006  SCPI         [@DSO][T120000]:SING
 30.006  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 30.007  MEMC   13    13.000H        5/

 31.001  DISP         Set RANGE to 10.
 31.002  SCPI         [@DSO] :CHAN1:OFFS 0 V [T60000]
 31.003  SCPI         [@DSO] :CHAN1:SCAL 2 V
 31.004  SCPI         [@DSO] :TRIG:LEV 0 V
 31.005  SCPI         [@DSO] :TIM:SCAL 2 ms
 31.006  SCPI         [@DSO] :ACQ:TYPE HRES
 31.007  SCPI         [@DSO][T120000]:SING
 31.007  SCPI         [@DSO][T120000]:MEAS:FREQ? CHAN1[I]
 31.008  MEMC   130   130.000H       5/

 32.001  DISP         Set RANGE to 100.
 32.002  SCPI         [@DSO] :AUT
 32.003  SCPI         [@DSO] :ACQ:TYPE HRES
 32.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 32.005  MEMC   1300  1300.000H      5/

 33.001  DISP         Set RANGE to 1k.
 33.002  SCPI         [@DSO] :AUT
 33.003  SCPI         [@DSO] :ACQ:TYPE HRES
 33.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 33.005  MEMC   13000 13000.000H     5/

 34.001  DISP         Set RANGE to 10k.
 34.002  SCPI         [@DSO] :AUT
 34.003  SCPI         [@DSO] :ACQ:TYPE HRES
 34.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 34.005  MEMC   130e3 130000.000H    5/

 35.001  DISP         Set RANGE to 100k.
 35.002  SCPI         [@DSO] :AUT
 35.003  SCPI         [@DSO] :ACQ:TYPE HRES
 35.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 35.005  MEMC   1.3e6 1300000.000H   5/

 36.001  DISP         Set RANGE to 1M.
 36.002  SCPI         [@DSO] :AUT
 36.003  SCPI         [@DSO] :ACQ:TYPE HRES
 36.004  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 36.005  MEMC   1.3e7 13000000.000H  5/

 37.001  HEAD         Output Impedance Test
 37.002  RSLT         =Output Impedance Test
 37.003  DISP         Set RANGE to 1k and DIAL to 1.

 37.004  SCPI         [@DSO]*RST
 37.005  SCPI         [@DSO]:AUT
 37.006  SCPI         [@DSO]:ACQ:TYPE HRES
 37.007  SCPI         [@DSO]:MEAS:VRMS CHAN1

 37.008  DISP         Adjust UUT Amplitude vernier for 5 Vrms.

 37.009  SCPI         [@DSO]:CHAN1:IMP FIFT
 37.010  SCPI         [@DSO]:AUT
 37.011  SCPI         [@DSO]:ACQ:TYPE HRES
 37.012  SCPI         [@DSO] :MEAS:VRMS? CHAN1[I]
 37.013  MEMC         2.50V          0.12U         1kH

 38.001  HEAD         Square Wave Rise and Fall Time Test
 38.002  RSLT         =Square Wave Rise and Fall Time Test

 38.003  DISP         Set UUT RANGE to 1M and DIAL to 3. Set FUNCTION
 38.003  DISP         to SQUARE wave.

 38.004  SCPI         [@DSO] *RST
 38.005  SCPI         [@DSO]:CHAN1:IMP FIFT
 38.006  SCPI         [@DSO]:CHAN1:OFFS 0 V
 38.007  SCPI         [@DSO]:TRIG:LEV 0 V
 38.008  SCPI         [@DSO] :AUT
 38.009  SCPI         [@DSO]:ACQ:TYPE HRES
 38.010  SCPI         [@DSO] :TRIG:EDGE:SLOP POS
 38.011  SCPI         [@DSO] :TIM:SCAL 10e-9
 38.012  SCPI         [@DSO][T120000]:SING
 38.013  SCPI         [@DSO] :MEAS:RIS? CHAN1[I]
 38.014  EVAL   -e MEM <= 18e-9 : Square Wave Rise Time [MEM] s

 39.001  SCPI         [@DSO] :TRIG:EDGE:SLOP NEG
 39.002  SCPI         [@DSO] :AUT
 39.003  SCPI         [@DSO] :TIM:SCAL 10e-9
 39.004  SCPI         [@DSO] :ACQ:TYPE HRES
 39.005  SCPI         [@DSO][T120000]:SING
 39.006  SCPI         [@DSO] :MEAS:FALL? CHAN1[I]
 39.007  EVAL   -e MEM <= 18e-9 : Square Wave Fall Time [MEM] s

 40.001  HEAD         Aberration Test
 40.002  RSLT         =Aberration Test

 40.003  SCPI         [@DSO] :TRIG:EDGE:SLOP POS
 40.004  SCPI         [@DSO] :AUT
 40.005  SCPI         [@DSO] :TIM:SCAL 20e-9
 40.006  SCPI         [@DSO] :ACQ:TYPE HRES
 40.007  SCPI         [@DSO][T120000]:SING
 40.008  SCPI         [@DSO] :MEAS:OVER? CHAN1[I]
 40.009  MEMC         0.00pct        5.00U         Rising

 41.001  SCPI         [@DSO] :AUT
 41.002  SCPI         [@DSO] :TRIG:EDGE:SLOP NEG
 41.003  SCPI         [@DSO] :TIM:SCAL 20e-9
 41.004  SCPI         [@DSO] :ACQ:TYPE HRES
 41.005  SCPI         [@DSO][T120000]:SING
 41.006  SCPI         [@DSO] :MEAS:OVER? CHAN1[I]
 41.007  MEMC         0.00pct        5.00U         Falling

 42.001  HEAD         Sine Wave Distortion Test
 42.002  RSLT         =Sine Wave Distortion Test
 42.003  SCPI         [@FSMR]*RST
 42.004  SCPI         [@FSMR]ROSC:SOUR INT
 42.005  SCPI         [@FSMR]SYSTem:DISPlay:UPDate ON
 42.006  SCPI         [@FSMR]INP:SEL AUD
 42.006  SCPI         [@FSMR]INP:IMP 50OHM
 42.007  SCPI         [@FSMR]CALC1:FEED 'XTIM:AC:SPEC'
 42.008  SCPI         [@FSMR]SENS:ADEM:AF:STAR 20HZ
 42.009  SCPI         [@FSMR]SENS:ADEM:AF:STOP 200KHZ

 42.010  DISP         Set UUT RANGE to 10 and DIAL to 5. Set FUNCTION
 42.010  DISP         to SINE. Connect UUT OUTPUT to FSMR AUDIO INPUT.
 42.010  DISP         Connect FSMR 10 MHZ REF OUT to UUT VCO INPUT.
 42.011  SCPI         [@FSMR]CALC:MARK:FUNC:VOLT? THD[I]
 42.012  MEMC         0.00pct        0.50U         50H

 43.001  DISP         Set RANGE to 100
 43.002  SCPI         [@FSMR]CALC:MARK:FUNC:VOLT? THD[I]
 43.003  MEMC         0.00pct        0.50U         500H

 44.001  DISP         Set RANGE to 1k
 44.002  SCPI         [@FSMR]CALC:MARK:FUNC:VOLT? THD[I]
 44.003  MEMC         0.00pct        0.50U         50kH

 45.001  DISP         Set RANGE to 10k
 45.002  SCPI         [@FSMR]CALC:MARK:FUNC:VOLT? THD[I]
 45.003  MEMC         0.00pct        0.50U         50kH

 46.001  SCPI         [@FSMR]SENS:ADEM:AF:STAR 20HZ
 46.002  SCPI         [@FSMR]SENS:ADEM:AF:STOP 500KHZ

 46.003  MATH         S[1] = "50 kHz Harmonics"
 46.004  EVAL   -s S[1] : Are all harmonics more than -30 dBc below carrier?

 47.001  DISP         Set RANGE to 100k. Connect UUT OUTPUT to FSMR RF INPUT.
 47.002  MATH         S[1] = "500 kHz Harmonics"

 47.003  SCPI         [@FSMR]INST:SEL MREC
 47.003  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 47.004  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 47.005  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 47.006  SCPI         [@FSMR]INST:SEL SAN
 47.007  SCPI         [@FSMR]INIT:CONT ON
 47.008  SCPI         [@FSMR]CALC:MARK:FUNC:HARM:STAT ON[D1000]
 47.009  SCPI         [@FSMR]CALC:MARK:FUNC:HARM:LIST?[I$]

 47.010  MATH         M[2] = FLD(MEM2, 2, ",")
 47.011  MATH         M[3] = FLD(MEM2, 3, ",")
 47.012  MATH         M[4] = FLD(MEM2, 4, ",")
 47.013  MATH         M[5] = FLD(MEM2, 5, ",")
 47.014  MATH         MEM = MAX(2,5)
 47.015  EVAL   -e MEM < -30 : [S1]

 48.001  DISP         Set RANGE to 1M
 48.002  MATH         S[1] = "5 MHz Harmonics"

 48.003  SCPI         [@FSMR]INST:SEL MREC
 48.003  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 48.004  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 48.005  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 48.006  SCPI         [@FSMR]INST:SEL SAN
 48.007  SCPI         [@FSMR]INIT:CONT ON
 48.008  SCPI         [@FSMR]CALC:MARK:FUNC:HARM:STAT ON[D1000]
 48.009  SCPI         [@FSMR]CALC:MARK:FUNC:HARM:LIST?[I$]

 48.010  MATH         M[2] = FLD(MEM2, 2, ",")
 48.011  MATH         M[3] = FLD(MEM2, 3, ",")
 48.012  MATH         M[4] = FLD(MEM2, 4, ",")
 48.013  MATH         M[5] = FLD(MEM2, 5, ",")
 48.014  MATH         MEM = MAX(2,5)
 48.015  EVAL   -e MEM < -30 : [S1]

 49.001  DISP         Set DIAL to 13
 49.002  MATH         S[1] = "13 MHz Harmonics"

 49.003  SCPI         [@FSMR]INST:SEL MREC
 49.003  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 49.004  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 49.005  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 49.006  SCPI         [@FSMR]INST:SEL SAN
 49.007  SCPI         [@FSMR]INIT:CONT ON
 49.008  SCPI         [@FSMR]CALC:MARK:FUNC:HARM:STAT ON[D1000]
 49.009  SCPI         [@FSMR]CALC:MARK:FUNC:HARM:LIST?[I$]

 49.010  MATH         M[2] = FLD(MEM2, 2, ",")
 49.011  MATH         M[3] = FLD(MEM2, 3, ",")
 49.012  MATH         M[4] = FLD(MEM2, 4, ",")
 49.013  MATH         M[5] = FLD(MEM2, 5, ",")
 49.014  MATH         MEM = MAX(2,5)
 49.015  EVAL   -e MEM < -30 : [S1]

 50.001  HEAD         Attenuator Accuracy Test
 50.002  RSLT         =Attenuator Accuracy Test

 50.003  DISP         Set DIAL to 10. Adjust UUT Amplitude vernier to 11 o'clock.

 50.004  SCPI         [@FSMR]*RST
 50.005  SCPI         [@FSMR]INST:SEL MREC
 50.006  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 50.007  SCPI         [@FSMR]INP:ATT:REC:AUTO ON
 50.008  SCPI         [@FSMR]SENS:POW:AC:REF:STAT OFF
 50.009  SCPI         [@FSMR]SENS:DET:FUNC WIDE
 50.010  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 50.011  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE

 50.012  DISP         Connect NRP-Z51 Power Sensor to FSMR. Leave Power
 50.012  DISP         Sensor head unconnected for sensor zero.

 50.013  SCPI         [@FSMR]INST:SEL MREC
 50.014  SCPI         [@FSMR]SENS:PMET:STAT ON
 50.015  SCPI         [@FSMR]CAL:PMET:ZERO:AUTO ONCE;*WAI

 50.016  DISP         Connect Power Sensor to UUT OUTPUT.
 50.017  SCPI         [@FSMR]INST:SEL MREC
 50.018  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 50.019  SCPI         [@FSMR]SENS:CORR:COLL PMET

 50.020  DISP         Connect UUT OUTPUT to FSMR RF INPUT.
 50.021  SCPI         [@FSMR]SENS:CORR:COLL INP

 50.022  SCPI         [@FSMR]INIT:CONT OFF
 50.023  SCPI         [@FSMR]INIT;*WAI;CALC:MARK:FUNC:ADEM:CARR?[I]
 50.024  MATH         M[1] = DBMTOV(MEM,50)/10
 50.025  MATH         M[2] = DBMTOV(MEM,50)/100
 50.026  MATH         M[3] = DBMTOV(MEM,50)/1000

 50.027  DISP         Adjust UUT Amplitude knob to 1 V range. Do not touch the vernier.
 50.028  SCPI         [@FSMR]INIT;*WAI;CALC:MARK:FUNC:ADEM:CARR?[I]
 50.029  MATH         MEM = DBMTOV(MEM,50)
 50.030  MATH         MEM1 = M[1]
 50.031  MEMC         V              5%

 51.001  SCPI         [@FSMR]INIT:CONT ON
 51.002  DISP         Adjust UUT Amplitude knob to 0.1 V range. Do not touch the vernier.
 51.002  DISP         Wait for recal if necessary.
 51.003  SCPI         [@FSMR]INIT:CONT OFF
 51.004  SCPI         [@FSMR]INIT;*WAI;CALC:MARK:FUNC:ADEM:CARR?[I]
 51.005  MATH         MEM = DBMTOV(MEM,50)
 51.006  MATH         MEM1 = M[2]
 51.007  MEMC         V              5%

 52.001  DISP         Adjust UUT Amplitude knob to 0.01 V range. Do not touch the vernier.
 52.002  SCPI         [@FSMR]INIT;*WAI;CALC:MARK:FUNC:ADEM:CARR?[I]
 52.003  MATH         MEM = DBMTOV(MEM,50)
 52.004  MATH         MEM1 = M[3]
 52.005  MEMC         V              5%

 53.001  SCPI         [@FSMR]INIT:CONT ON

 53.002  HEAD         Carrier Envelope Distortion Test
 53.003  RSLT         =Carrier Envelope Distortion Test

 53.004  DISP         Set RANGE to 1M, DIAL to 1. Modulation to AM, SINE
 53.004  DISP         Modulation % to CCW. Connect UUT OUTPUT to FSMR RF INPUT.

 53.005  SCPI         [@FSMR]*RST
 53.006  SCPI         [@FSMR]INST:SEL MREC
 53.007  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 53.008  SCPI         [@FSMR]INP:ATT:REC:AUTO ON
 53.009  SCPI         [@FSMR]SENS:POW:AC:REF:STAT OFF
 53.010  SCPI         [@FSMR]SENS:DET:FUNC WIDE
 53.011  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 53.012  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 53.013  SCPI         [@FSMR]SENS:ADEM:STAT ON

 53.014  SCPI         [@FSMR]CALC:FEED 'XTIM:AM:REL'
 53.015  SCPI         [@FSMR]CALC:FEED 'XTIM:RFP:BARG'
 53.016  SCPI         [@FSMR]SENS:ADEM:DET:THD ON

 53.017  DISP         Adjust AM modulation frequency to 1 kHz and Modulation Depth to 70 %.

 53.018  SCPI         [@FSMR]CALC:MARK:FUNC:ADEM:THD:RES?[I]

 53.019  EVAL   -e MEM < 2 : Envelope Distortion [MEM] %

 54.001  HEAD         External AM Modulation Sensitivity
 54.002  RSLT         =External AM Modulation Sensitivity

 54.003  MEMI         Connect external 1 kHz modulation signal to MOD INT-EXT terminal.
 54.003  MEMI         Set UUT RANGE to 100k, DIAL to 5, Modulation % to CW. Adjust external
 54.003  MEMI         modulation signal amplitude so the modulation % on FSMR is 100 %.
 54.003  MEMI         Type in the modulation signal value in Vp-p:

 54.004  EVAL   -e MEM < 10 : External Modulation Sensitivity

 55.001  HEAD         FM Distortion Test
 55.002  RSLT         =FM Distortion Test

 55.003  DISP         Set RANGE to 1M, DIAL to 10, AMPLITUDE to max, ALL Modulation OFF.
 55.004  SCPI         [@FSMR]INST:SEL MREC
 55.005  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 55.006  SCPI         [@FSMR]INP:ATT:REC:AUTO ON
 55.007  SCPI         [@FSMR]SENS:POW:AC:REF:STAT OFF
 55.008  SCPI         [@FSMR]SENS:DET:FUNC WIDE
 55.009  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 55.010  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 55.011  SCPI         [@FSMR]SENS:ADEM:STAT ON

 55.012  DISP         Set Modulation to FM Sine, delta F to CW.


 55.013  SCPI         [@FSMR]CALC:FEED 'XTIM:FM'
 55.014  SCPI         [@FSMR]CALC:FEED 'XTIM:RFP:BARG'
 55.015  SCPI         [@FSMR]SENS:ADEM:DET:THD ON
 55.016  SCPI         [@FSMR]CALC:MARK:FUNC:ADEM:THD:RES?[I]

 55.017  EVAL   -e MEM < 2 : FM Distortion [MEM] %

 56.001  HEAD         Sync Output Impedance and Amplitude Test
 56.002  RSLT         =Sync Output Impedance and Amplitude Test

 56.003  DISP         Connect UUT SYNC to DSO CH1.
 56.004  SCPI         [@DSO]*RST
 56.005  SCPI         [@DSO]:AUT
 56.006  SCPI         [@DSO]:ACQ:TYPE HRES
 56.007  SCPI         [@DSO]:MEAS:VAMP? CHAN1[I]
 56.008  EVAL   -e MEM > 1 : Sync Output Amplitude
 57.001  MATH         MEM1 = MEM/2
 57.002  SCPI         [@DSO]:CHAN1:IMP FIFT
 57.003  SCPI         [@DSO]:AUT
 57.004  SCPI         [@DSO]:ACQ:TYPE HRES
 57.005  SCPI         [@DSO]:MEAS:VAMP? CHAN1[I]
 57.006  MEMC         V              2.50%

 58.001  HEAD         Sync Output Rise and Fall Time
 58.002  RSLT         =Sync Output Rise and Fall Time

 58.003  SCPI         [@DSO]*RST
 58.004  SCPI         [@DSO]:AUT
 58.005  SCPI         [@DSO]:ACQ:TYPE HRES
 58.006  SCPI         [@DSO]:TRIG:EDGE:SLOP POS
 58.007  SCPI         [@DSO]:TIM:SCAL 5e-9
 58.008  SCPI         [@DSO]:SING
 58.009  SCPI         [@DSO]:MEAS:RIS? CHAN1[I]
 58.010  EVAL   -e MEM <= 10e-9 : Sync Rise Time [MEM] s

 59.001  SCPI         [@DSO]:TRIG:EDGE:SLOP NEG
 59.002  SCPI         [@DSO]:TIM:SCAL 5e-9
 59.003  SCPI         [@DSO]:SING
 59.004  SCPI         [@DSO]:MEAS:FALL? CHAN1[I]
 59.005  EVAL   -e MEM <= 10e-9 : Sync Fall Time [MEM] s

 60.001  HEAD         DC Offset Test
 60.002  RSLT         =DC Offset Test

 60.003  DISP         Connect UUT OUTPUT to DSO CH1.
 60.003  DISP         Set RANGE to 1k and DIAL to 1.

 60.004  SCPI         [@DSO]*RST
 60.004  SCPI         [@DSO]:CHAN1:COUP AC
 60.005  SCPI         [@DSO]:AUT
 60.006  SCPI         [@DSO]:CHAN1:SCAL 5 V
 60.007  SCPI         [@DSO]:CHAN1:OFFS 0 V
 60.008  SCPI         [@DSO]:TRIG:LEV 2.5 V
 60.009  SCPI         [@DSO]:ACQ:TYPE HRES
 60.010  SCPI         [@DSO]:MEAS:VTOP CHAN1

 60.011  DISP         Adjust Amplitude Vernier for 5 Vtop value.

 60.012  SCPI         [@DSO]:CHAN1:COUP DC

 60.013  OPBR         Set OFFSET CAL button out. Adjust OFFSET knob for
 60.013  OPBR         Vtop reading of 10 Vtop. Is there visible clipping
 60.013  OPBR         on the signal?
 60.014  EVAL   -e MEM1 == -1 : DC Offset Positive

 61.001  SCPI         [@DSO]:TRIG:LEV -2.5 V

 61.002  OPBR         Adjust OFFSET knob for Vtop reading of 0 Vpp.
 61.002  OPBR         Is there visible clipping on the signal?

 61.003  EVAL   -e MEM1 == -1 : DC Offset Negative

 62.001  HEAD         Internal Mod Output Test
 62.002  RSLT         =Internal Mod Output Test

 62.003  DISP         Push OFFSET CAL button in. Connect UUT MOD INT-EXT to DSO CH1
 62.003  DISP         using 10 kOhm termination. Modulation to AM Sine. SYM to CAL.

 62.004  SCPI         [@DSO]*RST
 62.005  SCPI         [@DSO]:CHAN1:IMP INF
 62.006  SCPI         [@DSO]:AUT
 62.007  SCPI         [@DSO]:ACQ:TYPE HRES
 62.008  SCPI         [@DSO]:MEAS:VPP? CHAN1[I]
 62.009  EVAL   -e MEM > 1 : AM Sine Amplitude

 63.001  DISP         Set to Triangle wave modulation.

 63.002  SCPI         [@DSO]:AUT
 63.003  SCPI         [@DSO]:ACQ:TYPE HRES
 63.004  SCPI         [@DSO]:MEAS:VPP? CHAN1[I]
 63.005  EVAL   -e MEM > 1 : AM Triangle Amplitude

 64.001  DISP         Set to Square wave modulation.

 64.002  SCPI         [@DSO]:AUT
 64.003  SCPI         [@DSO]:ACQ:TYPE HRES
 64.004  SCPI         [@DSO]:MEAS:VPP? CHAN1[I]
 64.005  EVAL   -e MEM > 1 : AM Square Amplitude

 65.001  HEAD         Internal Mod Spectral Purity
 65.002  RSLT         =Internal Mod Spectral Purity

 65.003  DISP         Set Modulation to AM Sine. Set modulation frequency to 10k range.
 65.003  DISP         Connect UUT MOD INT-EXT to FSMR AUDIO INPUT.

 65.004  SCPI         [@FSMR]INST:SEL MREC
 65.005  SCPI         [@FSMR]INP:SEL AUD
 65.005  SCPI         [@FSMR]INP:IMP 1MOHM
 65.006  SCPI         [@FSMR]CALC1:FEED 'XTIM:AC:SPEC'
 65.007  SCPI         [@FSMR]SENS:ADEM:AF:STAR 20HZ
 65.008  SCPI         [@FSMR]SENS:ADEM:AF:STOP 200KHZ

 65.009  OPBR         Using the modulation frequency vernier and knob
 65.009  OPBR         check that the THD is < 2% on the FSMR between
 65.009  OPBR         frequencies 20 Hz - 10 kHz. Is the THD < 2 %?

 65.010  EVAL   -e MEM1 == 1 : Spectral Purity THD < 2 %

 66.001  HEAD         Variable Symmetry Test
 66.002  RSLT         =Variable Symmetry Test

 66.003  DISP         Turn UUT modulation off. Connect UUT OUTPUT to DSO CH1.
 66.003  DISP         Set UUT RANGE to 1k, DIAL to 1, SYM CAL OUT, AMPLITUDE
 66.003  DISP         10, FUNCTION to SQUARE wave.
 66.003  DISP
 66.003  DISP         Turn SYM to CCW (below the FUNCTION buttons).

 66.004  SCPI         [@DSO] *RST
 66.005  SCPI         [@DSO]:CHAN1:IMP FIFT
 66.006  SCPI         [@DSO]:CHAN1:OFFS 0 V
 66.007  SCPI         [@DSO]:TRIG:LEV 0 V
 66.008  SCPI         [@DSO]:AUT
 66.009  SCPI         [@DSO]:ACQ:TYPE HRES
 66.010  SCPI         [@DSO]:TRIG:EDGE:SLOP POS
 66.011  SCPI         [@DSO]:TIM:SCAL 500e-6
 66.012  SCPI         [@DSO]:SING
 66.013  SCPI         [@DSO]:MEAS:DUTY? CHAN1[I]
 66.014  EVAL   -e MEM <= 20 : Symmetry CCW Duty Cycle [MEM] %

 67.001  DISP         Turn SYM to CW (below the FUNCTION buttons).

 67.002  SCPI         [@DSO]:SING
 67.003  SCPI         [@DSO]:MEAS:DUTY? CHAN1[I]
 67.004  EVAL   -e MEM >= 80 : Symmetry CW Duty Cycle [MEM] %

 68.001  HEAD         Carrier 3 dB BW Test
 68.002  RSLT         =Carrier 3 dB BW Test

 68.003  DISP         Set SYM CAL to IN. Set modulation to AM, deselect
 68.003  DISP         all modulation waveforms. Set RANGE to 1k, DIAL to 1.

 68.004  SCPI         [@DSO] *RST
 68.005  SCPI         [@DSO]:CHAN1:IMP FIFT
 68.006  SCPI         [@DSO]:CHAN1:OFFS 0 V
 68.007  SCPI         [@DSO]:TRIG:LEV 0 V
 68.008  SCPI         [@DSO]:AUT
 68.009  SCPI         [@DSO]:ACQ:TYPE HRES
 68.010  SCPI         [@DSO]:MEAS:VRMS CHAN1

 68.011  DISP         Adjust Amplitude vernier for 1 V rms on DSO. Set RANGE to 100
 68.011  DISP         and DIAL to 1 after amplitude adjustment.

 68.012  SCPI         [@DSO]:AUT
 68.013  SCPI         [@DSO]:ACQ:TYPE HRES
 68.014  SCPI         [@DSO]:MEAS:VRMS? CHAN1[I]
 68.015  EVAL   -e MEM > 0.707 : 100 Hz -3 dB point

 69.001  DISP         Set RANGE to 1M and DIAL to 5.

 69.002  SCPI         [@DSO]:AUT
 69.003  SCPI         [@DSO]:ACQ:TYPE HRES
 69.004  SCPI         [@DSO]:MEAS:VRMS? CHAN1[I]
 69.005  EVAL   -e MEM > 0.707 : 5 MHz -3 dB point

 70.001  HEAD         External Frequency Control Input Test
 70.002  RSLT         =External Frequency Control Input Test

 70.003  SCPI         [@E3634A]OUTP OFF

 70.004  DISP         Connect E3634A Power to UUT VCO input (reverse polarity),
 70.004  DISP         OUTPUT at PSU set to OFF. Set UUT RANGE to 1M and DIAL to 10.
 70.004  DISP         Amplitude to CW.

 70.005  SCPI         [@FSMR]*RST
 70.005  SCPI         [@FSMR]INST:SEL MREC
 70.006  SCPI         [@FSMR]SENS:POW:AC:STAT ON
 70.007  SCPI         [@FSMR]INP:ATT:REC:AUTO ON
 70.008  SCPI         [@FSMR]SENS:POW:AC:REF:STAT OFF
 70.009  SCPI         [@FSMR]SENS:DET:FUNC WIDE
 70.010  SCPI         [@FSMR]SENS:FREQ:CW:AFC:THR 0
 70.011  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE

 70.012  SCPI         [@FSMR]INST:SEL SAN
 70.013  SCPI         [@FSMR]INIT:CONT ON
 70.014  SCPI         [@FSMR]FREQ:SPAN 1MHz
 70.015  SCPI         [@FSMR]CALC:MARK1:COUN ON
 70.016  SCPI         [@FSMR]CALC:MARK1:COUN:RES 100
 70.017  SCPI         [@FSMR]CALC:MARK:MAX
 70.018  SCPI         [@FSMR]CALC:MARK:COUN:FREQ?[I]
 70.019  MATH         L[1] = MEM
 70.020  MATH         L[5] = 0

 70.021  SCPI         [@E3634A]APPL 0.4; OUTP ON
 70.022  SCPI         [@FSMR]INST:SEL MREC
 70.023  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 70.024  SCPI         [@FSMR]INST:SEL SAN
 70.025  SCPI         [@FSMR]FREQ:SPAN 1MHz
 70.026  SCPI         [@FSMR]CALC:MARK1:COUN ON
 70.027  SCPI         [@FSMR]CALC:MARK1:COUN:RES 100
 70.028  SCPI         [@FSMR]CALC:MARK:MAX
 70.029  SCPI         [@FSMR]CALC:MARK:COUN:FREQ?[I]
 70.030  MATH         L[2] = MEM
 70.031  SCPI         [@E3634A]MEASURE?[I]
 70.032  MATH         L[6] = MEM

 70.033  SCPI         [@E3634A]APPL 1; OUTP ON
 70.034  SCPI         [@FSMR]INST:SEL MREC
 70.035  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 70.036  SCPI         [@FSMR]INST:SEL SAN
 70.037  SCPI         [@FSMR]FREQ:SPAN 1MHz
 70.038  SCPI         [@FSMR]CALC:MARK1:COUN ON
 70.039  SCPI         [@FSMR]CALC:MARK1:COUN:RES 100
 70.040  SCPI         [@FSMR]CALC:MARK:MAX
 70.041  SCPI         [@FSMR]CALC:MARK:COUN:FREQ?[I]
 70.042  MATH         L[3] = MEM
 70.043  SCPI         [@E3634A]MEASURE?[I]
 70.044  MATH         L[7] = MEM

 70.045  SCPI         [@E3634A]APPL 1.8; OUTP ON
 70.046  SCPI         [@FSMR]INST:SEL MREC
 70.047  SCPI         [@FSMR]SENS:FREQ:CW:AFC ONCE
 70.048  SCPI         [@FSMR]INST:SEL SAN
 70.049  SCPI         [@FSMR]FREQ:SPAN 1MHz
 70.050  SCPI         [@FSMR]CALC:MARK1:COUN ON
 70.051  SCPI         [@FSMR]CALC:MARK1:COUN:RES 100
 70.052  SCPI         [@FSMR]CALC:MARK:MAX
 70.053  SCPI         [@FSMR]CALC:MARK:COUN:FREQ?[I]
 70.054  MATH         L[4] = MEM
 70.055  SCPI         [@E3634A]MEASURE?[I]
 70.056  MATH         L[8] = MEM

 70.057  MATH         list_y = CSV_L(1,4)
 70.058  MATH         list_x = CSV_L(5,8)
 70.059  MATH         LinReg(list_x, list_y, "slope", "intercept")

 70.060  MATH         MEM1 = slope*L[7]+intercept
 70.061  MATH         MEM = L[3]

 70.062  MEMC         H              0.500%

 71.001  MATH         MEM1 = slope*L[8]+intercept
 71.002  MATH         MEM = L[4]

 71.003  MEMC         H              0.500%

 72.001  END








 72.002  HEAD         Output Impedance Test
 72.003  RSLT         =Output Impedance Test
 72.004  DISP         Connect UUT OUTPUT to DSO Channel 1
 72.004  DISP         Set FUNCTION to Sine.

 72.005  SCPI         [@DSO] *RST [T60000]
 72.006  SCPI         [@DSO] :AUT
 72.007  SCPI         [@DSO] :ACQ:TYPE HRES
 72.008  SCPI         [@DSO] :MEAS:VRMS CHAN1

 72.009  DISP         Adjust Vrms to 6.00V using the AMPLITUDE knob on the UUT.
 72.009  DISP         After adjustment connect 600 ohm termination to the DSO input.

 72.010  SCPI         [@DSO] :AUT
 72.011  SCPI         [@DSO] :ACQ:TYPE HRES
 72.012  SCPI         [@DSO] :MEAS:VRMS? CHAN1[I]
 72.013  MEMC         3V             0.16U         1kH

 73.001  DISP         Connect UUT 600 ohm output to DSO CH1 without termination.
 73.001  DISP         Set RANGE to 100k and DIAL to 5.
 73.002  SCPI         [@DSO] *RST [T60000]
 73.003  SCPI         [@DSO] :AUT
 73.004  SCPI         [@DSO] :ACQ:TYPE HRES
 73.005  SCPI         [@DSO] :MEAS:VRMS CHAN1

 73.006  DISP         Adjust Vrms to 6.00V using the AMPLITUDE knob on the UUT.
 73.006  DISP         After adjustment connect 600 ohm termination to the DSO input.

 73.007  SCPI         [@DSO] :AUT
 73.008  SCPI         [@DSO] :ACQ:TYPE HRES
 73.009  SCPI         [@DSO] :MEAS:VRMS? CHAN1[I]
 73.010  MEMC         3V             0.16U         500kH

 74.001  DISP         Connect UUT 600 ohm output to DSO6032A CH1 without termination.
 74.001  DISP         Set RANGE to 10 and DIAL to 10.
 74.002  SCPI         [@DSO] *RST [T60000]
 74.003  SCPI         [@DSO] :AUT
 74.004  SCPI         [@DSO] :ACQ:TYPE HRES
 74.005  SCPI         [@DSO] :MEAS:VRMS CHAN1

 74.006  DISP         Adjust Vrms to 6.00V using the AMPLITUDE knob on the UUT.
 74.006  DISP         After adjustment connect 600 ohm termination to the DSO input.

 74.007  SCPI         [@DSO] :AUT
 74.008  SCPI         [@DSO] :ACQ:TYPE HRES
 74.009  SCPI         [@DSO] :MEAS:VRMS? CHAN1[I]
 74.010  MEMC         3V             0.16U         100H







 75.001  HEAD         VCO Test
 75.002  RSLT         =VCO Test
 75.003  TARGET
 75.004  DISP         Connect UUT 600 ohm output to DSO series scope without termination.
 75.004  DISP         Connect Agilent E3634A Power Supply to UUT rear panel VCO INPUT.
 75.004  DISP         Make the connection so that the power supply - output is connected to
 75.004  DISP         VCO INPUT HI and power supply + is connected to VCO input LO (polarity
 75.004  DISP         is reversed).
 75.004  DISP
 75.004  DISP         Set UUT DC OFFSET to middle / zero. Set UUT AMPLITUDE to fully CW.
 75.004  DISP         Set UUT RANGE to 100k and DIAL to 1.

 75.005  SCPI         [@DSO] :AUT
 75.006  SCPI         [@DSO] :MEAS:CLE
 75.007  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 75.008  MATH         M[1] = MEM

 75.009  SCPI         [@E3634A] *RST
 75.010  SCPI         [@E3634A] VOLT 12
 75.011  SCPI         [@E3634A] OUTP ON

 75.012  SCPI         [@DSO] :AUT
 75.013  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 75.014  SCPI         [@E3634A] OUTP OFF
 75.015  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 100kHz

 76.001  DISP         Set RANGE to 10k.

 76.002  SCPI         [@DSO] :AUT
 76.003  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 76.004  MATH         M[1] = MEM

 76.005  SCPI         [@E3634A] VOLT 12
 76.006  SCPI         [@E3634A] OUTP ON

 76.007  SCPI         [@DSO] :AUT
 76.008  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 76.009  SCPI         [@E3634A] OUTP OFF
 76.010  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 10kHz

 77.001  DISP         Set RANGE to 1k.

 77.002  SCPI         [@DSO] :AUT
 77.003  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 77.004  MATH         M[1] = MEM

 77.005  SCPI         [@E3634A] VOLT 12
 77.006  SCPI         [@E3634A] OUTP ON

 77.007  SCPI         [@DSO] :AUT
 77.008  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 77.009  SCPI         [@E3634A] OUTP OFF
 77.010  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 1kHz

 78.001  DISP         Set RANGE to 100.

 78.002  SCPI         [@DSO] :AUT
 78.003  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 78.004  MATH         M[1] = MEM

 78.005  SCPI         [@E3634A] VOLT 12
 78.006  SCPI         [@E3634A] OUTP ON

 78.007  SCPI         [@DSO] :AUT
 78.008  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 78.009  SCPI         [@E3634A] OUTP OFF
 78.010  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 100Hz

 79.001  DISP         Set RANGE to 10.

 79.002  SCPI         [@DSO] *RST [T60000]
 79.003  SCPI         [@DSO] :CHAN1:OFFS 0 V
 79.004  SCPI         [@DSO] :CHAN1:SCAL 5 V
 79.005  SCPI         [@DSO] :TRIG:LEV 2 V
 79.006  SCPI         [@DSO] :TIM:SCAL 20 ms
 79.007  SCPI         [@DSO] :SING
 79.008  WAIT         -t 5 Please wait...
 79.009  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 79.010  MATH         M[1] = MEM

 79.011  SCPI         [@E3634A] VOLT 12
 79.012  SCPI         [@E3634A] OUTP ON

 79.013  SCPI         [@DSO] :SING
 79.014  WAIT         -t 5 Please wait...
 79.015  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 79.016  SCPI         [@E3634A] OUTP OFF
 79.017  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 10Hz

 80.001  DISP         Set RANGE to 1.

 80.002  SCPI         [@DSO] :CHAN1:OFFS 0 V
 80.003  SCPI         [@DSO] :CHAN1:SCAL 5 V
 80.004  SCPI         [@DSO] :TRIG:LEV 2 V
 80.005  SCPI         [@DSO] :TIM:SCAL 200 ms
 80.006  SCPI         [@DSO] :SING
 80.007  WAIT         -t 5 Please wait...
 80.008  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 80.009  MATH         M[1] = MEM

 80.010  SCPI         [@E3634A] VOLT 12
 80.011  SCPI         [@E3634A] OUTP ON

 80.012  SCPI         [@DSO] :SING
 80.013  WAIT         -t 5 Please wait...
 80.014  SCPI         [@DSO] :MEAS:COUN? CHAN1[I]
 80.015  SCPI         [@E3634A] OUTP OFF
 80.016  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 1Hz

 81.001  DISP         Set RANGE to 0.1.

 81.002  SCPI         [@DSO] :CHAN1:OFFS 0 V
 81.003  SCPI         [@DSO] :CHAN1:SCAL 5 V
 81.004  SCPI         [@DSO] :TRIG:LEV 2 V
 81.005  SCPI         [@DSO] :TIM:SCAL 2 s
 81.006  SCPI         [@DSO] :SING
 81.007  WAIT         -t 25 Please wait...
 81.008  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 81.009  MATH         M[1] = MEM

 81.010  SCPI         [@E3634A] VOLT 12
 81.011  SCPI         [@E3634A] OUTP ON

 81.012  SCPI         [@DSO] :SING
 81.013  WAIT         -t 25 Please wait...
 81.014  SCPI         [@DSO] :MEAS:FREQ? CHAN1[I]
 81.015  SCPI         [@E3634A] OUTP OFF
 81.016  EVAL   -e MEM > 10*M[1] : VCO Range > 10:1 at 0.1Hz

 82.001  DISP         Disconnect power supply from UUT rear panel.

 82.002  HEAD         Triangle Wave Linearity Test
 82.003  RSLT         =Triangle Wave Linearity Test

 82.004  DISP         Set RANGE to 10, DIAL to 10 and FUNCTION to Triangle wave.

 82.005  SCPI         [@DSO] *RST
 82.006  SCPI         [@DSO] :AUT
 82.007  SCPI         [@DSO] :MEAS:VPP CHAN1

 82.008  DISP         Adjust AMPLITUDE knob for 20V Vpp reading on the DSO scope.

 82.009  DISP         Move the coax lead from DSO scope to NI USB-5132 CH0.

 82.010  DOS          linearity.exe POS
 82.011  MATH         path = PXETEMP() & "linearity_result.dat"
 82.012  MATH         MEM = READ(path, 1)
 82.013  EVAL   -e MEM == 1 :

 83.001  DOS          linearity.exe NEG
 83.002  MATH         path = PXETEMP() & "linearity_result.dat"
 83.003  MATH         MEM = READ(path, 1)
 83.004  EVAL   -e MEM == 1 :

 84.001  END
