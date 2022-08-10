# Code for Flesch et al, Neuron

Analysis/AllFigures/plot_figures.ipynb contains routines to recreate most of the figures presented in the paper + SI  
Analysis/Humans and Analysis/Monkeys contains code to re-run all analyses from scratch, as well as code to plot some SI figures (matlab)  
Simulations/ contains code to re-run all neural network simulations presented in the manuscript   
Experiments/ contains code to re-run all behavioural/fmri experiments   
Data/ is empty and requires (pre-processed) data that is available on OSF (see link in Key Resource Table of manuscript)
Results/Simulations is empty and requires (processed data) from the NN simulation running under Simulations/


[![DOI](https://zenodo.org/badge/437026057.svg)](https://zenodo.org/badge/latestdoi/437026057)  


# August, 2022
Made Particular edits to Flesch et al, Neuron to analyze the representations constructed in Lazy/Rich Learning with different functions, weights, and contexts. These include...
1. Changing Hidden Layer and changes to input of hidden layer function
2. Having an output function from the hidden layer 
3. Binary Classification (Still in works)

Note: To use the Data optimally...
1. Create a Folder under Flesch et al called Data, and insert the NN simulation Data files [garden files, (see above)]
2. Run the NN simulation under Simulations/ to get the behavioural data
3. Create a folder Results/Simualations under Flesch et and insert the processed Data into it

