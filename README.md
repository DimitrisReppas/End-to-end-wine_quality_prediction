# End-to-end-wine_quality_prediction
## Setup, train, evaluate and test 
### Run Locally
Clone the project

```bash
 git clone https://github.com/DimitrisReppas/End-to-end-wine_quality_prediction.git
```

Create and activate an environment 

```bash
conda create -n your_env_name python=3.7 -y
```

```bash
conda activate your_env_name
```

Install the requirements for this project.

```bash
pip install -r requirements.txt
```

### Dataset

The dataset we use can be found https://drive.google.com/drive/folders/18zqQiCJVgF7uzXgfbIJ-04zgz1ItNfF5?usp=sharing.

Download it and put it into: data_given/.

### Initialize Git and DVC and track data

```bash
git init
```
```bash
dvc init 
```
```bash
dvc add data_given/winequality.csv
```
### Start MLflow Tracking Server

Run the following command in a new command promt window
```bash
mlflow server --backend-store-uri sqlite:///mlflow.db --default-artifact-root ./artifacts --host 0.0.0.0 -p 1234
```
Navigate to MLflow UI in http://localhost:1234/ 

### Run the DVC Pipeline

The pipeline includes the following stages:
1) the data loading
2) data splitting
3) the training
4) the evaluation of the model on test set
5) choosing always the best model from the mlflow.db

Run the DVC Pipeline:
```bash
dvc repro
```
### Run Tests
These tests ensure that the code handles different scenarios correctly:
-They produce valid results for correct input ranges.
-They raise appropriate exceptions or return error messages for out-of-range inputs and incorrect column names.

pytest command
```bash
pytest -v
```
### Automatic testing

Each time you perform push or pull request an automatic testing of your code is being made with the added ci_cd.yaml in the .github\workflows directory


## Run the Wine Quality application

### Running the app and the inference model

pytest command
```bash
python app.py 
```

### Set up and run the app with Docker

The Docker container is configured to handle POST requests.

1) open Docker Desktop application 

2) ```docker-compose build```

3) ```docker-compose up -d```

4) Open your prefered browser and navigate to http://127.0.0.1:5000/ and start to use the application.

## Acknowledgement

This repository is inspired and based on https://github.com/c17hawke/simple-dvc-demo and on https://www.youtube.com/playlist?list=PLZoTAELRMXVOk1pRcOCaG5xtXxgMalpIe


