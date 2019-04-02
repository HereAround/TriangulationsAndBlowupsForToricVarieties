################################################################################################
##
##  BlowupsOfToricVarieties.gd        TriangulationsAndBlowupsForToricVarieties package
##
##  Copyright 2019                      Martin Bies,       ULB Brussels
##
#! @Chapter Blowups of toric varieties
##
################################################################################################

########################
##
#! @Section Constructors
##
########################

#! @Description
#! The arguments are a toric variety vari, a string s which specifies the locus to be blown up and
#! a string which specifies how to name the new blowup coordinate. Based on this,
#! this method creates the blowup of a toric variety. This process rests on 3.3.17 in CLS
#! and performs a star sub-division of the fan.
#! @Returns a variety
#! @Arguments a toric variety, a list and a string
DeclareOperation( "BlowupOfToricVariety",
                  [ IsToricVariety, IsList, IsString ] );
