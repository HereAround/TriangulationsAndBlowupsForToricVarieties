################################################################################################
##
##  ToricVarietiesFromGrading.gi        TriangulationsAndBlowupsForToricVarieties package
##
##  Copyright 2019                      Martin Bies,       ULB Brussels
##
##  Chapter Toric varieties from grading
##
################################################################################################



########################
##
##  Section Constructors
##
########################

InstallMethod( ToricVarietyFromGrading,
               "for a list of lists of integers",
               [ IsList ],
  function( grading )
    local len, i, j, myZ, rays, trias, varieties, fan, shuffled_grading, variety, map;

    # (step0) check for valid input

    # are the gradings all of the same length
    len := DuplicateFreeList( List( [ 1 .. Length( grading ) ], i -> Length( grading[ i ] ) ) );
    if Length( len ) > 1 then
      Error( "The gradings must all be of the same length " );
      return;
    fi;

    # are the entries of the gradings integers?
    for i in [ 1 .. Length( grading ) ] do
      for j in [ 1 .. len[ 1 ] ] do
        if not IsInt( grading[ i ][ j ] ) then
          Error( "All entries of the gradings must be integers " );
          return;
        fi;
      od;
    od;


    # (step1) compute the fans compatible with these gradings
    myZ := HomalgRingOfIntegers();
    rays := EntriesOfHomalgMatrixAsListList( 
                                SyzygiesOfColumns( HomalgMatrix( grading, myZ ) ) );
    trias := points2allfinetriangs( rays, [], ["regular"] );


    # (step2) to match NConvex, the counting must start at 1, whilst topcom starts a 0 so...
    Apply( trias, i -> i +1 );


    # (step3) iterate over the obtained triangulations
    varieties := [];
    for i in [ 1 .. Length( trias ) ] do
    
        # compute the fan 
        fan := Fan( rays, trias[ i ] );

        # and check its properties
        if not IsPointed( fan ) then

            Error( "input fan must only contain strictly convex cones" );

        elif not IsFullDimensional( fan ) then

            Error( "currently the construction from gradings is only supported for toric varieties without torus factor" );

        fi;

        # then construct the variety
        variety := rec( WeilDivisors := WeakPointerObj( [ ] ), DegreeXLayers := rec() );
        ObjectifyWithAttributes(
                                variety, TheTypeFanToricVariety,
                                FanOfVariety, fan
                                );

        # the ray generators got shuffled, so we need to shuffle the gradings accordingly
        shuffled_grading := [];
        for j in [ 1 .. Length( TransposedMat( grading ) ) ] do
            Add( shuffled_grading, TransposedMat( grading )[ Position( rays, RayGenerators( fan )[ j ] ) ] );
        od;

        # identify the map from the Weil divisors to the class group
        map := HomalgMap( shuffled_grading,
                          TorusInvariantDivisorGroup( variety ),
                          Length( shuffled_grading[ 1 ] ) * HOMALG_MATRICES.ZZ
                        );

        # and set this map accordingly
        SetMapFromWeilDivisorsToClassGroup( variety, map );

        # and save this variety
        varieties[ i ] := variety;

    od;


    # (step4) return all these varieties
    return varieties;

end );
