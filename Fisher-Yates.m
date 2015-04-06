%Because this shuffle is done using rounds of operations on subsets of decreasing size, 
%this is not an algorithm that can be vectorized using built-in MATLAB functions. 
%So, we have to go old-school, no fancy MATLAB trickery.
function list = knuthShuffle(list)
 
    for i = (numel(list):-1:2)  
 
        j = floor(i*rand(1) + 1); %Generate random int between 1 and i
 
        %Swap element i with element j.
        list([j i]) = list([i j]);    
    end
end
