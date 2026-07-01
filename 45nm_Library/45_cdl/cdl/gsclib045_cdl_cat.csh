#! /bin/csh -f
#set verbose
# Concaternate all <StdCell>.cdl into a single file
# Note: PG = Power and Ground
#-----------------------------------------------------
set outputFilePGcdl   = gsclib045_allCells_pgpins.cdl # With supply pins on subckt line.
set outputFilePGspi   = gsclib045_allCells_pgpins.spi # With supply pins on subckt line and *.NETEXPR included
#
echo "FYI: Start (`date`)"
if (-f $outputFilePGcdl ) mv $outputFilePGcdl ${outputFilePGcdl}_`date +%Y%m%d`
if (-f $outputFilePGspi ) mv $outputFilePGspi ${outputFilePGspi}_`date +%Y%m%d`

#Generate a cell list (from the .cdl files):
\ls *.cdl | sort | sed -e "/^gsclib045_/d" -e "/^temp/d" > ./temp_gsclib045_cdl.list
#
#Create file header into the master files:
head -9 `head -1 ./temp_gsclib045_cdl.list` | sed -e "/^\* Top Cell Name\:/d" > ./$outputFilePGcdl
head -9 `head -1 ./temp_gsclib045_cdl.list` | sed -e "/^\* Top Cell Name\:/d" > ./$outputFilePGspi
#
#Concaternate CDL files:
foreach cdlFile (`cat ./temp_gsclib045_cdl.list`)
#	sed  -e s/\!//g  -e /^\*.NETEXPR/d $cdlFile > ./temp1a # Delete the "!" mark and delete line with *.NETEXPR
	sed  -e s/\!//g  $cdlFile                   > ./temp1a # Delete the "!" mark and delete line with *.NETEXPR
       \mv ./temp1a $cdlFile    #Caution: Replace the .cdl file
          sed  /\.SUBCKT/,/\.ENDS/\!d $cdlFile > ./temp1a #Delete the rest outside of .SUBCKT/ENDS
	  more ./temp1a >> ./$outputFilePGspi
	  echo ""       >> ./$outputFilePGspi
	    more ./temp1a | sed -e /^\*.NETEXPR/d  >> ./$outputFilePGcdl
	    echo ""                                >> ./$outputFilePGcdl 
	echo  -n "+"
end
#
# Clean up the local junk files
if (-f ./temp1a) \rm -f ./temp1a
if (-f ./temp_gsclib045_cdl.list) \rm -f ./temp_gsclib045_cdl.list
#
echo ""
echo "FYI: Done (`date`)"
#
if (-f ./$outputFilePGcdl ) nedit ./$outputFilePGcdl &
if (-f ./$outputFilePGspi ) nedit ./$outputFilePGspi &
#
