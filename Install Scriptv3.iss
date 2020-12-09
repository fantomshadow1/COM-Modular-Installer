﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "COM Modular Installer"
#define MyAppVersion "2.4.4.1"
//#define MyAppPublisher "Nobody"
//#define MyAppURL "http://www.tesin.com/"
//#define MyAppExeName 'COM Modular Installer'
[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8143E460-C581-40B8-9D11-2FFC2DD35ADF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
//AppPublisher={#MyAppPublisher}
//AppPublisherURL={#MyAppURL}
//AppSupportURL={#MyAppURL}
//AppUpdatesURL={#MyAppURL}
LicenseFile=Documentation\license.txt
InfoBeforeFile=Documentation\info.txt
;Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=Compiled_EXE
OutputBaseFilename={#MyAppName} {#MyAppVersion}
DefaultDirName=COM3d2 Modular Installer
AppendDefaultDirName=no
Compression=lzma2/ultra64
SolidCompression=yes
LZMAUseSeparateProcess=yes
//LZMANumBlockThreads=6
WizardStyle=modern
Uninstallable=no
DisableDirPage=no
DirExistsWarning=no
;Visual Edits
WizardSmallImageFile=UI\Icon.bmp
SetupIconFile=UI\Icon.ico
WizardImageFile=UI\sidebanner.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Types]
Name:"full"; Description: "Similar to Noctsoul's AIO";
Name:"eng"; Description: "English Game Version AIO-Like (Only Plugin Translations)"
Name:"notr"; Description: "No Translations AIO-Like"
Name:"compact"; Description: "Minimalist Install"
Name:"pic"; Description: "I just take pictures"
Name:"hen"; Description: "I just play, I don't take pictures"
Name:"self"; Description: "My Recommendations"
Name:"custom"; Description: "Okay, make your own choices"; Flags:iscustom
Name:"preset"; Description: "Custom Preset";
Name:"none"; Description: "I want nothing!";

[Components]

Name: Loader; Description: Mod Loader (Required for just about everything); Types: full compact;
  Name: Loader/bepinEX; Description: BepInEX (Recommended); Types: full notr compact eng pic self hen; Flags:Exclusive checkablealone

		Name: Loader/bepinEX/ConfigMan; Description: ConfigurationManager; Types: full notr compact eng pic self hen; Flags: dontinheritcheck;
			//Name: Loader/bepinEX/ConfigMan/GraphSet; Description: GraphicsSettings; Flags: dontinheritcheck;
	
		Name: Loader/bepinEX/UPCheck; Description: CMIUpdateChecker; Types: full notr compact eng pic self hen; Flags: dontinheritcheck;
		
		//Name: Loader/bepinEX/derim; Description:DeRim; Types: self; Flags: dontinheritcheck;
		
		Name: Loader/bepinEX/FixEyeMov; Description: FixEyeMov; Types:full eng notr hen self; Flags: dontinheritcheck;
		
		Name: Loader/bepinEX/FPSCount; Description: FPSCounter; Types: self; Flags: dontinheritcheck;
	
	  Name: Loader/bepinEX/FPSUn; Description: FPSUnlock; Types: self; Flags: dontinheritcheck;
		
		Name: Loader/bepinEX/InBlock; Description: InputHotkeyBlock; Types: full notr compact eng pic self hen; Flags: dontinheritcheck;
		
		Name: Loader/bepinEX/modref; Description: ModRefresh; Types:full pic self eng notr; Flags: dontinheritcheck;
		
		//Name: Loader/bepinEX/MuteBack; Description: MuteInBackground; Types: full notr compact eng pic self hen; Flags: dontinheritcheck;
		
		//Name: Loader/bepinEX/RunUniEdit; Description: RuntimeUnityEditor; Flags: dontinheritcheck;

    Name: Loader/bepinEX/scriptloader; Description: ScriptLoader; Types: Full notr compact eng pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/oldsubs; Description: Add Subs to Old Yotogi Script; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/dumpinfo; Description: DumpGameInfo Script; Types: Full notr compact eng pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/editname; Description: EditableNames Script; Types: Full notr compact eng pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/enascout; Description: Enable Scout Mode Script; Types: Full notr compact eng pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/errtex; Description: Error Texture Placeholder Script; Types: Full notr compact eng pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/thumbs; Description: Load Small Thumbs Script; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/quickedit; Description: Quick Edit Scene Script; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/redupe; Description: Report Dupes Script; Types: Full compact eng notr pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/scriptloader/wrapmode; Description: Wrap Mode Extend Script; Types: Full compact eng notr pic self hen; Flags: dontinheritcheck;

    Name: Loader/bepinEX/Translations; Description: Translation Plugins; Types: Full compact pic self hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/Translations/i18nEx; Description: i18nEx;  Types: full compact pic self hen; Flags: dontinheritcheck;
				Name:Loader/bepinEX/Translations/i18nEx/extrans; Description:Extra Translations; Types:full compact self pic hen; Flags: dontinheritcheck;
      Name: Loader/bepinEX/Translations/resredir; Description: Resource Redirector; Flags: dontinheritcheck;
        Name: Loader/bepinEX/Translations/resredir/xuat; Description: XUnity AutoTranslator; Types: full compact pic self hen; Flags: dontinheritcheck;


  Name: Loader/Sybaris; Description: Sybaris 2.1 (Not Recommended, JUST DON'T USE IT);Flags: Exclusive checkablealone

    Name: Loader/Sybaris/Translations; Description: Translation Plugins (Syb); Flags: dontinheritcheck
      Name: Loader/Sybaris/Translations/i18nEx; Description: i18nEx (Syb);
				Name:Loader/Sybaris/Translations/i18nEx/extrans; Description:Extra Translations (Syb); Flags: dontinheritcheck;
      Name: Loader/Sybaris/Translations/xuat; Description: XUnity AutoTranslator (Syb);


Name: Patchers; Description: Patchers; types: full compact eng pic self hen;

  Name: Patchers/addscreen; Description: AddScreenSize; Types: full eng notr self ;
  Name: Patchers/allprivate; Description: AllMaidsInPrivateMode; Types: self;
  Name: Patchers/autocon; Description: AutoConverter; Types: full compact eng notr pic self hen;
  Name: Patchers/bodycat; Description: BodyCategoryAdd; Types: full eng notr pic self hen;
  Name: Patchers/cacheedit; Description: CacheEditMenu;
  Name: Patchers/CCfix; Description: CreatorSaveFix;
  Name: Patchers/blinkstop; Description: EditBlinkStop; Types: full eng notr pic self hen;
  Name: Patchers/extsave; Description: ExternalSaveData; Types: Full self pic eng notr hen; Flags: checkablealone;
    Name: Patchers/extsave/maidvoice; Description: MaidVoicePitch; Types: full self pic eng notr hen; Flags: checkablealone;
      Name: Patchers/extsave/maidvoice/addmod; Description: AddModsSlider; Types: full self pic eng notr hen; Flags: checkablealone;
        Name: Patchers/extsave/maidvoice/addmod/distort; Description: DistortCorrect; Types:full self pic eng notr hen; Flags: checkablealone;
        Name: Patchers/extsave/maidvoice/addmod/eyelashesalpha; Description:EyelashesAlpha; Types:; Flags: checkablealone;
        Name: Patchers/extsave/maidvoice/addmod/seperateeye; Description:SeperateEyeParams; Types:full self pic eng notr hen; Flags: checkablealone;
  Name: Patchers/facetype; Description: FaceType; Types:full compact self pic eng notr hen;
  Name: Patchers/fastfade; Description: FastFade; Types: self pic;
  Name: Patchers/imgui; Description: IMGUITranslationLoader; types: full compact eng pic hen; Flags: checkablealone;
    Name:Patchers/imgui/translations; Description: Plugin Translation Files; Types:full compact eng pic self hen;
  Name: Patchers/modloader; Description: ModLoader; types: full compact eng notr pic self hen;
  Name: Patchers/namext; Description: NameExtender; Types: full compact self pic eng notr hen;
  Name: Patchers/neighuncen; Description: NeighUncensor; Types: full compact eng notr pic self hen;
  Name: Patchers/ntrlight; Description: NTRLight; Types:;
  ;Name: Patchers/prelabellite; Description: PresetLabeler(NoOverlays);
  Name: Patchers/quickedit; Description: QuickEditStart; Types: full pic self eng notr hen;
  Name: Patchers/rgbpal; Description: RGBPalette;
  Name: Patchers/saveset; Description: SaveSettingsInGame; Types: full compact self pic eng notr hen;

Name: plugins; Description: Unityinjector Plugins; Types: full compact;
	Name: plugins/boneslide; Description: AddBoneSlider; Types:;
  Name: plugins/addyot; Description: AddYotogiSliderSE; Types: Full eng notr hen self;
  Name: plugins/accex; Description: AlwaysColorChangeEX; Types: full self pic eng notr hen;
  Name: plugins/eraseout; Description: AutoEraseOutline; types: full pic eng notr hen;
  Name: plugins/cameracon; Description:CameraControlEx; Types:full pic eng notr self;
  Name: plugins/camerautil; Description: CameraUtility; Types: Full pic self eng notr hen;
  Name: plugins/hudclock; Description:ClockHud;
  ;Name: plugins/changedress; Description:ChangeDressPlugin; Types:; PropmyItem is better
  ;Name: plugins/clothstate; Description:ClothingState; Types:; HalfUndressing is better
  Name: plugins/colorhelp; Description: ColorPaletteHelper; Types:full self pic eng notr hen;
  Name: plugins/conwindow; Description:ConsistentWindowPosition; Types:full self pic eng notr hen;
  Name: plugins/nyou; Description:CustomNyou(Why...);
  Name: plugins/dancecamadjust; Description:DanceCameraAdjust;
  Name: plugins/derim; Description:DeRim; Types: self;
  Name: plugins/dressdam; Description:DressDamage; Types:self pic;
  Name: plugins/editmenufilt; Description: EditMenuFilter; Types:full self pic eng notr hen;
  Name: plugins/editselanim; Description: EditMenuSelectedAnime; Types:full self pic eng notr compact hen;
  Name: plugins/editundo; Description:EditSceneUndo;
  Name: plugins/emoears; Description:EmotionalEars(and tails); Types:self; Flags:checkablealone
    Name: plugins/emoears/aho; Description:Ahoge meshes; Types:; Flags:dontinheritcheck
    Name: plugins/emoears/mod; Description:Ear and tail meshes; Types:self; Flags:dontinheritcheck
  Name: plugins/extendrender; Description:ExtendRenderingRange; Types:full eng notr self pic;
    Name: plugins/extendrender/config; Description:x10 Extend Config; Types:self; Flags:dontinheritcheck
  Name: plugins/facecon; Description:FaceControl; Types:pic;
  Name: plugins/freeapp; Description:FreeModeApp; Types:full self eng notr hen;
  Name: plugins/freedress; Description:FreeModeDressKeeper; Types:full self eng notr hen;
  ;Name: plugins/futa; Description:FUTA; Types:;
  Name: plugins/halfundress; Description:HalfUnDressing; Types:full eng notr hen;
  Name: plugins/inout; Description:InOutAnimation; Types:full eng notr self hen;
  Name: plugins/lookmaid; Description:LookAtYourMaid;
  Name: plugins/lookmaster; Description:LookAtYourMaster;
  Name: plugins/mirror; Description:Mirror Props; Types:full eng notr;
  Name: plugins/mtacc; Description: MtAccelerator;
		Name: plugins/mtacc/AllScene; Description: AllScene Version;
  Name: plugins/MM; Description:MultipleMaids; Types:full pic self eng notr;
    Name: plugins/mm/mmposes; Description:1900 Poses for MM; Flags:dontinheritcheck
  Name: plugins/normexcite; Description:NormalizeExcite; Types:full eng notr self hen;
  Name: plugins/notecolor; Description:NoteColor; Types:full self eng notr hen;
  ;Name: plugins/olddance; Description:OldDancePlay; Types:full self eng hen;
  Name: plugins/objexp; Description:ObjectExplorer; Types:full self eng notr pic;
  Name: plugins/partsedit; Description:PartsEdit; Types:full pic self eng notr;
  Name: plugins/personaledit; Description:PersonalizedEditSceneSettings; Types:full pic self eng notr hen;
  Name: plugins/plugmanage; Description:PluginManager; Types:full pic eng notr;
  Name: plugins/PluginExt; Description:PluginExt (Required by a few other plugins. Recommended.); Types:full pic self eng notr compact;
  Name: plugins/pngplace; Description:PNGPlacement; Types:full pic self eng notr; Flags: checkablealone;
    Name: plugins/pngplace/expng; Description:More PNGs; Types:full self pic eng notr; Flags: dontinheritcheck
  Name: plugins/propitem; Description:PropMyItem; Types:full eng notr pic;
  Name: plugins/rhythmoption; Description: RhythmExtraOption; Types:full eng notr self hen;
  Name: plugins/scenecap; Description:SceneCapture; Types:full pic self eng notr; Flags: checkablealone;
    Name: plugins/scenecap/mpmats; Description:Modified Pmats; Flags: dontinheritcheck
    ;Name: plugins/scenecap/nocon; Description:Remove Conflicting Effects; Flags: dontinheritcheck Causes errors.
    Name: plugins/scenecap/VR; Description:VR Ini File; Flags: dontinheritcheck
  Name: plugins/seieki; Description:Seieki; Types:pic;
  Name: plugins/shaderchange; Description:ShaderChange; Types:full pic self eng notr;
  Name: plugins/shapeanimator; Description:ShapeAnimator; Types:full pic self eng notr hen;
    Name: plugins/shapeanimator/norm; Description:ShapeAnimator; Types:full pic self eng notr hen; Flags: exclusive;
    Name: plugins/shapeanimator/doc; Description:ShapeAnimator (Doc's Edit); Types:full pic self eng notr hen; Flags: exclusive;
  Name: plugins/SKAcc; Description:SKAccelerator; Types:full pic self eng notr hen;
  Name: plugins/skillcomshort; Description:SkillCommandShortCut; Types:full eng notr hen;
  Name: plugins/slimeshade; Description:SlimeShader; Types:;
	Name: plugins/smoothanim; Description: SmoothAnimation; Types:self;
	Name: plugins/TexLoad; Description:TextureLoader; Types:self;
		Name: plugins/TexLoad/PostLoad; Description:PosterLoader; Types:self;
  Name: plugins/toukaScreen; Description:ToukaScreenShot; Types:full pic self eng notr;
  Name: plugins/ureye; Description:UruuruEye; Types:;
  Name: plugins/vibemaid; Description:VibeYourMaid;
  Name: plugins/voicenorm; Description:VoiceNormalizer; Types:full self eng notr hen;
  Name: plugins/xtms; Description:XTMasterSlave; Types:full eng notr self hen;
  Name: plugins/yotutil; Description:YotogiUtil; Types:full eng notr;

Name: misc; Description:Miscelleanous Files; Types: full compact;
  Name:misc/sybarc; Description:Sybaris Arc Editor; Types:Full eng notr self pic;
	//Name:misc/dlccheck; Description:DLC Checker (Kry Fork); Types:Full eng notr self pic;
	//Name:misc/maidfiddle; Description:Maid Fiddler (Dangerous!);
  Name:misc/mmposes; Description:1900+ Poses for Studio Mode;
  Name:misc/bgnei; Description:Add More Game BGs to Photo Mode(And MM); Types:Full eng notr self pic;
  Name:misc/uncensor; Description:Uncensored Vanilla Textures; Types:full eng notr compact self pic hen;
  Name:misc/uncensormale; Description:Male Penis Replacer; Types:full eng notr compact self pic hen;
  Name:misc/extrauncensormale; Description:More Penis Variants; Types:full eng notr compact self pic hen;
  Name: misc/body; Description:Body Replacers; Types:full eng compact self pic hen;
    Name: misc/body/LoMobBody; Description:LoMobChara; Types:full eng notr compact self pic hen; Flags: Exclusive checkablealone
    Name: misc/body/analkupa; Description:AnalKupa; Types:; Flags: Exclusive checkablealone
		
Name: ext; Description:External Files; Types: full compact;
	Name:ext/dlccheck; Description:DLC Checker (Kry Fork); Types:Full eng notr self pic;
	Name:ext/maidfiddle; Description:Maid Fiddler (Dangerous!);


[Tasks]

Name:reg; Description: Fix Registry Directory; Flags:unchecked

Name:clean; Description: Cleaning Tasks; GroupDescription: Cleaning tasks to execute before installing.; Flags:unchecked
  Name:clean/moveold; Description: Move old installations to old folder; Flags:checkablealone exclusive
    Name:clean/moveold/mods; Description: Also move installer installed Mods (This will also move any saved MM poses); Flags:unchecked dontinheritcheck
    Name:clean/moveold/config; Description: Place configurations back (Warning! This can overwrite updated configs. Not suggested.); Flags:unchecked
  Name:clean/deleteold; Description: Delete previous installations (WARNING: VERY DESTRUCTIVE, YOU WILL LOSE ANY SYBARIS OR BEPINEX FOLDERS); Flags:unchecked exclusive checkablealone
    Name:clean/deleteold/mods; Description: Delete any mods installed by the Installer too(This will delete all of your saved MM Poses too); Flags:unchecked dontinheritcheck
    Name:clean/deleteold/old; Description: Delete any old installs aswell; Flags:unchecked dontinheritcheck

Name:readonly; Description: Remove Read-Only Flag On All Files; GroupDescription: Many users experience issues thanks to irroneously set Read-Only flags by the system. This tries to fix that, though due to permissions, UAC or other factors, it may not always work. It can always be done manually, however.;

[InstallDelete]

Type:filesandordirs; Name: "{app}\Sybaris"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\opengl32.dll"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\BepinEX"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\i18nEx"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\scripts"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\IMG"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\doorstop_config.ini"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\winhttp.dll"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\version.dll"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\EngSybarisArcEditor.exe"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\SybarisArcEditor.exe"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\COM3D2 DlC Checker.exe"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\IMGUITranslationLoader"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\CMI Documentation"; Tasks:clean/deleteold;
Type:filesandordirs; Name: "{app}\CMI.ver"; Tasks:clean/deleteold;

Type:filesandordirs; Name: "{app}\Mod\Extra Desk Items"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\Mirror_props"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\PhotMot_NEI"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\PhotoBG_NEI"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\PhotoBG_OBJ_NEI"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\Pose_sample"; Tasks:clean/deleteold/mods;    
Type:filesandordirs; Name: "{app}\Mod\[CMI]Uncensors"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\[CMI]PosterLoader"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\TextureUncensors"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\EmotionalEars"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\MultipleMaidsPose"; Tasks:clean/deleteold/mods;
Type:filesandordirs; Name: "{app}\Mod\CinemacicBloom_StreakPmats(SceneCapture)"; Tasks:clean/deleteold/mods;

Type:filesandordirs; Name: "{app}\OldInstall*"; Tasks:clean/deleteold/old;

[Run]
Filename: "https://forms.gle/PrXjqck2dQYMHvyY8"; Flags: shellexec runasoriginaluser postinstall; Description: "Open the Feedback Survey for CMI"

Filename: "{tmp}\MFInstall.exe"; Flags: runasoriginaluser skipifdoesntexist waituntilterminated; StatusMsg: "Waiting for Maid Fiddler installer to finish... (Users must follow the installer that opens!)"

//Very large, moved to secondary script to make management easier.
#include "files.iss"
//Very large, moved to tertiary script to make management easier.
#include "code.iss"