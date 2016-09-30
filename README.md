# UP3D - use your UP printer with standard G-Code Slicers 
[![License](http://img.shields.io/:license-gpl2-blue.svg?style=flat-square)](http://www.gnu.org/licenses/gpl-2.0.html)
[![Build Status](https://travis-ci.org/UP3D-gcode/UP3D.svg?branch=master)](https://travis-ci.org/UP3D-gcode/UP3D) 


# To download click [![Downloads](https://img.shields.io/github/downloads/UP3D-gcode/UP3D/total.svg?maxAge=3600)](https://github.com/UP3D-gcode/UP3D/releases/latest) for the latest OS X, Linux or Windows package. 

Instructions: [up3dtools-how-to](http://stohn.de/3d/index.php/2016/03/10/up3dtools-little-how-to)

This command line tools support printers from Tiertime see http://www.up3d.com for more information. It allows you to use other advanced slicers together with your UP printer. The tools process and upload standard G-Code files to your UP printer.

A packaged GUI frontend myUP.app for OS X is available under downloads. It allows to explore interactively the various transcoder settings.

---

## up3dtranscode: 

G-Code to UpMachineCode (UMC) converter
```
Usage: up3dtranscode machinetype input.gcode output.umc nozzleheight [a_factor] [vmax_factor] [junction]

          machinetype:  mini / classic / plus / box / Cetus
          input.gcode:  g-code file from slic3r/cura/simplify
          output.umc:   up machine code file which will be generated
          nozzleheight: nozzle distance from bed (e.g. 123.45)
          a_factor:     acceleration factor in percent to defaults (.e.g. 50)
          vmax_factor:  speed factor in percent to max defaults (e.g. 150)
          junction:     junction deviation, default is 0.05 (e.g. 0.1)          

example: up3dtranscode mini input.gcode output.umc 123.1  20  150  0.1
         this reads input.gcode and generates an output.umc for the UP mini with nozzle height
         set to 123.1. The acceleration for the printer is reduced to 20%, max speed is set to
         150% and junction deviation is set to 0.1   

```
### See list of supported G-Commands in wiki page [G-Command Overview](https://github.com/UP3D-gcode/UP3D/wiki/Supported-G-Code-Commands)
---

## up3dload: 

UpMachineCode (UMC) uploader, sends the umc file to printer and starts a print
```
Usage: up3dload output.umc
```
---

## up3dshell: 

Interactive printer monitor and debugging tool, use to watch printing
```
Usage: up3dshell
```
---

## up3dinfo: 

Program to show the details of the connected UP printer
```
Usage: up3dinfo
```
