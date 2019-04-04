#############################################################################
##
##  makedoc.g           TriangulationsAndBlowupsForToricVarieties package
##                      Martin Bies
##
##  Copyright 2019      ULB Brussels
##
##  A package to compute triangulations and blowups of toric varieties
##
#############################################################################

LoadPackage( "AutoDoc" );

AutoDoc( "TriangulationsAndBlowupsForToricVarieties" : scaffold := true, autodoc :=
             rec( files := [ "doc/Intros.autodoc",
                         "gap/ToricVarietiesFromGrading.gd",
                         "examples/VarietiesFromGrading.g",
                         "gap/BlowupsOfToricVarieties.gd",
                         "examples/Blowups.g",                         
                         ],
             scan_dirs := []
             ),
         maketest := rec( folder := ".",
                          commands :=
                            [ "LoadPackage( \"IO_ForHomalg\" );",
                              "LoadPackage( \"GaussForHomalg\" );",
                              "LoadPackage( \"ToricVarieties\" );",
                              "LoadPackage( \"TriangulationsAndBlowupsForToricVarieties\" );",
                              "HOMALG_IO.show_banners := false;",
                              "HOMALG_IO.suppress_PID := true;",
                              "HOMALG_IO.use_common_stream := true;",
                             ]
                           )
);

QUIT;
