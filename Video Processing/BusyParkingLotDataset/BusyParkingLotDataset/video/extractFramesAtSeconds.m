clear
clc

video = VideoReader('BusyParkingLotUAVVideo.mp4');
num_frames = floor(video.Duration)*ceil(video.FrameRate);

cnt = 0;
for i = 1 : ceil(video.FrameRate) : num_frames
    frame = read(video, i);
    imwrite(frame, ['frames/frame_' num2str(cnt) 's.png'], 'png');
    cnt = cnt + 1;
    disp([num2str(cnt) 's']);
end