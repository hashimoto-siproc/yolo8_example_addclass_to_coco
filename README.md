# yolo8_example_addclass_to_coco

## Setup 
Install following.
- nvidia-driver
- docker
- NVIDIA Container Toolkit.

Clone repository and start container.
```
    git clone git@github.com:hashimoto-siproc/yolo8_example_addclass_to_coco.git
    cd  yolo8_example_addclass_to_coco
    docker-compose up build -d
```

Connect to container
```
docker exec  -it  yolo8_example_addclass_to_coco_ros_yolo8_1  bash
```

Start training
```
python train.py
```