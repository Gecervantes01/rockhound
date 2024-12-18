# RockHound 🔍🪨

**RockHound** is a pocket geologist app designed for outdoor enthusiasts, budding geologists, and anyone with an interest in rocks and minerals. Users can snap a picture of any rock or mineral they find, and the app will use a custom-trained AI model to identify it, providing key information and details about its characteristics.

## Features

- **AI-Powered Rock Identification**: RockHound features a custom AI model designed to accurately identify rocks and minerals from images. By leveraging machine learning, the app becomes a powerful tool for identifying and understanding the world of geology.
  
- **Interactive AI Chatbot (Rocco the RockHound)**: Engage with Rocco the RockHound, the interactive AI chatbot. Rocco answers your geology-related questions and makes learning about rocks fun!

- **Digital Collection**: Maintain a digital collection of your finds. Users can save identified rocks, revisit them later, and learn more about their geological features.

## Project Focus

The project has evolved to include not only the development of the RockHound mobile app but also the training and refinement of a machine learning model specifically for rock identification. This model is trained using a diverse dataset of rock images, employing techniques such as data augmentation and convolutional neural networks (CNNs) to achieve high accuracy in identifying various rock types.

## Setup (To run model)

#### **Disclaimer:**
Training a convolutional neural network can be resource intensive!

#### 1. Environment
You'll want to have the following installed (**Skip if using Google Colab**):
  - [*Python*](https://www.python.org/downloads/) version 3.8 - 3.11
    
The Rockhound convolutional neural network(CNN) was written in a Jupyter Notebook. To work with the `.ipynb` file:
  - Install a Jupyter extension for your IDE of choice (additional Jupyter related extensions may be required). **If you're using JupyterLab or Google Colab this can be skipped**.

#### 2. Download Project Files
Once your environment is setup, download the ZIP containing all the files. For this purpose you'll only need the files within the `rh_model` folder. This should contain:
  - `dataset`, a folder containing all the data required to train/test the model.
  - `rockhound_cnn.ipynb`, a file containing the model code.

#### 3. Setup Dependencies
Open `rockhound_cnn.ipynb` and prior to running the first cell select a python kernel (must be between versions 8 - 11). Then, running the first code cell installs all dependencies necessary (this may take a minute). After this has completed, all imports needed are listed throughout the notebook, simply run each cell.

#### 4. Run Notebook Cells
Lastly, run the reamaining cells in sequential order observing the model's training, evaluation, and results.
