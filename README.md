<h1 align="center">
<br>
Report
<a href="https://www.deltager.no/event/deep_learning_for_forest_remote_sensing_applications_with_examples_in_python_22052023#init">NOVA Course</a> 
</h1>
<p align="center">
<img src="https://github.com/barrakat/NOVA/blob/main/Figures/Capture.PNG" width="300" />
</p>
</div> 

---

## 📒 Project Structure
[📍 Overview](#-overview)
[🧪 Running Tests](#-running-tests)
[💻 Results](#-results)
[🗺 Discussion](#-discussion)
[👏 Acknowledgments](#-acknowledgments)

---


## 📍 Overview

In this project I compare the performance of the best trained tree seedling detector in Norway by using my own labelled instances (N 530, red quadrants in Figure 1A) from 82 tiled orthomosaics of 10 m size VS the full instances labelled by the whole class group (N 5074, blue quadrants in Figure 1A) from 3065 tiled orthomosaics of the same size (Figure 1C).

<pre>
<figure>
<img src="https://github.com/barrakat/NOVA/blob/main/Figures/Figure_1.png" width="900" />
<ins><figcaption>Figure 1</figcaption></ins>
<figure>
</pre> 

I trained 2 different models per instance group, as explained in Running Tests section below, and discuss the obtained performance results in 4 areas in Norway (Figure 1B) (see Results section below).

---

## 🧪 Running tests

Code in folder [here](https://github.com/barrakat/NOVA/blob/main/Code).

|Model|Description|
| --------- | ------- |
| YOLOv8_nano_img640 | 300 epochs, 640 image size on my own instances |
| YOLOv8_nano_img1024 | 100 epochs, 1024 image size on my own instances |
| full_inst_YOLOv8_nano_img640  | 300 epochs, 640 image size on full group instances |
| full_inst_YOLOv8_nano_img1024 | 100 epochs, 1024 image size on full group instances |

Below, in Figure 2, the mAP50 vs duration and memory used by the 4 trained YOLO nano models. It resulted that, lower number of epochs and higher image size resulted in higher mAP50 with both own and full group instances.

<pre>
<figure>
<img src="https://github.com/barrakat/NOVA/blob/main/Figures/Figure_2.png" width="900" />
<ins><figcaption>Figure 2</figcaption></ins>
<figure>
</pre> 

Models YOLOv8_nano_img1024 and full_inst_YOLOv8_nano_img1024 wee then used for making predictions and checking their performance in the 4 testing areas of Figure 1.

---

## 💻 Results

Below, in Figures 3 and 4, the confusion matrix, F1 score and scatterplot of predictions vs reference observations obtained with the two models: YOLOv8_nano_img1024 and full_inst_YOLOv8_nano_img1024

<pre>
<figure>
<img src="https://github.com/barrakat/NOVA/blob/main/Figures/Figure_3.png" width="900" />
<ins><figcaption>Figure 3</figcaption></ins>
<figure>
</pre> 

<pre>
<figure>
<img src="https://github.com/barrakat/NOVA/blob/main/Figures/Figure_4.jpg" width="900" />
<ins><figcaption>Figure 4</figcaption></ins>
<figure>
</pre> 

---
## 🗺 Discussion

> - `ℹ️ Point 1` --> training the models with increased image size had an impact mainly on the used memory (for YOLOv8_nano) and on used memory and duration (for full_inst_YOLOv8_nano). BUT, the mAP50 was always highest by increasing image size and reducing epochs. Between YOLOv8_nano_img1024 and full_inst_YOLOv8_nano_img1024, YOLOv8_nano_img1024 resulted in doubled mAP50 and almost 1/4 duration of the training (Figure 2).

> - `ℹ️ Point 2` --> The model trained on my own 530 instances (YOLOv8_nano_img1024) showed a very comparable accuracy to the model trained on full 5074 instances (full_inst_YOLOv8_nano_img1024), with a F1 score of 0.45 vs 0.48 of the full model. While YOLOv8_nano_img1024 has slightly higher true positives and lower false positives (Figure 4). Given the lower duration in training (Figure 2) and the very comparable accuracy (Figure 4), training on smaller number of instances was more convenient in this case.

> - `ℹ️ Point 3`

---

## 👏 Acknowledgments

> - `ℹ️  List any resources, contributors, inspiration, etc.`

---
