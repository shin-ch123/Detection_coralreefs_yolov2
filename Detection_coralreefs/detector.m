%% gTruthオブジェクトの読み込み
yolo=load('expo_5_yolo.mat');
yolodetector=yolo.detector;
%% イメージの読み込み
I = imread('reef_ex.png');
%% 検出器を実行
[bboxes,scores] = detect(yolodetector,I);
%% 結果を表示
if(~isempty(bboxes))
  I = insertObjectAnnotation(I,'rectangle',bboxes,scores);
end
datacursormode on
figure
imshow(I)