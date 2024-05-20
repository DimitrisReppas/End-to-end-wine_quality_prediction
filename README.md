# End-to-end-wine_quality_prediction

clone repo 

```bash
 git clone https://github.com/DimitrisReppas/End-to-end-wine_quality_prediction.git
```

create env 

```bash
conda create -n yourenv python=3.7 -y
```

activate env
```bash
conda activate youenv
```

created a req file

install the req
```bash
pip install -r requirements.txt
```
download the data from 

https://drive.google.com/drive/folders/18zqQiCJVgF7uzXgfbIJ-04zgz1ItNfF5?usp=sharing and put inside data_given/.

```bash
git init
```
```bash
dvc init 
```
```bash
dvc add data_given/winequality.csv
```
Run the following command in a new command promt window
```bash
mlflow server --backend-store-uri sqlite:///mlflow.db --default-artifact-root ./artifacts --host 0.0.0.0 -p 1234
```
Navigate to MLflow Ui in http://localhost:1234/ if you wish

Run the DVC Pipeline:
```bash
dvc repro
```
pytest command
```bash
pytest -v
```

setup commands -
```bash
pip install -e . 
```

build your own package commands- 
```bash
python setup.py sdist bdist_wheel
```



--- 
create an artifcats folder 


mlflow server command - 


mlflow server \
    --backend-store-uri sqlite:///mlflow.db \
    --default-artifact-root ./artifacts \
    --host 0.0.0.0 -p 1234
