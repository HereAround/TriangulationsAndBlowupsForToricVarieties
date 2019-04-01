################################################################################################
##
##  BlowupsOfToricVarieties.gd          TriangulationsAndBlowupsForToricVarieties package
##
##  Copyright 2019                      Martin Bies,       ULB Brussels
##
#! @Chapter Blowups of toric varieties
##
################################################################################################

########################
##
## Constructors
##
########################

InstallMethod( BlowupOfToricVariety,
               "for a toric variety and a string specifying the blowup locus",
               [ IsToricVariety, IsList ],
  function( rays, blowup_locus )

    return true;

end );
