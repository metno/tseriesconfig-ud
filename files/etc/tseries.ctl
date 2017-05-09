# setup file for pu's time-series viewer

DisableWDB=True

Data=${HOME}/opdata

#------------------

<Path>

Etc= /etc/tseries/7.0
Images=/usr/share/pixmaps/tseries/7.0/
Lang=/usr/share/tseries/7.0/lang
Styles=/usr/share/tseries/7.0/style
Local=$(Home)/.tseries

#------------------
<klima>
url=localhost

<files>

Defs=$(Styles)/tsDiagrams.def
commonBookmarks=$(Etc)/tseries-bookmarks.common


Configure=$(Local)/tseries-7.0.conf
fimexBookmarks=$(Local)/bookmarks.fimex

WeatherSymbols=$(Etc)/symbols.def
stdImage=$(Images)/ts_station.xpm
finImage=$(Images)/ts_find.xpm
newImage=$(Images)/ts_new_station.xpm
iconImage=$(Images)/tseries.png
activeImage=$(Images)/ts_active.xpm

# Define a timestamp to get data from an URL
# nowtime=%d-%a
# run man date for formatting help

<fimex>
FimexStreamTypes= netcdf : ncml 

<server>

Client=Diana
Name=tseries

Command=/usr/bin/coserver4

<doc>
docURL=https://wiki.met.no/tseries/doc
newsURL=https://wiki.met.no/tseries/news


# ------------------------------------------------
#
#     F I M E X 
#
# -------------------------------------------------

<streams>

#
# add Fimex xml configfile by
# DataConfig=filename
# to each stream

CollectionName=FimexData
PreferredDiagram=Meteogram
InitialOpen=0


# ECMWF  NetCDF	 
DataFile=$(Data)/ec_atmos_[yyyymmdd_HH].nc
DataDescription=ECMWF
DataType= netcdf 
 


<fimexParameters>

# Format:
# PETSPAR   = TYPE | fimexname | Unit | extradim1 start1 len1 | extradim2 ...
# Negative number of dimension means anything from start until the dimensions end
#

# Standard NetCDF atmospheric models  ------------------------------------------------

MSLP,x,x,x = netcdf | air_pressure_at_sea_level         | hPa   
TT,x,x,x   = netcdf | air_temperature_2m                | Celsius
UU,x,x,x   = netcdf | x_wind_10m                        | kt
VV,x,x,x   = netcdf | y_wind_10m                        | kt
FG,x,x,x   = netcdf | fog_area_fraction                 | 0.01
CL,x,x,x   = netcdf | low_type_cloud_area_fraction      | 0.01
CM,x,x,x   = netcdf | medium_type_cloud_area_fraction   | 0.01
CH,x,x,x   = netcdf | high_type_cloud_area_fraction     | 0.01
RRAC,x,x,x = netcdf | precipitation_amount_acc          | kg/m^2
