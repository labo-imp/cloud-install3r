#!/bin/bash
# # fecha revision   2025-06-25  04:45

logito="ins_pyworld_final.txt"
# si ya corrio esta seccion, exit
[ -e "/home/$USER/log/$logito" ] && exit 0

# requiero que el system este instalado
[ ! -e "/home/$USER/log/ins_system.txt" ] && exit 1
[ ! -e "/home/$USER/log/ins_pyworld_inicial.txt" ] && exit 1

source  /home/$USER/cloud-install/sh/common.sh

# Instalo Python SIN  Anaconda, Miniconda, etc-------------------------------
# Documentacion  https://docs.python-guide.org/starting/install3/linux/


source  /home/$USER/.venv/bin/activate


pip3 install setuptools wheel

# instalo paquetes de Python
pip3 install  Pandas  Scikit-learn  Statsmodels       \
              Numpy  Matplotlib  fastparquet          \
              pyarrow  tables  plotly  seaborn xlrd   \
              scrapy  SciPy  wheel  testresources     \
              Requests  Selenium  PyTest  Unit        \
              dask  numba  polars  Flask 


pip3 install  duckdb  jupysql  duckdb-engine

pip3 install  XGBoost  LightGBM  HyperOpt  optuna
pip3 install Keras


# librerias puntuales
pip3 install  kaggle  zulip  pika  gdown  mlflow
pip3 install  nbconvert[webpdf]  nb_pdf_template

pip3 install shap dask-expr umap umap-learn

sudo apt-get install python-dbus

cd
wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/dbus-python/1.3.2-5build5/dbus-python_1.3.2.orig.tar.gz
tar xzvf dbus-python_1.3.2.orig.tar.gz
cd dbus-python-1.3.2
./configure
make
sudo make install
cd
rm /home/$USER/dbus-python_1.3.2.orig.tar.gz
sudo rm -rf /home/$USER/dbus-python-1.3.2

pip3 install dbus-python

deactivate



source  /home/$USER/.venv312/bin/activate
pip3 install tensorflow
deactivate


source  /home/$USER/.venv/bin/activate

# forecasting
python3 -m pip install prophet
python3 -m pip install meson


pip3 install   holidays
pip3 install  --upgrade holidays
# pip3 install  --user  GreyKite
pip3 install    flux

# pip3 install   kats
pip3 install   AutoTS  statsforecast statsmodels
pip3 install   Tsfresh Darts
pip3 install   Flint Arrow Orbit Pastas

#####
pip3 install   skforecast
pip3 install   tslearn
pip3 install   PyTS
pip3 install   DTW-Python
pip3 install   dtaidistance
pip3 install   FastDTW
pip3 install   flood-forecast

pip3 install    zstd  zipp  zict
pip3 install    xlrd  xarray  workalendar
pip3 install    widgetsnbextension  webencodings  wcwidth
pip3 install    visions  vc  urllib3  unicodedata2
pip3 install    typing_extensions  tsfresh  traitlets
pip3 install    tqdm  tornado  toolz  tk  threadpoolctl
pip3 install    testpath  terminado  tenacity tblib tbb
pip3 install    tangled  stumpy  sortedcontainers

pip3 install    skyfield-data  skyfield
pip3 install    six  sgp4  seaborn-base requests  qtpy
pip3 install    pyzmq  pyyaml
pip3 install    pytz  pysocks  pyrsistent  pyqtwebengine
pip3 install    pyqtchart
pip3 install    pyparsing  pyopenssl  pymeeus pyluach
pip3 install    pygments  pydantic  pycparser
pip3 install    pyaml  psutil  protobuf  prompt_toolkit

pip3 install    prometheus_client  plotly  pillow
pip3 install    pickleshare  phik  patsy  partd  parso
pip3 install    pandocfilters  pandoc  packaging
pip3 install    openpyxl  olefile
pip3 install    markupsafe  matplotlib  matplotlib-inline
pip3 install    missingno
pip3 install    mistune  
pip3 install    mkl

pip3 install    msgpack-python  multimethod  munkres
pip3 install    nbclient  nbconvert  nbformat  nest-asyncio
pip3 install    netcdf4  networkx  notebook
pip3 install    libpython
pip3 install    llvmlite locket lunarcalendar  lunardate
pip3 install    argon2-cffi  argon2-cffi-bindings
pip3 install    arviz  async_generator  attrs  backcall
pip3 install    bleach  bokeh  brotli  brotlipy  certifi

pip3 install    cffi cftime  charset-normalizer  chart-studio
pip3 install    click  cloudpickle  colorama  colorlover  convertdate
pip3 install    cryptography
pip3 install    cycler
pip3 install    cython
pip3 install    cytoolz
pip3 install    daal4py

pip3 install    debugpy  decorator  defusedxml  distributed
pip3 install    entrypoints  ephem  et_xmlfile  flit-core
pip3 install    fonttools  freezegun  fsspec  hcrystalball
pip3 install    heapdict
pip3 install    hijri-converter
pip3 install    icu

pip3 install    idna
pip3 install    imagehash
pip3 install    importlib-metadata  importlib_metadata  importlib_resources
pip3 install    jedi  jinja2  joblib  jplephem  jsonschema
pip3 install    kiwisolver  lerc  libclang  liblapack
pip3 install    libnetcdf

pip3 install    yfinance alpha-vantage
pip install     ssh2-python

cd
git clone https://github.com/TimeSynth/TimeSynth.git
cd TimeSynth
python3 setup.py install
cd
rm -rf TimeSynth


deactivate


# version 12
source  /home/$USER/.venv312/bin/activate
pip install --upgrade pip

pip3 install    tensorflow
pip3 install    pmdarima
pip3 install    PyCaret   Auto_TS
pip3 install    neuralprophet
pip3 install    libsodium
pip3 install    htmlmin

pip3  install -U uv
python3 -m uv pip install autogluon --extra-index-url https://download.pytorch.org/whl/cpu  --prerelease=allow

deactivate


source  /home/$USER/.venv/bin/activate
pip install --upgrade pip

pip3 uninstall -y   protobuf
pip3 install    protobuf
pip3 install    grpcio-tools

pip3 install    tensorflow
pip3 install    libsodium



# instalo  datatable desde su repo
pip3 install  git+https://github.com/h2oai/datatable

deactivate


bitacora   "python packages final"

# grabo
fecha=$(date +"%Y%m%d %H%M%S")
echo $fecha > /home/$USER/log/$logito
