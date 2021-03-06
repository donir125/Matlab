// code compter l'image pour peindre les pixels dans la diagonale principale en rouge EN matlab 
I = imread('colo.jpg');
s = size(I,1,2);
figure(1)
imshow(I)
line([1 s(2)],[1 s(1)],'Color',[1 0 0])
// pour compter le nombre de pixel vert ous. bien dans une image 
%Load image
rgb = imread('kamara.jpg');
figure(1)
imshow(rgb)

%%Find green points
greenPoints = rgb(:,:,1)<=0 & rgb(:,:,2)>=235 & rgb(:,:,3)<=0;
fprintf('Image has %d green pixels\n',sum(sum(greenPoints)))
%%Highlight green on image
rgbgreen = uint8(cat(3,greenPoints,greenPoints,greenPoints)).*rgb;
figure(2)
imshow(rgbgreen)

%%Find beue points
bleuePoints = rgb(:,:,1)<=100 & rgb(:,:,2)<=100 & rgb(:,:,3)<=255;
fprintf('Image has %d bleue pixels\n',sum(sum(bleuePoints)))
%%Highlight green on image
rgbbleue= uint8(cat(3,bleuePoints,bleuePoints,bleuePoints)).*rgb;
figure(3)
imshow(rgbbleue)



