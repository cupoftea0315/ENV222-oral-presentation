# Speech lines😇

## 1<span style="font-size:18px;">(start)</span>
Good afternoon everyone, today's presentation topic is about the use of Volcano plot in Next-Generation Sequencing.
## 2<span style="font-size:18px;">(NGS)</span>
Here I list the detail of NGS which involved those steps. Usually, first we will prepare the sample of DNA or RNA and then construct the library by link them to sequencing adapters. Next, expand the DNA fragments in the library by using PCR technology. When finished,  using high-throughput sequencers to obtain large amounts of genomic or transcriptomic data. Finally, we reach the part of data analysis which included in this slide<span style="color: #ff9500">(Point to the screen)</span>. For the visualization and interpretation, it is very efficient by using volcano plot to demonstrate differential expression analysis result. 
## 3<span style="font-size:18px;">(paper)</span>
This is a paper from NCBI which is about Transcriptomic, proteomic, and metabolomic landscape of positional memory in the caudal fin of zebrafish. <span style="color: #ff9500">(click the graph and show)</span>
## 4<span style="font-size:18px;">(tutorial)</span>
As I recommend in the very first slide, When we need to visualize the data with significant differences, volcano plot is very good company. Here I put a paper which include the concept and a tutorial video for volcano plot in this slide, you can check it to get more details. <span style="color: #ff9500">(Point the hyperlink)</span>
## 5<span style="font-size:18px;">(steps)</span>
Before we do analysis, prepare a csv file which include the experimental data of noise cancellation with columns of P-value, False discovery rate, Log fold change and Gene label. Then we can open R-studio to write some codes ...
## 6<span style="font-size:18px;">(code-1)</span>
Firstly, load the CSV file into R environment, then we can do some initial check of the dataset. As we can see, the data  is extremely large.
## 7<span style="font-size:18px;">(code-2)</span>
Secondly, split the dataset into three main parts, which are Not significant, Up-regulated genes and Down-regulated genes by using the common classification rule in Transcriptomic which provided in this slide with orange font.
## 8<span style="font-size:18px;">(code-3)</span>
Then we will add log10() to the P-value to get the significant gene and create a new data frame.
## 9<span style="font-size:18px;">(code-4)</span>
Ok finally, we can import the related packages and draw the volcano plot. It's worth to noting that use some right colors and annotations are essential when we add this plot to our paper.
## 10<span style="font-size:18px;">(full-code)</span>
And this is an overview chunk of the whole code.
## 11<span style="font-size:18px;">(result)</span>
This is the result of the previous code, we can easily observe the labels of Up-regulated genes and Down-regulated genes with high confidence coefficient. By and large, those genes can reflect changes in the transcriptional level and functional status of cells or tissues under different conditions or treatments.
## 12<span style="font-size:18px;">(end)</span>
Ok, This is all of my presentation. Thanks!🎉