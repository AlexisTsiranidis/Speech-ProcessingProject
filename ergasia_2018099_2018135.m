%open txt file to write the results
fileid = fopen('C:\Users\tsira\Documents\Karidis_sound\Listes.txt','w');

%define meters
x1 = 800.00;
x2 = 1.3;
x3 = 550.00;
x4 = 799.00;
x5 = 820.00;
x6 = 1.7;
x7 = 1.22;
x8 = 1.8;

z1 = 165.00;
z2 = 210.00;
z3 = 130.00;
z4 = 180.00;
z5 = 80.00;
z6 = 129.00;
z7 = 100.00;
z8 = 180.00;

k1 = 276.00;
k2 = 4.5;
k3 = 1.5;
k4 = 2.6;
k5 = 3.2;
k6 = 4.8;
k7 = 4.1;
k8 = 4.6;

%SONG1
[song1,fs1] = audioread("C:\Users\tsira\Documents\Karidis_sound\promises_samsmith.wav");

centroid1 = spectralCentroid(song1,fs1);
spectralCentroid(song1,fs1);

rolloffPoint1 = spectralRolloffPoint(song1,fs1);
spectralRolloffPoint(song1,fs1);

pitchf1 = pitch(song1,fs1);
%finding average
centroid1_avg = mean(centroid1(:, end));
rolloffPoint1_avg = mean(rolloffPoint1(:, end));
pitchf1_avg = mean(pitchf1(:, end));

%SONG2
[song2,fs2] = audioread("C:\Users\tsira\Documents\Karidis_sound\portugal_salvador.wav");

centroid2 = spectralCentroid(song2,fs2);
spectralCentroid(song2,fs2);

rolloffPoint2 = spectralRolloffPoint(song2,fs2);
spectralRolloffPoint(song2,fs2);

pitchf2 = pitch(song2,fs2);
%finding average
centroid2_avg = mean(centroid2(:, end));
rolloffPoint2_avg = mean(rolloffPoint2(:, end));
pitchf2_avg = mean(pitchf2(:, end));

%SONG3
[song3,fs3] = audioread("C:\Users\tsira\Documents\Karidis_sound\czech_2022.wav");

centroid3 = spectralCentroid(song3,fs3);
spectralCentroid(song3,fs3);

rolloffPoint3 = spectralRolloffPoint(song3,fs3);
spectralRolloffPoint(song3,fs3);

pitchf3 = pitch(song3,fs3);
%finding average
centroid3_avg = mean(centroid3(:, end));
rolloffPoint3_avg = mean(rolloffPoint3(:, end));
pitchf3_avg = mean(pitchf3(:, end));

%SONG4
[song4,fs4] = audioread("C:\Users\tsira\Documents\Karidis_sound\portugal_2022.wav");

centroid4 = spectralCentroid(song4,fs4);
spectralCentroid(song4,fs4);

rolloffPoint4 = spectralRolloffPoint(song4,fs4);
spectralRolloffPoint(song4,fs4);

pitchf4 = pitch(song4,fs4);
%finding average
centroid4_avg = mean(centroid4(:, end));
rolloffPoint4_avg = mean(rolloffPoint4(:, end));
pitchf4_avg = mean(pitchf4(:, end));

%SONG5
[song5,fs5] = audioread("C:\Users\tsira\Documents\Karidis_sound\black_betty.wav");

centroid5 = spectralCentroid(song5,fs5);
spectralCentroid(song5,fs5);

rolloffPoint5 = spectralRolloffPoint(song5,fs5);
spectralRolloffPoint(song5,fs5);

pitchf5 = pitch(song5,fs5);
%finding average
centroid5_avg = mean(centroid5(:, end));
rolloffPoint5_avg = mean(rolloffPoint5(:, end));
pitchf5_avg = mean(pitchf5(:, end));

%SONG6
[song6,fs6] = audioread("C:\Users\tsira\Documents\Karidis_sound\hush.wav");

centroid6 = spectralCentroid(song6,fs6);
spectralCentroid(song6,fs6);

rolloffPoint6 = spectralRolloffPoint(song6,fs6);
spectralRolloffPoint(song6,fs6);

pitchf6 = pitch(song6,fs6);
%finding average
centroid6_avg = mean(centroid6(:, end));
rolloffPoint6_avg = mean(rolloffPoint6(:, end));
pitchf6_avg = mean(pitchf6(:, end));

%SONG7
[song7,fs7] = audioread("C:\Users\tsira\Documents\Karidis_sound\sacrifice.wav");

centroid7 = spectralCentroid(song7,fs7);
spectralCentroid(song7,fs7);

rolloffPoint7 = spectralRolloffPoint(song7,fs7);
spectralRolloffPoint(song7,fs7);

pitchf7 = pitch(song7,fs7);
%finding average
centroid7_avg = mean(centroid7(:, end));
rolloffPoint7_avg = mean(rolloffPoint7(:, end));
pitchf7_avg = mean(pitchf7(:, end));

%SONG8
[song8,fs8] = audioread("C:\Users\tsira\Documents\Karidis_sound\venom.wav");

centroid8 = spectralCentroid(song8,fs8);
spectralCentroid(song8,fs8);

rolloffPoint8 = spectralRolloffPoint(song8,fs8);
spectralRolloffPoint(song8,fs8);

pitchf8 = pitch(song8,fs8);
%finding average
centroid8_avg = mean(centroid8(:, end));
rolloffPoint8_avg = mean(rolloffPoint8(:, end));
pitchf8_avg = mean(pitchf8(:, end));

%check song1 for distribution to playlists
if (centroid1_avg >= x1) && (centroid1_avg <= x2) && (pitchf1_avg >=z1) && (pitchf1_avg <= z2) && (rolloffPoint1_avg >= k1) && (rolloffPoint1_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 1-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid1_avg >= x3) && (centroid1_avg <= x4) && (pitchf1_avg >=z3) && (pitchf1_avg <= z4) && (rolloffPoint1_avg >= k3) && (rolloffPoint1_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 1-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid1_avg >= x5) && (centroid1_avg <= x6) && (pitchf1_avg >=z5) && (pitchf1_avg <= z6) && (rolloffPoint1_avg >= k5) && (rolloffPoint1_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 1-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid1_avg >= x7) && (centroid1_avg <= x8) && (pitchf1_avg >=z7) && (pitchf1_avg <= z8) && (rolloffPoint1_avg >= k7) && (rolloffPoint1_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 1-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 1-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song2 for distribution to playlists
if (centroid2_avg >= x1) && (centroid2_avg <= x2) && (pitchf2_avg >=z1) && (pitchf2_avg <= z2) && (rolloffPoint2_avg >= k1) && (rolloffPoint2_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 2-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid2_avg >= x3) && (centroid2_avg <= x4) && (pitchf2_avg >=z3) && (pitchf2_avg <= z4) && (rolloffPoint2_avg >= k3) && (rolloffPoint2_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 2-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid2_avg >= x5) && (centroid2_avg <= x6) && (pitchf2_avg >=z5) && (pitchf2_avg <= z6) && (rolloffPoint2_avg >= k5) && (rolloffPoint2_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 2-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid2_avg >= x7) && (centroid2_avg <= x8) && (pitchf2_avg >=z7) && (pitchf2_avg <= z8) && (rolloffPoint2_avg >= k7) && (rolloffPoint2_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 2-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 2-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song3 for distribution to playlists
if (centroid3_avg >= x1) && (centroid3_avg <= x2) && (pitchf3_avg >=z1) && (pitchf3_avg <= z2) && (rolloffPoint3_avg >= k1) && (rolloffPoint3_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 3-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid3_avg >= x3) && (centroid3_avg <= x4) && (pitchf3_avg >=z3) && (pitchf3_avg <= z4) && (rolloffPoint3_avg >= k3) && (rolloffPoint3_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 3-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid3_avg >= x5) && (centroid3_avg <= x6) && (pitchf3_avg >=z5) && (pitchf3_avg <= z6) && (rolloffPoint3_avg >= k5) && (rolloffPoint3_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 3-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid3_avg >= x7) && (centroid3_avg <= x8) && (pitchf3_avg >=z7) && (pitchf3_avg <= z8) && (rolloffPoint3_avg >= k7) && (rolloffPoint3_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 3-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 3-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song4 for distribution to playlists
if (centroid4_avg >= x1) && (centroid4_avg <= x2) && (pitchf4_avg >=z1) && (pitchf4_avg <= z2) && (rolloffPoint4_avg >= k1) && (rolloffPoint4_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 4-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid4_avg >= x3) && (centroid4_avg <= x4) && (pitchf4_avg >=z3) && (pitchf4_avg <= z4) && (rolloffPoint4_avg >= k3) && (rolloffPoint4_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 4-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid4_avg >= x5) && (centroid4_avg <= x6) && (pitchf4_avg >=z5) && (pitchf4_avg <= z6) && (rolloffPoint4_avg >= k5) && (rolloffPoint4_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 4-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid4_avg >= x7) && (centroid4_avg <= x8) && (pitchf4_avg >=z7) && (pitchf4_avg <= z8) && (rolloffPoint4_avg >= k7) && (rolloffPoint4_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 4-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 4-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song5 for distribution to playlists
if (centroid5_avg >= x1) && (centroid5_avg <= x2) && (pitchf5_avg >=z1) && (pitchf5_avg <= z2) && (rolloffPoint5_avg >= k1) && (rolloffPoint5_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 5-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid5_avg >= x3) && (centroid5_avg <= x4) && (pitchf5_avg >=z3) && (pitchf5_avg <= z4) && (rolloffPoint5_avg >= k3) && (rolloffPoint5_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 5-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid5_avg >= x5) && (centroid5_avg <= x6) && (pitchf5_avg >=z5) && (pitchf5_avg <= z6) && (rolloffPoint5_avg >= k5) && (rolloffPoint5_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 5-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid5_avg >= x7) && (centroid5_avg <= x8) && (pitchf5_avg >=z7) && (pitchf5_avg <= z8) && (rolloffPoint5_avg >= k7) && (rolloffPoint5_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 5-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 5-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song6 for distribution to playlists
if (centroid6_avg >= x1) && (centroid6_avg <= x2) && (pitchf6_avg >=z1) && (pitchf6_avg <= z2) && (rolloffPoint6_avg >= k1) && (rolloffPoint6_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 6-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid6_avg >= x3) && (centroid6_avg <= x4) && (pitchf6_avg >=z3) && (pitchf6_avg <= z4) && (rolloffPoint6_avg >= k3) && (rolloffPoint6_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 6-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid6_avg >= x5) && (centroid6_avg <= x6) && (pitchf6_avg >=z5) && (pitchf6_avg <= z6) && (rolloffPoint6_avg >= k5) && (rolloffPoint6_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 6-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid6_avg >= x7) && (centroid6_avg <= x8) && (pitchf6_avg >=z7) && (pitchf6_avg <= z8) && (rolloffPoint6_avg >= k7) && (rolloffPoint6_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 6-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 6-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song7 for distribution to playlists
if (centroid7_avg >= x1) && (centroid7_avg <= x2) && (pitchf7_avg >=z1) && (pitchf7_avg <= z2) && (rolloffPoint7_avg >= k1) && (rolloffPoint7_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 7-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid7_avg >= x3) && (centroid7_avg <= x4) && (pitchf7_avg >=z3) && (pitchf7_avg <= z4) && (rolloffPoint7_avg >= k3) && (rolloffPoint7_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 7-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid7_avg >= x5) && (centroid7_avg <= x6) && (pitchf7_avg >=z5) && (pitchf7_avg <= z6) && (rolloffPoint7_avg >= k5) && (rolloffPoint7_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 7-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid7_avg >= x7) && (centroid7_avg <= x8) && (pitchf7_avg >=z7) && (pitchf7_avg <= z8) && (rolloffPoint7_avg >= k7) && (rolloffPoint7_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 7-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 7-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end
%check song8 for distribution to playlists
if (centroid8_avg >= x1) && (centroid8_avg <= x2) && (pitchf8_avg >=z1) && (pitchf8_avg <= z2) && (rolloffPoint8_avg >= k1) && (rolloffPoint8_avg <= k2);
    %grafei sthn lista
    fill1 = "Song 8-List1 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid8_avg >= x3) && (centroid8_avg <= x4) && (pitchf8_avg >=z3) && (pitchf8_avg <= z4) && (rolloffPoint8_avg >= k3) && (rolloffPoint8_avg <= k4);
    %grafei sthn lista
    fill1 = "Song 8-List2 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid8_avg >= x5) && (centroid8_avg <= x6) && (pitchf8_avg >=z5) && (pitchf8_avg <= z6) && (rolloffPoint8_avg >= k5) && (rolloffPoint8_avg <= k6);
    %grafei sthn lista
    fill1 = "Song 8-List3 ";
    fprintf(fileid,'%s\n',fill1);
elseif (centroid8_avg >= x7) && (centroid8_avg <= x8) && (pitchf8_avg >=z7) && (pitchf8_avg <= z8) && (rolloffPoint8_avg >= k7) && (rolloffPoint8_avg <= k8);
    %grafei sthn lista
    fill1 = "Song 8-List4 ";
    fprintf(fileid,'%s\n',fill1);
else
    %grafei sthn lista
    fill1 = "Song 8-Doesnt meet the criteria for any list ";
    fprintf(fileid,'%s\n',fill1);
end



