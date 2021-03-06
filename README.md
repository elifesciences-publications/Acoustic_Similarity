

### This code is associated with the paper from Achiro et al., "Neural activity in cortico-basal ganglia circuits of juvenile songbirds encodes performance during goal-directed learning". eLife, 2017. http://dx.doi.org/10.7554/eLife.26973



# Acoustic Similarity

We created custom software in MATLAB using many features created for Sound Analysis Pro (Tchernichovski, O. 2000 _Anim Behav._ 59:1167-1176) in order to 

* assign renditions of immature vocal utterances in juvenile songbirds to different syllable types, and 
* measure the acoustic similarity of these immature syllable renditions to mature syllables learned from an adult tutor.  

To assign syllable renditions to different types, we employed a combination of two measures of the acoustic distance between syllables that was then used to cluster syllables.  

1. The first distance measure was based on summary statistics of 10 different acoustic features.
2. The second distance measure was based on time-varying changes in 5 of those features.  

Similarity to tutor was calculated as the acoustic distance between each syllable rendition and its closest tutor syllable.  An alternate way of defining tutor similarity is as the distance between the center of the syllable cluster to which each rendition belonged and the closest tutor syllable (this is commented out in the code); for our data these two methods yielded highly similar results.

## Prerequisites

1. MATLAB R2013a or higher.

## Installation

1. Download the package by cloning this repository.
2. Open MATLAB, navigate to the download location, and add the root folder of the repository + all subfolders to the MATLAB path.

## Example Usage

You can segment syllables, perform clustering on syllables, or calculate tutor similarity using the provided functions. An example workflow is given below utilizing a sample data file that has been given.

1. Open MATLAB, and run segmentAndCluster.m, located in Acoustic_Similarity/workflow.
2. When prompted, select the example data file - Acoustic_Similarity/data/Gy242/Gy242_08_31_039.mat
3. As the script runs, check its progress and follow the onscreen prompts as they appear.  
**Important:** Mat files that the script prompts you to save must be saved in the same directory as the original data file (e.g. Acoustic_Similarity/data/Gy242).
4. After segmentAndCluster finishes, run prepareDRsylls.m, which takes in a birdID like so: prepareDRsylls('Gy242');
5. Then, run fullClusterByDayGy242.m
6. Finally, run compareTutorJuvenile.m. There will need to be a mat file containing tutor syllables in the same directory as the data files named tutor-[birdID].mat (e.g. tutor-Gy242.mat).

After running these steps, you should have a variety of mat files containing syllable, clustering, and tutor similarity information saved in the directory.

## Authors

Written by [John Shen](mailto:johndashen@gmail.com).  (c) 2013-2015.  

## License

This project is licensed under the GNU GPLv3 License - see the [LICENSE.md](LICENSE) file for details

## Acknowledgments

Thanks to:
* coauthors Sarah Bottjer and Jennifer Achiro for statistical, scientific and technical guidance.
* Arthur Shau for curating, revising and documentation.
* the members of USC's iLab for Matlab training and support.
