import tensorflow as tf
import sys

if(len(sys.argv) == 3):
    pretrained_path = sys.argv[1]
    converted_path = sys.argv[2]

# Convert the model.
converter = tf.compat.v1.lite.TFLiteConverter.from_keras_model_file(pretrained_path)
converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS, tf.lite.OpsSet.SELECT_TF_OPS]
converter._experimental_lower_tensor_list_ops = False
tflite_model = converter.convert()

# Save the model.
with open(converted_path, 'wb') as f:
  f.write(tflite_model)