
### Overview

This app allows users to choose a dataset from a pre-selected set of datasets and view a plot of that dataset. Users can also specify the number of observations to view from the chosen dataset.

### Getting Started

The app makes use of three datasets from R preloaded datasets. Choose a dataset from the dropdown menu on the left to preview the plotted chart of that data, summary and table view. After Choosing the dataset and the number of the observations, the user explicitly needs to click the "Submit" button to render the update.



### Specifying the Number of Observations 

After choosing a dataset and specifying the parameter which indicates the number of observations, clicking the Submit button will generate a new chart of that data. As well as more information about the dataset will be displayed in the summary and the table tabs.


### About the Datasets

Three datasets are available for selection in the sidebar of this app 

1- **rock** dataset contains 48 observations of 4 variables. 
* *area* - Area of pores space, in pixels out of 256 by 256
* *peri* - Perimeter in pixels
* *shape* - perimeter/sqrt(area)
* *perm* - permeability in milli-Darcies

2- **pressure** dataset contains 19 observations of 2 variables. 
* *temperature* - numeric temperature (deg C)
* *pressure* - numeric pressure (mm)

3- **cars** dataset contains 50 observations of 2 variables. It gives the speed of cars and the distances taken to stop. 
* *Speed* - speed (mph)
* *Dist* - stopping distance (ft).