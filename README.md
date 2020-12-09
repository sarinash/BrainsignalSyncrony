# BrainsignalSyncrony
## Overview
Find the level of inter brain signal syncrony.
Raw data acquired frm fnirs device (HOT-1000; Hitachi, Hitech, Co.)
___
## Sample of Results


___


### Dependencies:
* wtc package
* Fou filter


Download wtc from here=> https://www.mathworks.com/matlabcentral/fileexchange/47985-cross-wavelet-and-wavelet-coherence

### Note: Kaggle dataset can be downloaded from:
http://www.mediafire.com/folder/trbjv7bysiycl/challenges-in-representation-learning-facial-expression-recognition-challenge

### How it works:
_ Detrend data toremove artifacts.
_ Smothing data (Savitzky Golay smoothing filter)
_ Using Fou filter or any band-pass Gaussian filter of choice
_ Using WTC to get the IBS


