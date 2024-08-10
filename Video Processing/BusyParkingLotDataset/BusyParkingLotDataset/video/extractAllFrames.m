clear
clc

video = VideoReader('BusyParkingLotUAVVideo.mp4');
num_frames = floor(video.Duration)*ceil(video.FrameRate);

for i = 1 : num_frames
    frame = read(video, i);
    imwrite(frame, ['frames2/frame_' num2str(i) '.png'], 'png');
    disp(['frame:' num2str(i)]);
end