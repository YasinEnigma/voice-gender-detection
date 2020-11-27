# Voice geneder detection 
Audio signal processing is a subfield of signal processing that is concerned with the electronic manipulation of audio signals. Audio signals are electronic representations of sound waves—longitudinal waves which travel through air, consisting of compressions and rarefactions. The energy contained in audio signals is typically measured in decibels. As audio signals may be represented in either digital or analog format, processing may occur in either domain. Analog processors operate directly on the electrical signal, while digital processors operate mathematically on its digital representation. 

# Programming language 

## [Octave](https://octave.org/doc/interpreter/)
GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations. Octave helps in solving linear and nonlinear problems numerically, and for performing other numerical experiments using a language that is mostly compatible with MATLAB. It may also be used as a batch-oriented language. Since it is part of the GNU Project, it is free software under the terms of the GNU General Public License.

Octave is one of the major free alternatives to MATLAB, others being Scilab and FreeMat. Scilab, however, puts less emphasis on (bidirectional) syntactic compatibility with MATLAB than Octave does.

## [Matlab](https://www.mathworks.com/)
MATLAB (matrix laboratory) is a multi-paradigm numerical computing environment and proprietary programming language developed by MathWorks. MATLAB allows matrix manipulations, plotting of functions and data, implementation of algorithms, creation of user interfaces, and interfacing with programs written in other languages, including C, C++, C#, Java, Fortran and Python.

Although MATLAB is intended primarily for numerical computing, an optional toolbox uses the MuPAD symbolic engine, allowing access to symbolic computing abilities. An additional package, Simulink, adds graphical multi-domain simulation and model-based design for dynamic and embedded systems.

As of 2018, MATLAB has more than 3 million users worldwide. MATLAB users come from various backgrounds of engineering, science, and economics. 

***In this project, we using Octave programming language***

# Requirement 
Octave syntax like the Matlab programming language, but there are many features exists in Matlab that not exists in Octave by default and you should using Octave package installer.

## Install Octave in Linux 
```shell
$ sudo apt install octave 
```

## Run Octave 
```shell
$ octave 
```

## Show installed packages
```octave
> pkg list
```

## Install package 
```octave
> pkg install -forge signal
> pkg install -forge communications
> pkg install -forge general 
> pkg install -forge control
> pkg install -forge package_name
```
***If you faced with error in package installation follow one of this commands***
* ```shell
    $ sudo octave
  ```

* ```shell
    $ sudo apt install octave-package_name
    $ sudo apt install octave-communications
  ```

## Load package 
```octave 
> pkg load signal
> pkg load package_name
```

# Audio dataset 
For download dataset and test program, I'm using these websites.
* [pacdv](https://www.pacdv.com/sounds/voices-1.html)
* [freesound](https://freesound.org/people/MadamVicious/packs/13820/)
* [soundsnap](https://www.soundsnap.com/tags/female)

# Clone project 
```shell
$ git clone https://github.com/YasinEnigma/voice_gender_detection/
$ cd voice_gender_detection
$ octave project.m
```

# TODO
- [ ] Improve the system accuracy.
- [ ] Voice age detection.
- [ ] Speaker detection 
