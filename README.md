# poppy-creature-mini-template

This repository contains the basic elements required to create a poppy mini creature. Poppy mini creatures are built from [XL320 motors](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm) from [Robotis](http://en.robotis.com/index/). Motors are linked together with [parametrable frames](https://github.com/jgrizou/robotis-scad) designed with [OpenScad](http://www.openscad.org/). The resulting robots are controlled using the [pypot library](https://github.com/poppy-project/pypot), typically running on a Raspberry Pi. These robots aim at being low cost and easy to modify.

A typical poppy-creaturename-mini repository includes a hardware, a software, and a doc folder:
- The [hardware](hardware) folder should include the 3D parts. This template already includes the submodules needed to create frames between XL320 motors using OpenScad.
- The [software](software) folder should contain the [pypot](https://github.com/poppy-project/pypot) config files specific to your robot.
- The [doc](doc) folder should contain the documentation. A good practice is to add a picture/video of your robot and explain how to get started.

Once you are happy with the design, it is also a good practice to create a release with the ready to use stl files and to create in the file [hardware/parts/BOM.md](hardware/parts/BOM.md) listing the number of parts required to build the robot.

Refer to [poppy-ergo-jr](https://github.com/poppy-project/poppy-ergo-jr) for an example.

### How to use this template

If you work with github, we suggest to [duplicate this repository](https://help.github.com/articles/duplicating-a-repository/) using the method described next:

```
# Create a new repository on your github account (https://help.github.com/articles/creating-a-new-repository/)
# Let's call it https://github.com/exampleuser/poppy-creaturename-mini.git

# In whatever folder of yours, clone this repo:
git clone --bare https://github.com/poppy-project/poppy-creature-mini-template.git

# Move in the repo:
cd poppy-creature-mini-template.git

# Mirror it to your new repo:
git push --mirror https://github.com/exampleuser/poppy-creaturename-mini.git

# Then delete the temporary repo:
cd ..
rm -rf poppy-creature-mini-template.git
```
