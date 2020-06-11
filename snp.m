% Function name
function I=snp()

% Reads in the photo
A=imread('Lena_noise.jpg')

% Returns the width and hight of A ('Lena.jpg') by pixel number, such as
% 300, means 300 pixels in a row
[m,n]=size(A);

% For repeat sentence
for i=1:m % repeat m times
        for j=1:n % repeat n time 
            if(i > 1 && j > 1 && i < m-1 && j < n-1) % finds the pixels within the photo  
               % finds the surrounding pixels of the photo
                p1 = A(i,j);  
                p2 = A(i+1,j); 
                p3 = A(i,j+1); 
                p4 = A(i-1,j); 
                p5 = A(i,j-1); 
                p6 = A(i+1,j+1);
                p7 = A(i-1,j-1);
                p8 = A(i+1,j-1);
                p9 = A(i-1,j+1);
                % saves pixels into an array
                allpoints = [p1,p2,p3,p4,p5,p6,p7,p8,p9];
                % gets the average of the pixels
                avg = mean(allpoints);
                % sets the average pixel as the middle pixel
                A(i,j)=avg;
            end
        end
end
% outputs the image
imwrite(A,'antone_output_snp.jpg')