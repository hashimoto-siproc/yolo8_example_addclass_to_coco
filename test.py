from ultralytics import YOLO

model = YOLO("runs/detect/train15/weights/best.pt")
# It'll use the data yaml file in model.pt if you don't set data.
# or you can set the data you want to val
model.val(data='grasing_data.yaml')
