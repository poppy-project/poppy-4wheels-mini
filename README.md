# poppy-creature-mini-template

This is the basics required to create a poppy mini creature.

- /hardware already includes the submodules needed to create frames between XL320 motors using OpenScad.
- /software should contain the config file specific to your robot
- /doc should contain the doc

A good practice is to add a picture/video of your robot here and explain how to get started. 

Once you are happy with the design, it is also a good practice to create a release with the ready to use stl files.

If you work with github, we suggest to duplicate this repository using this method https://help.github.com/articles/duplicating-a-repository/ and as detailled next:

- create an **empty** repository on your github account (https://help.github.com/articles/creating-a-new-repository/), let's call it https://github.com/exampleuser/poppy-creaturename-mini.git
- in whatever folder of yours, clone this repo: 
  ```
  git clone --bare https://github.com/poppy-project/poppy-creature-mini-template.git
  ```
- enter the repo: 
```
  cd poppy-creature-mini-template.git
```
- and mirror it to your repo: 
```
  git push --mirror https://github.com/exampleuser/poppy-creaturename-mini.git
```
- then delete the temporary repo: 
```
cd ..
rm -rf poppy-creature-mini-template.git
```
