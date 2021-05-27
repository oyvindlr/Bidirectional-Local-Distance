# Bidirectional-Local-Distance
Matlab function for calculating the Bidirectional Local Distance (BLD) from two sets of points.
The BLD is a sort of generalization of the Hausdorff distance. Whereas the Haussdorf distance is a single value which represents the worst-case distance between the two clouds, the BLD gives one distance for each point in the reference cloud. 
The BLD was defined by Hak Soo Kim, Samuel B. Park, Simon S. Lo, James I. Monroe, Jason W. Sohn in their paper "Bidirectional local distance measure for comparing segmentations", https://doi.org/10.1118/1.4754802

Usage: 
d = bld(ref, test) 
Here, ref is the reference point cloud, and test is the test point cloud. The output d will contain one value for each point in ref, which is the local distance (BLD) at this point. 

