function dem_extr = loaddem (firstname, surname)

load('dem.mat');
r1 = firstname*10;
r2 = r1+r1*2;
c1 = surname*5;
c2 = c1+c1*3;
dem_extr = dem(r1:r2, c1:c2)