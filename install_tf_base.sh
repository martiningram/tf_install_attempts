# Make sure we're clean
source deactivate
conda env remove -y -n r-tensorflow

# Create a new env
conda create -y -n r-tensorflow 
source activate r-tensorflow
conda install -y pip cudnn

# pip install tensorflow==1.8
pip install tensorflow-gpu==1.8
