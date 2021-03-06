//
//  UIColor+FlatUI.m
//  FlatUI
//
//  Created by Jack Flintermann on 5/3/13.
//  Copyright (c) 2013 Jack Flintermann. All rights reserved.
//

//  Additional colors from http://www.flatuicolorpicker.com added by Robin Mehta.


#import "UIColor+FlatUI.h"

@implementation UIColor (FlatUI)

// Thanks to http://stackoverflow.com/questions/3805177/how-to-convert-hex-rgb-color-codes-to-uicolor
+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if ([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *) turquoiseColor {
    static UIColor *turquoise = nil;
    static dispatch_once_t dispatchToken;
    
    dispatch_once(&dispatchToken, ^{
        turquoise = [UIColor colorFromHexCode:@"1ABC9C"];
    });
    
    return turquoise;
}

+ (UIColor *) greenSeaColor {
    static UIColor *greenSea = nil;
    static dispatch_once_t greenToken;
    
    dispatch_once(&greenToken, ^{
        greenSea = [UIColor colorFromHexCode:@"16A085"];
    });
    
    return greenSea;
}

+ (UIColor *) emerlandColor {
    static UIColor *emerald = nil;
    static dispatch_once_t emeraldToken;
    
    dispatch_once(&emeraldToken, ^{
        emerald = [UIColor colorFromHexCode:@"2ECC71"];
    });
    
    return emerald;
}

+ (UIColor *) nephritisColor {
    static UIColor *nephritis = nil;
    static dispatch_once_t nephritisToken;
    
    dispatch_once(&nephritisToken, ^{
        nephritis = [UIColor colorFromHexCode:@"27AE60"];
    });
    
    return nephritis;
}

+ (UIColor *) peterRiverColor {
    static UIColor *peterRiver = nil;
    static dispatch_once_t peterToken;
    
    dispatch_once(&peterToken, ^{
        peterRiver = [UIColor colorFromHexCode:@"#3498DB"];
    });
    
    return peterRiver;
}

+ (UIColor *) belizeHoleColor {
    static UIColor *tripToBelize = nil; // Let's cook!
    static dispatch_once_t belizeToken;
    
    dispatch_once(&belizeToken, ^{
        tripToBelize = [UIColor colorFromHexCode:@"2980B9"];
    });
    
    return tripToBelize;
}

+ (UIColor *) amethystColor {
    static UIColor *amethyst = nil;
    static dispatch_once_t amethystToken;
    
    dispatch_once(&amethystToken, ^{
        amethyst = [UIColor colorFromHexCode:@"9B59B6"];
    });
    
    return amethyst;
}

+ (UIColor *) wisteriaColor {
    static UIColor *wisteria = nil;
    static dispatch_once_t wisteriaToken;
    
    dispatch_once(&wisteriaToken, ^{
        wisteria = [UIColor colorFromHexCode:@"8E44AD"];
    });
    
    return wisteria;
}

+ (UIColor *) wetAsphaltColor {
    static UIColor *asphalt = nil;
    static dispatch_once_t asphaltToken;
    
    dispatch_once(&asphaltToken, ^{
        asphalt = [UIColor colorFromHexCode:@"34495E"];
    });
    
    return asphalt;
}

+ (UIColor *) midnightBlueColor {
    static UIColor *midnightBlue = nil;
    static dispatch_once_t midnightBlueToken;
    
    dispatch_once(&midnightBlueToken, ^{
        midnightBlue = [UIColor colorFromHexCode:@"2C3E50"];
    });
    
    return midnightBlue;
}

+ (UIColor *) sunflowerColor {
    static UIColor *sunflower = nil;
    static dispatch_once_t sunflowerToken;
    
    dispatch_once(&sunflowerToken, ^{
        sunflower = [UIColor colorFromHexCode:@"F1C40F"];
    });
    
    return sunflower;
}

+ (UIColor *) tangerineColor {
    static UIColor *tangerine = nil;
    static dispatch_once_t tangerineToken;
    
    dispatch_once(&tangerineToken, ^{
        tangerine = [UIColor colorFromHexCode:@"F39C12"];
    });
    
    return tangerine;
}

+ (UIColor *) carrotColor {
    static UIColor *carrot = nil;
    static dispatch_once_t carrotToken;
    
    dispatch_once(&carrotToken, ^{
        carrot = [UIColor colorFromHexCode:@"E67E22"];
    });
    
    return carrot;
}

+ (UIColor *) pumpkinColor {
    static UIColor *pumpkin = nil;
    static dispatch_once_t pumpkinToken;
    
    dispatch_once(&pumpkinToken, ^{
        pumpkin = [UIColor colorFromHexCode:@"D35400"];
    });
    
    return pumpkin;
}

+ (UIColor *) alizarinColor {
    static UIColor *alizarin = nil;
    static dispatch_once_t alizarinToken;
    
    dispatch_once(&alizarinToken, ^{
        alizarin = [UIColor colorFromHexCode:@"E74C3C"];
    });
    
    return alizarin;
}

+ (UIColor *) pomegranateColor {
    static UIColor *pomegranate = nil;
    static dispatch_once_t pomegranateToken;
    
    dispatch_once(&pomegranateToken, ^{
        pomegranate = [UIColor colorFromHexCode:@"C0392B"];
    });
    
    return pomegranate;
}

+ (UIColor *) cloudsColor {
    static UIColor *clouds = nil;
    static dispatch_once_t cloudsToken;
    
    dispatch_once(&cloudsToken, ^{
        clouds = [UIColor colorFromHexCode:@"ECF0F1"];
    });
    
    return clouds;
}

+ (UIColor *) silverColor {
    static UIColor *silver = nil;
    static dispatch_once_t silverToken;
    
    dispatch_once(&silverToken, ^{
        silver = [UIColor colorFromHexCode:@"BDC3C7"];
    });
    
    return silver;
}

+ (UIColor *) concreteColor {
    static UIColor *concrete = nil;
    static dispatch_once_t concreteToken;
    
    dispatch_once(&concreteToken, ^{
        concrete = [UIColor colorFromHexCode:@"95A5A6"];
    });
    
    return concrete;
}

+ (UIColor *) asbestosColor {
    static UIColor *asbestos = nil;
    static dispatch_once_t asbestosToken;
    
    dispatch_once(&asbestosToken, ^{
        asbestos = [UIColor colorFromHexCode:@"7F8C8D"];
    });
    
    return asbestos;
}

/////////// ADDED COLORS

+ (UIColor *) chestnutRoseColor {
    static UIColor *chestnutRoseColor = nil;
    static dispatch_once_t chestnutRoseColorToken;
    
    dispatch_once(&chestnutRoseColorToken, ^{
        chestnutRoseColor = [UIColor colorFromHexCode:@"D24D57"];
    });
    
    return chestnutRoseColor;
}

+ (UIColor *) thunderbirdColor {
    static UIColor *thunderbirdColor = nil;
    static dispatch_once_t thunderbirdColorToken;
    
    dispatch_once(&thunderbirdColorToken, ^{
        thunderbirdColor = [UIColor colorFromHexCode:@"D91E18"];
    });
    
    return thunderbirdColor;
}

+ (UIColor *) oldBrickColor {
    static UIColor *oldBrickColor = nil;
    static dispatch_once_t oldBrickColorToken;
    
    dispatch_once(&oldBrickColorToken, ^{
        oldBrickColor = [UIColor colorFromHexCode:@"96281B"];
    });
    
    return oldBrickColor;
}

+ (UIColor *) oldBrickColor {
    static UIColor *oldBrickColor = nil;
    static dispatch_once_t oldBrickColorToken;
    
    dispatch_once(&oldBrickColorToken, ^{
        oldBrickColor = [UIColor colorFromHexCode:@"96281B"];
    });
    
    return oldBrickColor;
}

+ (UIColor *) flamingoColor {
    static UIColor *flamingoColor = nil;
    static dispatch_once_t flamingoColorToken;
    
    dispatch_once(&flamingoColorToken, ^{
        flamingoColor = [UIColor colorFromHexCode:@"EF4836"];
    });
    
    return flamingoColor;
}

+ (UIColor *) valenciaColor {
    static UIColor *valenciaColor = nil;
    static dispatch_once_t valenciaColorToken;
    
    dispatch_once(&valenciaColorToken, ^{
        valenciaColor = [UIColor colorFromHexCode:@"D64541"];
    });
    
    return valenciaColor;
}

+ (UIColor *) tallPoppyColor {
    static UIColor *tallPoppyColor = nil;
    static dispatch_once_t tallPoppyColorToken;
    
    dispatch_once(&tallPoppyColorToken, ^{
        tallPoppyColor = [UIColor colorFromHexCode:@"C0392B"];
    });
    
    return tallPoppyColor;
}

+ (UIColor *) monzaColor {
    static UIColor *monzaColor = nil;
    static dispatch_once_t monzaColorToken;
    
    dispatch_once(&monzaColorToken, ^{
        monzaColor = [UIColor colorFromHexCode:@"CF000F"];
    });
    
    return monzaColor;
}

+ (UIColor *) cinnabarColor {
    static UIColor *cinnabarColor = nil;
    static dispatch_once_t cinnabarColorToken;
    
    dispatch_once(&cinnabarColorToken, ^{
        cinnabarColor = [UIColor colorFromHexCode:@"E74C3C"];
    });
    
    return cinnabarColor;
}

+ (UIColor *) razzmatazzColor {
    static UIColor *razzmatazzColor = nil;
    static dispatch_once_t razzmatazzColorToken;
    
    dispatch_once(&razzmatazzColorToken, ^{
        razzmatazzColor = [UIColor colorFromHexCode:@"DB0A5B"];
    });
    
    return razzmatazzColor;
}

+ (UIColor *) sunsetOrangeColor {
    static UIColor *sunsetOrangeColor = nil;
    static dispatch_once_t sunsetOrangeColorToken;
    
    dispatch_once(&sunsetOrangeColorToken, ^{
        sunsetOrangeColor = [UIColor colorFromHexCode:@"F64747"];
    });
    
    return sunsetOrangeColor;
}

+ (UIColor *) waxFlowerColor {
    static UIColor *waxFlowerColor = nil;
    static dispatch_once_t waxFlowerColorToken;
    
    dispatch_once(&waxFlowerColorToken, ^{
        waxFlowerColor = [UIColor colorFromHexCode:@"F1A9A0"];
    });
    
    return waxFlowerColor;
}

+ (UIColor *) cabaretColor {
    static UIColor *cabaretColor = nil;
    static dispatch_once_t cabaretColorToken;
    
    dispatch_once(&cabaretColorToken, ^{
        cabaretColor = [UIColor colorFromHexCode:@"D2527F"];
    });
    
    return cabaretColor;
}

+ (UIColor *) newYorkPinkColor {
    static UIColor *newYorkPinkColor = nil;
    static dispatch_once_t newYorkPinkColorToken;
    
    dispatch_once(&newYorkPinkColorToken, ^{
        newYorkPinkColor = [UIColor colorFromHexCode:@"E08283"];
    });
    
    return newYorkPinkColor;
}

+ (UIColor *) radicalRedColor {
    static UIColor *radicalRedColor = nil;
    static dispatch_once_t radicalRedColorToken;
    
    dispatch_once(&radicalRedColorToken, ^{
        radicalRedColor = [UIColor colorFromHexCode:@"F62459"];
    });
    
    return radicalRedColor;
}

+ (UIColor *) sungloColor {
    static UIColor *sungloColor = nil;
    static dispatch_once_t sungloColorToken;
    
    dispatch_once(&sungloColorToken, ^{
        sungloColor = [UIColor colorFromHexCode:@"E26A6A"];
    });
    
    return sungloColor;
}

+ (UIColor *) snuffColor {
    static UIColor *snuffColor = nil;
    static dispatch_once_t snuffColorToken;
    
    dispatch_once(&snuffColorToken, ^{
        snuffColor = [UIColor colorFromHexCode:@"DCC6E0"];
    });
    
    return snuffColor;
}

+ (UIColor *) rebeccaPurpleColor {
    static UIColor *rebeccaPurpleColor = nil;
    static dispatch_once_t rebeccaPurpleColorToken;
    
    dispatch_once(&rebeccaPurpleColorToken, ^{
        rebeccaPurpleColor = [UIColor colorFromHexCode:@"663399"];
    });
    
    return rebeccaPurpleColor;
}

+ (UIColor *) honeyFlowerColor {
    static UIColor *honeyFlowerColor = nil;
    static dispatch_once_t honeyFlowerColorToken;
    
    dispatch_once(&honeyFlowerColorToken, ^{
        honeyFlowerColor = [UIColor colorFromHexCode:@"674172"];
    });
    
    return honeyFlowerColor;
}

+ (UIColor *) wistfulColor {
    static UIColor *wistfulColor = nil;
    static dispatch_once_t wistfulColorToken;
    
    dispatch_once(&wistfulColorToken, ^{
        wistfulColor = [UIColor colorFromHexCode:@"AEA8D3"];
    });
    
    return wistfulColor;
}

+ (UIColor *) plumColor {
    static UIColor *plumColor = nil;
    static dispatch_once_t plumColorToken;
    
    dispatch_once(&plumColorToken, ^{
        plumColor = [UIColor colorFromHexCode:@"913D88"];
    });
    
    return plumColor;
}

+ (UIColor *) seanceColor {
    static UIColor *seanceColor = nil;
    static dispatch_once_t seanceColorToken;
    
    dispatch_once(&seanceColorToken, ^{
        seanceColor = [UIColor colorFromHexCode:@"9A12B3"];
    });
    
    return seanceColor;
}

+ (UIColor *) mediumPurpleColor {
    static UIColor *mediumPurpleColor = nil;
    static dispatch_once_t mediumPurpleColorToken;
    
    dispatch_once(&mediumPurpleColorToken, ^{
        mediumPurpleColor = [UIColor colorFromHexCode:@"BF55EC"];
    });
    
    return mediumPurpleColor;
}

+ (UIColor *) lightWisteriaColor {
    static UIColor *lightWisteriaColor = nil;
    static dispatch_once_t lightWisteriaColorToken;
    
    dispatch_once(&lightWisteriaColorToken, ^{
        lightWisteriaColor = [UIColor colorFromHexCode:@"BE90D4"];
    });
    
    return lightWisteriaColor;
}

+ (UIColor *) studioColor {
    static UIColor *studioColor = nil;
    static dispatch_once_t studioColorToken;
    
    dispatch_once(&studioColorToken, ^{
        studioColor = [UIColor colorFromHexCode:@"8E44AD"];
    });
    
    return studioColor;
}

+ (UIColor *) sanMarinoColor {
    static UIColor *sanMarinoColor = nil;
    static dispatch_once_t sanMarinoColorToken;
    
    dispatch_once(&sanMarinoColorToken, ^{
        sanMarinoColor = [UIColor colorFromHexCode:@"446CB3"];
    });
    
    return sanMarinoColor;
}

+ (UIColor *) aliceBlueColor {
    static UIColor *aliceBlueColor = nil;
    static dispatch_once_t aliceBlueColorToken;
    
    dispatch_once(&aliceBlueColorToken, ^{
        aliceBlueColor = [UIColor colorFromHexCode:@"E4F1FE"];
    });
    
    return aliceBlueColor;
}

+ (UIColor *) royalBlueColor {
    static UIColor *royalBlueColor = nil;
    static dispatch_once_t royalBlueColorToken;
    
    dispatch_once(&royalBlueColorToken, ^{
        royalBlueColor = [UIColor colorFromHexCode:@"4183D7"];
    });
    
    return royalBlueColor;
}

+ (UIColor *) pictonBlueColor {
    static UIColor *pictonBlueColor = nil;
    static dispatch_once_t pictonBlueColorToken;
    
    dispatch_once(&pictonBlueColorToken, ^{
        pictonBlueColor = [UIColor colorFromHexCode:@"59ABE3"];
    });
    
    return pictonBlueColor;
}

+ (UIColor *) sprayColor {
    static UIColor *sprayColor = nil;
    static dispatch_once_t sprayColorToken;
    
    dispatch_once(&sprayColorToken, ^{
        sprayColor = [UIColor colorFromHexCode:@"81CFE0"];
    });
    
    return sprayColor;
}

+ (UIColor *) shakespeareColor {
    static UIColor *shakespeareColor = nil;
    static dispatch_once_t shakespeareColorToken;
    
    dispatch_once(&shakespeareColorToken, ^{
        shakespeareColor = [UIColor colorFromHexCode:@"52B3D9"];
    });
    
    return shakespeareColor;
}

+ (UIColor *) hummingBirdColor {
    static UIColor *hummingBirdColor = nil;
    static dispatch_once_t hummingBirdColorToken;
    
    dispatch_once(&hummingBirdColorToken, ^{
        hummingBirdColor = [UIColor colorFromHexCode:@"C5EFF7"];
    });
    
    return hummingBirdColor;
}

+ (UIColor *) pictonBlueBrightColor {
    static UIColor *pictonBlueBrightColor = nil;
    static dispatch_once_t pictonBlueBrightColorToken;
    
    dispatch_once(&pictonBlueBrightColorToken, ^{
        pictonBlueBrightColor = [UIColor colorFromHexCode:@"22A7F0"];
    });
    
    return pictonBlueBrightColor;
}

+ (UIColor *) curiousBlueColor {
    static UIColor *curiousBlueColor = nil;
    static dispatch_once_t curiousBlueColorToken;
    
    dispatch_once(&curiousBlueColorToken, ^{
        curiousBlueColor = [UIColor colorFromHexCode:@"3498DB"];
    });
    
    return curiousBlueColor;
}

+ (UIColor *) madisonColor {
    static UIColor *madisonColor = nil;
    static dispatch_once_t madisonColorToken;
    
    dispatch_once(&madisonColorToken, ^{
        madisonColor = [UIColor colorFromHexCode:@"2C3E50"];
    });
    
    return madisonColor;
}

+ (UIColor *) dodgerBlueColor {
    static UIColor *dodgerBlueColor = nil;
    static dispatch_once_t dodgerBlueColorToken;
    
    dispatch_once(&dodgerBlueColorToken, ^{
        dodgerBlueColor = [UIColor colorFromHexCode:@"19B5FE"];
    });
    
    return dodgerBlueColor;
}

+ (UIColor *) mingColor {
    static UIColor *mingColor = nil;
    static dispatch_once_t mingColorToken;
    
    dispatch_once(&mingColorToken, ^{
        mingColor = [UIColor colorFromHexCode:@"336E7B"];
    });
    
    return mingColor;
}

+ (UIColor *) mingColor {
    static UIColor *mingColor = nil;
    static dispatch_once_t mingColorToken;
    
    dispatch_once(&mingColorToken, ^{
        mingColor = [UIColor colorFromHexCode:@"336E7B"];
    });
    
    return mingColor;
}

+ (UIColor *) ebonyClayColor {
    static UIColor *ebonyClayColor = nil;
    static dispatch_once_t ebonyClayColorToken;
    
    dispatch_once(&ebonyClayColorToken, ^{
        ebonyClayColor = [UIColor colorFromHexCode:@"22313F"];
    });
    
    return ebonyClayColor;
}

+ (UIColor *) malibuColor {
    static UIColor *malibuColor = nil;
    static dispatch_once_t malibuColorToken;
    
    dispatch_once(&malibuColorToken, ^{
        malibuColor = [UIColor colorFromHexCode:@"6BB9F0"];
    });
    
    return malibuColor;
}

+ (UIColor *) curiousBlueShadeColor {
    static UIColor *curiousBlueColor = nil;
    static dispatch_once_t curiousBlueShadeColorToken;
    
    dispatch_once(&curiousBlueColorToken, ^{
        curiousBlueShadeColor = [UIColor colorFromHexCode:@"1E8BC3"];
    });
    
    return curiousBlueShadeColor;
}

+ (UIColor *) chambrayColor {
    static UIColor *chambrayColor = nil;
    static dispatch_once_t chambrayColorToken;
    
    dispatch_once(&chambrayColorToken, ^{
        chambrayColor = [UIColor colorFromHexCode:@"3A539B"];
    });
    
    return chambrayColor;
}

+ (UIColor *) pickledBlueWoodColor {
    static UIColor *pickledBlueWoodColor = nil;
    static dispatch_once_t pickledBlueWoodColorToken;
    
    dispatch_once(&pickledBlueWoodColorToken, ^{
        pickledBlueWoodColor = [UIColor colorFromHexCode:@"34495E"];
    });
    
    return pickledBlueWoodColor;
}

+ (UIColor *) hokiColor {
    static UIColor *hokiColor = nil;
    static dispatch_once_t hokiColorToken;
    
    dispatch_once(&hokiColorToken, ^{
        hokiColor = [UIColor colorFromHexCode:@"67809F"];
    });
    
    return hokiColor;
}

+ (UIColor *) jellyBeanColor {
    static UIColor *jellyBeanColor = nil;
    static dispatch_once_t jellyBeanColorToken;
    
    dispatch_once(&jellyBeanColorToken, ^{
        jellyBeanColor = [UIColor colorFromHexCode:@"2574A9"];
    });
    
    return jellyBeanColor;
}

+ (UIColor *) jacksonsPurpleColor {
    static UIColor *jacksonsPurpleColor = nil;
    static dispatch_once_t jacksonsPurpleColorToken;
    
    dispatch_once(&jacksonsPurpleColorToken, ^{
        jacksonsPurpleColor = [UIColor colorFromHexCode:@"1F3A93"];
    });
    
    return jacksonsPurpleColor;
}

+ (UIColor *) jordyBlueColor {
    static UIColor *jordyBlueColor = nil;
    static dispatch_once_t jordyBlueColorToken;
    
    dispatch_once(&jordyBlueColorToken, ^{
        jordyBlueColor = [UIColor colorFromHexCode:@"89C4F4"];
    });
    
    return jordyBlueColor;
}

+ (UIColor *) steelBlueColor {
    static UIColor *steelBlueColor = nil;
    static dispatch_once_t steelBlueColorToken;
    
    dispatch_once(&steelBlueColorToken, ^{
        steelBlueColor = [UIColor colorFromHexCode:@"4B77BE"];
    });
    
    return steelBlueColor;
}

+ (UIColor *) fountainBlueColor {
    static UIColor *fountainBlueColor = nil;
    static dispatch_once_t fountainBlueColorToken;
    
    dispatch_once(&fountainBlueColorToken, ^{
        fountainBlueColor = [UIColor colorFromHexCode:@"5C97BF"];
    });
    
    return fountainBlueColor;
}

+ (UIColor *) mediumTurquoiseColor {
    static UIColor *mediumTurquoiseColor = nil;
    static dispatch_once_t mediumTurquoiseColorToken;
    
    dispatch_once(&mediumTurquoiseColorToken, ^{
        mediumTurquoiseColor = [UIColor colorFromHexCode:@"4ECDC4"];
    });
    
    return mediumTurquoiseColor;
}

+ (UIColor *) aquaIslandColor {
    static UIColor *aquaIslandColor = nil;
    static dispatch_once_t aquaIslandColorToken;
    
    dispatch_once(&aquaIslandColorToken, ^{
        aquaIslandColor = [UIColor colorFromHexCode:@"A2DED0"];
    });
    
    return aquaIslandColor;
}

+ (UIColor *) gossipColor {
    static UIColor *gossipColor = nil;
    static dispatch_once_t gossipColorToken;
    
    dispatch_once(&gossipColorToken, ^{
        gossipColor = [UIColor colorFromHexCode:@"87D37C"];
    });
    
    return gossipColor;
}

+ (UIColor *) darkSeaGreenColor {
    static UIColor *darkSeaGreenColor = nil;
    static dispatch_once_t darkSeaGreenColorToken;
    
    dispatch_once(&darkSeaGreenColorToken, ^{
        darkSeaGreenColor = [UIColor colorFromHexCode:@"90C695"];
    });
    
    return darkSeaGreenColor;
}

+ (UIColor *) eucalyptusColor {
    static UIColor *eucalyptusColor = nil;
    static dispatch_once_t eucalyptusColorToken;
    
    dispatch_once(&darkSeaGreenColorToken, ^{
        eucalyptusColor = [UIColor colorFromHexCode:@"26A65B"];
    });
    
    return eucalyptusColor;
}

+ (UIColor *) caribbeanGreenColor {
    static UIColor *caribbeanGreenColor = nil;
    static dispatch_once_t caribbeanGreenColorToken;
    
    dispatch_once(&caribbeanGreenColorToken, ^{
        caribbeanGreenColor = [UIColor colorFromHexCode:@"03C9A9"];
    });
    
    return caribbeanGreenColor;
}

+ (UIColor *) silverTreeColor {
    static UIColor *silverTreeColor = nil;
    static dispatch_once_t silverTreeColorToken;
    
    dispatch_once(&silverTreeColorToken, ^{
        silverTreeColor = [UIColor colorFromHexCode:@"68C3A3"];
    });
    
    return silverTreeColor;
}

+ (UIColor *) downyColor {
    static UIColor *downyColor = nil;
    static dispatch_once_t downyColorToken;
    
    dispatch_once(&downyColorToken, ^{
        downyColor = [UIColor colorFromHexCode:@"65C6BB"];
    });
    
    return downyColor;
}

+ (UIColor *) mountainMeadowColor {
    static UIColor *mountainMeadowColor = nil;
    static dispatch_once_t mountainMeadowColorToken;
    
    dispatch_once(&mountainMeadowColorToken, ^{
        mountainMeadowColor = [UIColor colorFromHexCode:@"1BBC9B"];
    });
    
    return mountainMeadowColor;
}

+ (UIColor *) lightSeaGreenColor {
    static UIColor *lightSeaGreenColor = nil;
    static dispatch_once_t lightSeaGreenColorToken;
    
    dispatch_once(&lightSeaGreenColorToken, ^{
        lightSeaGreenColor = [UIColor colorFromHexCode:@"1BA39C"];
    });
    
    return lightSeaGreenColor;
}

+ (UIColor *) mediumAquamarineColor {
    static UIColor *mediumAquamarineColor = nil;
    static dispatch_one_t mediumAquamarineColorToken;
    
    dispatch_once(&mediumAquamarineColorToken, ^{
        mediumAquamarineColor = [UIColor colorFromHexCode:@"66CC99"];
    });
    
    return mediumAquamarineColor;
}

+ (UIColor *) madangColor {
    static UIColor *madangColor = nil;
    static dispatch_one_t madangColorToken;
    
    dispatch_once(&madangColorToken, ^{
        madangColor = [UIColor colorFromHexCode:@"C8F7C5"];
    });
    
    return madangColor;
}

+ (UIColor *) riptideColor {
    static UIColor *riptideColor = nil;
    static dispatch_one_t riptideColorToken;
    
    dispatch_once(&riptideColorToken, ^{
        riptideColor = [UIColor colorFromHexCode:@"86E2D5"];
    });
    
    return riptideColor;
}

+ (UIColor *) shamrockColor {
    static UIColor *shamrockColor = nil;
    static dispatch_one_t shamrockColorToken;
    
    dispatch_once(&shamrockColorToken, ^{
        shamrockColor = [UIColor colorFromHexCode:@"2ECC71"];
    });
    
    return shamrockColor;
}

+ (UIColor *) mountainMeadowDarkColor {
    static UIColor *mountainMeadowDarkColor = nil;
    static dispatch_one_t mountainMeadowDarkColorToken;
    
    dispatch_once(&mountainMeadowDarkColorToken, ^{
        mountainMeadowDarkColor = [UIColor colorFromHexCode:@"16A085"];
    });
    
    return mountainMeadowDarkColor;
}

+ (UIColor *) greenHazeColor {
    static UIColor *greenHazeColor = nil;
    static dispatch_one_t greenHazeColorToken;
    
    dispatch_once(&greenHazeColorToken, ^{
        greenHazeColor = [UIColor colorFromHexCode:@"019875"];
    });
    
    return greenHazeColor;
}

+ (UIColor *) freeSpeechAquamarineColor {
    static UIColor *freeSpeechAquamarineColor = nil;
    static dispatch_one_t freeSpeechAquamarineColorToken;
    
    dispatch_once(&freeSpeechAquamarineColorToken, ^{
        freeSpeechAquamarineColor = [UIColor colorFromHexCode:@"03A678"];
    });
    
    return freeSpeechAquamarineColor;
}

+ (UIColor *) oceanGreenColor {
    static UIColor *oceanGreenColor = nil;
    static dispatch_one_t oceanGreenColorToken;
    
    dispatch_once(&oceanGreenColorToken, ^{
        oceanGreenColor = [UIColor colorFromHexCode:@"4DAF7C"];
    });
    
    return oceanGreenColor;
}

+ (UIColor *) niagaraColor {
    static UIColor *niagaraColor = nil;
    static dispatch_one_t niagaraColorToken;
    
    dispatch_once(&niagaraColorToken, ^{
        niagaraColor = [UIColor colorFromHexCode:@"2ABB9B"];
    });
    
    return niagaraColor;
}

+ (UIColor *) jadeColor {
    static UIColor *jadeColor = nil;
    static dispatch_one_t jadeColorToken;
    
    dispatch_once(&jadeColorToken, ^{
        jadeColor = [UIColor colorFromHexCode:@"00B16A"];
    });
    
    return jadeColor;
}

+ (UIColor *) salemColor {
    static UIColor *salemColor = nil;
    static dispatch_one_t salemColorToken;
    
    dispatch_once(&salemColorToken, ^{
        salemColor = [UIColor colorFromHexCode:@"1E824C"];
    });
    
    return salemColor;
}

+ (UIColor *) observatoryColor {
    static UIColor *observatoryColor = nil;
    static dispatch_one_t observatoryColorToken;
    
    dispatch_once(&observatoryColorToken, ^{
        observatoryColor = [UIColor colorFromHexCode:@"049372"];
    });
    
    return observatoryColor;
}

+ (UIColor *) jungleGreenColor {
    static UIColor *jungleGreenColor = nil;
    static dispatch_one_t jungleGreenColorToken;
    
    dispatch_once(&jungleGreenColorToken, ^{
        jungleGreenColor = [UIColor colorFromHexCode:@"26C281"];
    });
    
    return jungleGreenColor;
}

+ (UIColor *) capeHoneyColor {
    static UIColor *capeHoneyColor = nil;
    static dispatch_one_t capeHoneyColorToken;
    
    dispatch_once(&capeHoneyColorToken, ^{
        capeHoneyColor = [UIColor colorFromHexCode:@"FDE3A7"];
    });
    
    return capeHoneyColor;
}

+ (UIColor *) californiaColor {
    static UIColor *californiaColor = nil;
    static dispatch_one_t californiaColorToken;
    
    dispatch_once(&californiaColorToken, ^{
        californiaColor = [UIColor colorFromHexCode:@"F89406"];
    });
    
    return californiaColor;
}

+ (UIColor *) fireBushColor {
    static UIColor *fireBushColor = nil;
    static dispatch_one_t fireBushColorToken;
    
    dispatch_once(&fireBushColorToken, ^{
        fireBushColor = [UIColor colorFromHexCode:@"EB9532"];
    });
    
    return fireBushColor;
}

+ (UIColor *) tahitiGoldColor {
    static UIColor *tahitiGoldColor = nil;
    static dispatch_one_t tahitiGoldColorToken;
    
    dispatch_once(&tahitiGoldColorToken, ^{
        tahitiGoldColor = [UIColor colorFromHexCode:@"E87E04"];
    });
    
    return tahitiGoldColor;
}

+ (UIColor *) casablancaColor {
    static UIColor *casablancaColor = nil;
    static dispatch_one_t casablancaColorToken;
    
    dispatch_once(&casablancaColorToken, ^{
        casablancaColor = [UIColor colorFromHexCode:@"F4B350"];
    });
    
    return casablancaColor;
}

+ (UIColor *) crustaColor {
    static UIColor *crustaColor = nil;
    static dispatch_one_t crustaColorToken;
    
    dispatch_once(&crustaColorToken, ^{
        crustaColor = [UIColor colorFromHexCode:@"F2784B"];
    });
    
    return crustaColor;
}

+ (UIColor *) jaffaColor {
    static UIColor *jaffaColor = nil;
    static dispatch_one_t jaffaColorToken;
    
    dispatch_once(&jaffaColorToken, ^{
        jaffaColor = [UIColor colorFromHexCode:@"EB974E"];
    });
    
    return jaffaColor;
}

+ (UIColor *) lightningYellowColor {
    static UIColor *lightningYellowColor = nil;
    static dispatch_one_t lightningYellowColorToken;
    
    dispatch_once(&lightningYellowColorToken, ^{
        lightningYellowColor = [UIColor colorFromHexCode:@"F5AB35"];
    });
    
    return lightningYellowColor;
}

+ (UIColor *) burntOrangeColor {
    static UIColor *burntOrangeColor = nil;
    static dispatch_one_t burntOrangeColorToken;
    
    dispatch_once(&burntOrangeColorToken, ^{
        burntOrangeColor = [UIColor colorFromHexCode:@"D35400"];
    });
    
    return burntOrangeColor;
}

+ (UIColor *) buttercupColor {
    static UIColor *buttercupColor = nil;
    static dispatch_one_t buttercupColorToken;
    
    dispatch_once(&buttercupColorToken, ^{
        buttercupColor = [UIColor colorFromHexCode:@"F39C12"];
    });
    
    return buttercupColor;
}

+ (UIColor *) ecstasyColor {
    static UIColor *ecstasyColor = nil;
    static dispatch_one_t ecstasyColorToken;
    
    dispatch_once(&ecstasyColorToken, ^{
        ecstasyColor = [UIColor colorFromHexCode:@"F9690E"];
    });
    
    return ecstasyColor;
}

+ (UIColor *) sandstormColor {
    static UIColor *sandstormColor = nil;
    static dispatch_one_t sandstormColorToken;
    
    dispatch_once(&sandstormColorToken, ^{
        sandstormColor = [UIColor colorFromHexCode:@"F9BF3B"];
    });
    
    return sandstormColor;
}

+ (UIColor *) jaffaDarkColor {
    static UIColor *jaffaDarkColor = nil;
    static dispatch_one_t jaffaDarkColorToken;
    
    dispatch_once(&jaffaDarkColorToken, ^{
        jaffaDarkColor = [UIColor colorFromHexCode:@"F27935"];
    });
    
    return jaffaDarkColor;
}

+ (UIColor *) zestColor {
    static UIColor *zestColor = nil;
    static dispatch_one_t zestColorToken;
    
    dispatch_once(&zestColorToken, ^{
        zestColor = [UIColor colorFromHexCode:@"E67E22"];
    });
    
    return zestColor;
}

+ (UIColor *) whiteSmokeColor {
    static UIColor *whiteSmokeColor = nil;
    static dispatch_one_t whiteSmokeColorToken;
    
    dispatch_once(&whiteSmokeColorToken, ^{
        whiteSmokeColor = [UIColor colorFromHexCode:@"ececec"];
    });
    
    return whiteSmokeColor;
}

+ (UIColor *) lynchColor {
    static UIColor *lynchColor = nil;
    static dispatch_one_t lynchColorToken;
    
    dispatch_once(&lynchColorToken, ^{
        lynchColor = [UIColor colorFromHexCode:@"6C7A89"];
    });
    
    return lynchColor;
}

+ (UIColor *) pumiceColor {
    static UIColor *pumiceColor = nil;
    static dispatch_one_t pumiceColorToken;
    
    dispatch_once(&pumiceColorToken, ^{
        pumiceColor = [UIColor colorFromHexCode:@"D2D7D3"];
    });
    
    return pumiceColor;
}

+ (UIColor *) galleryColor {
    static UIColor *galleryColor = nil;
    static dispatch_one_t galleryColorToken;
    
    dispatch_once(&galleryColorToken, ^{
        galleryColor = [UIColor colorFromHexCode:@"EEEEEE"];
    });
    
    return galleryColor;
}

+ (UIColor *) silverSandColor {
    static UIColor *silverSandColor = nil;
    static dispatch_one_t silverSandColorToken;
    
    dispatch_once(&silverSandColorToken, ^{
        silverSandColor = [UIColor colorFromHexCode:@"BDC3C7"];
    });
    
    return silverSandColor;
}

+ (UIColor *) porcelainColor {
    static UIColor *porcelainColor = nil;
    static dispatch_one_t porcelainColorToken;
    
    dispatch_once(&porcelainColorToken, ^{
        porcelainColor = [UIColor colorFromHexCode:@"ECF0F1"];
    });
    
    return porcelainColor;
}

+ (UIColor *) cascadeColor {
    static UIColor *cascadeColor = nil;
    static dispatch_one_t cascadeColorToken;
    
    dispatch_once(&cascadeColorToken, ^{
        cascadeColor = [UIColor colorFromHexCode:@"95A5A6"];
    });
    
    return cascadeColor;
}

+ (UIColor *) ironColor {
    static UIColor *ironColor = nil;
    static dispatch_one_t ironColorToken;
    
    dispatch_once(&ironColorToken, ^{
        ironColor = [UIColor colorFromHexCode:@"DADFE1"];
    });
    
    return ironColor;
}

+ (UIColor *) edwardColor {
    static UIColor *edwardColor = nil;
    static dispatch_one_t edwardColorToken;
    
    dispatch_once(&edwardColorToken, ^{
        edwardColor = [UIColor colorFromHexCode:@"ABB7B7"];
    });
    
    return edwardColor;
}

+ (UIColor *) cararraColor {
    static UIColor *cararraColor = nil;
    static dispatch_one_t cararraColorToken;
    
    dispatch_once(&cararraColorToken, ^{
        cararraColor = [UIColor colorFromHexCode:@"F2F1EF"];
    });
    
    return cararraColor;
}



/////////////////////////////////////////////////

+ (UIColor *) blendedColorWithForegroundColor:(UIColor *)foregroundColor
                              backgroundColor:(UIColor *)backgroundColor
                                 percentBlend:(CGFloat) percentBlend {
    CGFloat onRed, offRed, newRed, onGreen, offGreen, newGreen, onBlue, offBlue, newBlue, onWhite, offWhite;
    if (![foregroundColor getRed:&onRed green:&onGreen blue:&onBlue alpha:nil]) {
        [foregroundColor getWhite:&onWhite alpha:nil];
        onRed = onWhite;
        onBlue = onWhite;
        onGreen = onWhite;
    }
    if (![backgroundColor getRed:&offRed green:&offGreen blue:&offBlue alpha:nil]) {
        [backgroundColor getWhite:&offWhite alpha:nil];
        offRed = offWhite;
        offBlue = offWhite;
        offGreen = offWhite;
    }
    newRed = onRed * percentBlend + offRed * (1-percentBlend);
    newGreen = onGreen * percentBlend + offGreen * (1-percentBlend);
    newBlue = onBlue * percentBlend + offBlue * (1-percentBlend);
    return [UIColor colorWithRed:newRed green:newGreen blue:newBlue alpha:1.0];
}

@end
