# BrainsignalSyncrony
## Overview
Find the level of inter brain signal syncrony.
Raw data acquired from fNIRS device (HOT-1000; Hitachi, Hitech, Co.)
___
## Sample of Results

![resultsFrom FilteringExample](https://user-images.githubusercontent.com/60202851/101608710-69623700-3a49-11eb-9b6c-13ebacab645a.JPG)
![WTCResultExample](https://user-images.githubusercontent.com/60202851/101608711-69facd80-3a49-11eb-98ec-55414391b5d7.JPG)

___


### Dependencies:
* wtc package
* Fou filter


Download wtc from here=> https://www.mathworks.com/matlabcentral/fileexchange/47985-cross-wavelet-and-wavelet-coherence


### How it works:
_ Detrend data toremove artifacts.
_ Smothing data (Savitzky Golay smoothing filter)
_ Using Fou filter or any band-pass Gaussian filter of choice
_ Using WTC to get the IBS


