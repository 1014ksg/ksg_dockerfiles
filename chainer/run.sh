#!/bin/sh
xhost +local:user
docker run -it \
--runtime=nvidia \
--env=DISPLAY=$DISPLAY \
--privileged \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--env="QT_X11_NO_MITSHM=1" \
--rm \
-v "/etc/group:/etc/group:ro" \
-v "/etc/passwd:/etc/passwd:ro" \
-v "$(pwd)/../../researchutils:/researchutils" \
-v "$(pwd)/../../action_conditional_pressure_predict:/action_conditional_pressure_predict" \
-v "$(pwd)/../../make_dataset_GU:/make_dataset_GU" \
--net host \
ksg_chainer
