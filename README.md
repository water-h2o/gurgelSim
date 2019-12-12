#gurgelSim

On this repo is the file structure used by the photon simulation. Here's a quick description of the directory tree:

* **dockerAnts**
    * **a2w_gurgel_1e_Dockerfile**
        * *Dockerfile*
        * *startup.sh*
    * **a2w_gurgel_b2b_Dockerfile**
        * *Dockerfile*
        * *startup.sh*
    * **a2w_gurgel_b2b_Dockerfile**
    * **iso_1sim**
        * **1e**
            * **d0**
        * **b2b**
            * **d0**
    * **iso_input**
        * **1e**
            * *1000 primary electron tracks in .txt files*
        * **b2b**
            * *1000 primary electron tracks in .txt files*
    * **workspace1**
        * **config**
            * **ants2**
                * **Config**
                    * *config.ini*
                    * *WindowConfig.ini*
                * **Quicksave**
                    * *QuickSave0.json*
                * **Tmp**
            * *ants_config*
            * *QtProject.conf*
    * *fullSim_1e.txt*
    * *fullSim_b2b.txt*
    * *Ideal_2.json*
    * *PMT.txt*
    * *README.md*

Now, I know that that file says WindowConfig, but that's just a remnant of the configs of the photon simulation software (ANTS2). I set it to not even start the X11 server within the container. In the dockerfiles, ROOT is a data analysis framework developed by CERN (https://root.cern.ch/), and yes, the name makes things very confusing sometimes. The way the simulation works is that it calls either fullSim_1e.txt or fullSim_b2b.txt.

##How to Run

* choose whether you want to simulate in each event single 2.5 MeV primaries ***(1e)*** or two back-to-back 1.25 MeV primaries ***(b2b)***. There's no wrong choice here, but if you run an even number of sessions it's probably better to have an equal number of simulations of each type.
* `docker build` the corresponding docker file
* `docker run -it -v /path/to/folder/dockerAnts/workspace1/config:/ants_config -v /path/to/folder/dockerAnts:/work <name_of_image>`
* it will proceed to very slowly fill up **iso_1sim/1e_or_b2b/d0**