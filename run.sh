mkdir -p ./Trajectory
for i in {1..10}
do
    # fr3_walk_half
    echo "Processing on fr3_walk_half"
    mkdir ./Association/fr3_walk_half/
    mkdir ./Trajectory/fr3_walk_half/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/depth.txt mask_yolo --result_dir ./Association/fr3_walk_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/ ./Association/fr3_walk_half/association.txt ./Association/fr3_walk_half/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_half/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_half/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/depth.txt mask_ghost --result_dir ./Association/fr3_walk_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/ ./Association/fr3_walk_half/association.txt ./Association/fr3_walk_half/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_half/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_half/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/depth.txt mask_cbam --result_dir ./Association/fr3_walk_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/ ./Association/fr3_walk_half/association.txt ./Association/fr3_walk_half/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_half/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_half/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/depth.txt mask_lightweight --result_dir ./Association/fr3_walk_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_halfsphere/ ./Association/fr3_walk_half/association.txt ./Association/fr3_walk_half/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_half/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_half/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_walk_rpy
    echo "Processing on fr3_walk_rpy"
    mkdir ./Association/fr3_walk_rpy/
    mkdir ./Trajectory/fr3_walk_rpy/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/depth.txt mask_yolo --result_dir ./Association/fr3_walk_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/ ./Association/fr3_walk_rpy/association.txt ./Association/fr3_walk_rpy/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_rpy/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_rpy/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/depth.txt mask_ghost --result_dir ./Association/fr3_walk_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/ ./Association/fr3_walk_rpy/association.txt ./Association/fr3_walk_rpy/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_rpy/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_rpy/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/depth.txt mask_cbam --result_dir ./Association/fr3_walk_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/ ./Association/fr3_walk_rpy/association.txt ./Association/fr3_walk_rpy/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_rpy/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_rpy/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/depth.txt mask_lightweight --result_dir ./Association/fr3_walk_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_rpy/ ./Association/fr3_walk_rpy/association.txt ./Association/fr3_walk_rpy/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_rpy/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_rpy/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_walk_static
    echo "Processing on fr3_walk_static"
    mkdir ./Association/fr3_walk_static/
    mkdir ./Trajectory/fr3_walk_static/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/depth.txt mask_yolo --result_dir ./Association/fr3_walk_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/ ./Association/fr3_walk_static/association.txt ./Association/fr3_walk_static/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_static/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_static/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/depth.txt mask_ghost --result_dir ./Association/fr3_walk_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/ ./Association/fr3_walk_static/association.txt ./Association/fr3_walk_static/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_static/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_static/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/depth.txt mask_cbam --result_dir ./Association/fr3_walk_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/ ./Association/fr3_walk_static/association.txt ./Association/fr3_walk_static/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_static/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_static/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/depth.txt mask_lightweight --result_dir ./Association/fr3_walk_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_static/ ./Association/fr3_walk_static/association.txt ./Association/fr3_walk_static/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_static/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_static/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_walk_xyz
    echo "Processing on fr3_walk_xyz"
    mkdir ./Association/fr3_walk_xyz/
    mkdir ./Trajectory/fr3_walk_xyz/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/depth.txt mask_yolo --result_dir ./Association/fr3_walk_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/ ./Association/fr3_walk_xyz/association.txt ./Association/fr3_walk_xyz/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_xyz/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_xyz/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/depth.txt mask_ghost --result_dir ./Association/fr3_walk_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/ ./Association/fr3_walk_xyz/association.txt ./Association/fr3_walk_xyz/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_xyz/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_xyz/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/depth.txt mask_cbam --result_dir ./Association/fr3_walk_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/ ./Association/fr3_walk_xyz/association.txt ./Association/fr3_walk_xyz/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_xyz/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_xyz/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/depth.txt mask_lightweight --result_dir ./Association/fr3_walk_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_walking_xyz/ ./Association/fr3_walk_xyz/association.txt ./Association/fr3_walk_xyz/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_walk_xyz/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_walk_xyz/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_sit_half
    echo "Processing on fr3_sit_half"
    mkdir ./Association/fr3_sit_half/
    mkdir ./Trajectory/fr3_sit_half/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/depth.txt mask_yolo --result_dir ./Association/fr3_sit_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/ ./Association/fr3_sit_half/association.txt ./Association/fr3_sit_half/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_half/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_half/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/depth.txt mask_ghost --result_dir ./Association/fr3_sit_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/ ./Association/fr3_sit_half/association.txt ./Association/fr3_sit_half/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_half/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_half/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/depth.txt mask_cbam --result_dir ./Association/fr3_sit_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/ ./Association/fr3_sit_half/association.txt ./Association/fr3_sit_half/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_half/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_half/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/depth.txt mask_lightweight --result_dir ./Association/fr3_sit_half/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_halfsphere/ ./Association/fr3_sit_half/association.txt ./Association/fr3_sit_half/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_half/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_half/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_sit_rpy
    echo "Processing on fr3_sit_rpy"
    mkdir ./Association/fr3_sit_rpy/
    mkdir ./Trajectory/fr3_sit_rpy/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/depth.txt mask_yolo --result_dir ./Association/fr3_sit_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/ ./Association/fr3_sit_rpy/association.txt ./Association/fr3_sit_rpy/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_rpy/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_rpy/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/depth.txt mask_ghost --result_dir ./Association/fr3_sit_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/ ./Association/fr3_sit_rpy/association.txt ./Association/fr3_sit_rpy/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_rpy/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_rpy/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/depth.txt mask_cbam --result_dir ./Association/fr3_sit_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/ ./Association/fr3_sit_rpy/association.txt ./Association/fr3_sit_rpy/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_rpy/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_rpy/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/depth.txt mask_lightweight --result_dir ./Association/fr3_sit_rpy/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_rpy/ ./Association/fr3_sit_rpy/association.txt ./Association/fr3_sit_rpy/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_rpy/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_rpy/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_sit_static
    echo "Processing on fr3_sit_static"
    mkdir ./Association/fr3_sit_static/
    mkdir ./Trajectory/fr3_sit_static/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/depth.txt mask_yolo --result_dir ./Association/fr3_sit_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/ ./Association/fr3_sit_static/association.txt ./Association/fr3_sit_static/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_static/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_static/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/depth.txt mask_ghost --result_dir ./Association/fr3_sit_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/ ./Association/fr3_sit_static/association.txt ./Association/fr3_sit_static/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_static/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_static/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/depth.txt mask_cbam --result_dir ./Association/fr3_sit_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/ ./Association/fr3_sit_static/association.txt ./Association/fr3_sit_static/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_static/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_static/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/depth.txt mask_lightweight --result_dir ./Association/fr3_sit_static/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_static/ ./Association/fr3_sit_static/association.txt ./Association/fr3_sit_static/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_static/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_static/KeyFrameTrajectory_lightweight_$i.txt

    # fr3_sit_xyz
    echo "Processing on fr3_sit_xyz"
    mkdir ./Association/fr3_sit_xyz/
    mkdir ./Trajectory/fr3_sit_xyz/

    echo "Processing YOLO"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/depth.txt mask_yolo --result_dir ./Association/fr3_sit_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/ ./Association/fr3_sit_xyz/association.txt ./Association/fr3_sit_xyz/association_mask_yolo.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_xyz/CameraTrajectory_yolo_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_xyz/KeyFrameTrajectory_yolo_$i.txt

    echo "Processing Ghost"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/depth.txt mask_ghost --result_dir ./Association/fr3_sit_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/ ./Association/fr3_sit_xyz/association.txt ./Association/fr3_sit_xyz/association_mask_ghost.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_xyz/CameraTrajectory_ghost_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_xyz/KeyFrameTrajectory_ghost_$i.txt

    echo "Processing CBAM"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/depth.txt mask_cbam --result_dir ./Association/fr3_sit_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/ ./Association/fr3_sit_xyz/association.txt ./Association/fr3_sit_xyz/association_mask_cbam.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_xyz/CameraTrajectory_cbam_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_xyz/KeyFrameTrajectory_cbam_$i.txt

    echo "Processing Lightweight"
    python ./association_mask_generator.py /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/rgb.txt /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/depth.txt mask_lightweight --result_dir ./Association/fr3_sit_xyz/
    ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml /home/arya/Documents/Datasets/TUM/rgbd_dataset_freiburg3_sitting_xyz/ ./Association/fr3_sit_xyz/association.txt ./Association/fr3_sit_xyz/association_mask_lightweight.txt
    mv CameraTrajectory.txt ./Trajectory/fr3_sit_xyz/CameraTrajectory_lightweight_$i.txt
    mv KeyFrameTrajectory.txt ./Trajectory/fr3_sit_xyz/KeyFrameTrajectory_lightweight_$i.txt

    echo "Process is finished"
done