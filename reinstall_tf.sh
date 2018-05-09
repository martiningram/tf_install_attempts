TF_VERSION="https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.8.0-cp36-cp36m-linux_x86_64.whl"
TFP_VERSION="tensorflow-probability-gpu"

conda env remove -y -n r-tensorflow

echo "library(tensorflow)" > /tmp/reinstall_tf.R
echo "install_tensorflow(version='$TF_VERSION', extra_packages='$TFP_VERSION')" >> /tmp/reinstall_tf.R

Rscript /tmp/reinstall_tf.R

# Test this
echo "library(tensorflow)" > /tmp/test_tf.R
echo 'sess = tf$Session()' >> /tmp/test_tf.R

Rscript /tmp/test_tf.R
