#############################################################################
##
##  PackageInfo.g       TriangulationsAndBlowupsForToricVarieties package
##                      Martin Bies
##
##  Copyright 2019      ULB Brussels
##
##  A package to compute triangulations and blowups of toric varieties
##
#############################################################################

SetPackageInfo( rec(

PackageName := "TriangulationsAndBlowupsForToricVarieties",

Subtitle := "A package to compute triangulations and blowups of toric varieties",

Version :=  Maximum( [
  "2019.02.09", ## Martins version
] ),

Date := ~.Version{[ 1 .. 10 ]},
Date := Concatenation( ~.Date{[ 9, 10 ]}, "/", ~.Date{[ 6, 7 ]}, "/", ~.Date{[ 1 .. 4 ]} ),



Persons := [
rec(
    LastName      := "Bies",
    FirstNames    := "Martin",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email := "martin.bies@alumni.uni-heidelberg.de",
    WWWHome := "https://www.ulb.ac.be/sciences/ptm/pmif/people.html",
    PostalAddress := Concatenation(
                 "Physique Théorique et Mathématique \n",
                 "Université Libre de Bruxelles \n",
                 "Campus Plaine - CP 231 \n",
                 "Building NO - Level 6 - Office O.6.111 \n",
                 "1050 Brussels \n",
                 "Belgium" ), 
    Place         := "Brussels",
    Institution   := "ULB Brussels"
  ),
],

Status := "dev",
PackageWWWHome := "https://github.com/HereAround/TriangulationsAndBlowupsForToricVarieties",
ArchiveFormats := ".tar.gz .zip",
ArchiveURL     := Concatenation( ~.PackageWWWHome, "TriangulationsAndBlowupsForToricVarieties-", ~.Version ),
README_URL     := Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

AbstractHTML := 
  Concatenation( "TriangulationsAndBlowupsForToricVarieties provides an extension of the ToricVarieties package",
                 "to compute triangulations and blowups" ),

PackageDoc := rec(
  BookName  := "TriangulationsAndBlowupsForToricVarieties",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A package to compute triangulations and blowups of toric varieties",
  Autoload  := false
),


Dependencies := rec(
  GAP := ">=4.7",
  NeededOtherPackages := [ [ "AutoDoc", ">=2016.02.16" ],
                           [ "ToricVarieties", ">=2016.05.03" ],
                           [ "TopcomInterface", ">= 2019.02.04" ]
                           ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := []

),

AvailabilityTest := function()
  
    return true;
  end,



Autoload := false,


Keywords := [ "Triangulations, blowups, toric varieties" ]

));
