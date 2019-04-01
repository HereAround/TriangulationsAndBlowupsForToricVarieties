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
#! Creates the blowup of a toric variety. To this end, the second argument must be a string which
#! encodes the locus that is to be blown-up. The blow-up process as such rests on 3.3.17 in CLS 
#! and thereby on a star sub-division of the fan
#! @Returns a variety
#! @Arguments a toric variety and a string
DeclareOperation( "BlowupOfToricVariety",
                  [ IsToricVariety, IsList ] );
