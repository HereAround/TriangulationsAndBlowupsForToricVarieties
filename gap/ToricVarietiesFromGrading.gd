################################################################################################
##
##  ToricVarietiesFromGrading.gd        TriangulationsAndBlowupsForToricVarieties package
##
##  Copyright 2019                      Martin Bies,       ULB Brussels
##
#! @Chapter Toric varieties from grading
##
################################################################################################



########################
##
#! @Section Constructors
##
########################

#! @Description
#! Creates a toric variety from a grading of Cox ring
#! @Returns a variety
#! @Arguments a list of lists of integers
DeclareOperation( "ToricVarietyFromGrading",
                  [ IsList ] );
