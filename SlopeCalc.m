function S = SlopeCalc(DEM,Resolution,Method)
[x,y]=size(DEM);
switch Method
    case 1 %nested loops 
        for i=2:x-1
            for j=2:y-1
                deltaZX=(DEM(i+1,j)-DEM(i-1,j))/(2*Resolution);
                deltaZY=(DEM(i,j+1)-DEM(i,j-1))/(2*Resolution);
                S(i,j) = sqrt((deltaZX^2)+(deltaZY^2));
            end
        end
    case 2 %indexed calculations  
        deltaZX = (DEM(3:end,2:end-1)-DEM(1:end-2,2:end-1))./(2*Resolution);
        deltaZY = (DEM(2:end-1,3:end)-DEM(2:end-1,1:end-2))./(2*Resolution);
        S = sqrt((deltaZX.^2)+(deltaZY.^2));
end
end
