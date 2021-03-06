::
:: will be called at texture import step
::
@echo off
:: ---------------------------------------------------
:: --- check for settings
:: ---------------------------------------------------
IF %SETTINGS_LOADED% EQU 1 goto :SettingsLoaded

echo ERROR! Settings not loaded! - do not start this file directly!
EXIT /B 1

:SettingsLoaded

:: ---------------------------------------------------
:: add one line for every texture to import
::
:: %BIN_IMPORT_TEXTURE% <srcimage> <targetpath>.xbm <optional texturegroup>
::
:: e.g.:
::  %BIN_IMPORT_TEXTURE% data/entities/meshes/ciri_hw_clumping.png data/entities/meshes/ciri_hw_clumping.xbm

:: dlc/dlcntr/data/fx/orianna_smoke/smoke_front_animated02_ver2.xbm
:: dlc/dlcntr/data/entities/oriana/model/eye_d03.xbm
:: dlc\dlcntr\fx\

	:: Acero sword
%BIN_IMPORT_TEXTURE% data/entities/acero_sword/witcher_steel_acero_a01.tga data/entities/acero_sword/witcher_steel_acero_a01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/acero_sword/witcher_steel_acero_d01.tga data/entities/acero_sword/witcher_steel_acero_d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/acero_sword/witcher_steel_acero_n01.tga data/entities/acero_sword/witcher_steel_acero_n01.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data/entities/acero_sword/witcher_steel_acero_n02.tga data/entities/acero_sword/witcher_steel_acero_n02.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data/entities/acero_sword/witcher_steel_acero_s01.tga data/entities/acero_sword/witcher_steel_acero_s01.xbm WorldDiffuse

%BIN_IMPORT_TEXTURE% data/entities/baron/body_01_ma__junior_d01.tga data/entities/baron/body_01_ma__junior_d01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/baron/body_01_ma__junior_a01.tga data/entities/baron/body_01_ma__junior_a01.xbm CharacterDiffuse

robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\textures\journal\characters\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcntr\data\gameplay\gui_new\textures\journal\characters\ journal_baron_edward.png
robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\icons\characters\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcntr\data\gameplay\gui_new\icons\characters\ journal_baron_edward.png

robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\icons\inventory\oils\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcntr\data\gameplay\gui_new\icons\inventory\oils\ acero_fake_oil_64x64.png
robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\icons\inventory\weapons\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcntr\data\gameplay\gui_new\icons\inventory\weapons\ acero_steel_icon_64x128.png

	:: Triss fx
%BIN_IMPORT_TEXTURE% fx/fire_anim_04.png fx/fire_anim_04.xbm Particles
%BIN_IMPORT_TEXTURE% fx/fire_mid_2k.png fx/fire_mid_2k.xbm Particles
%BIN_IMPORT_TEXTURE% fx/fire_line_01.png fx/fire_line_01.xbm ParticlesWithoutAlpha
%BIN_IMPORT_TEXTURE% fx/fire_spark_04.png fx/fire_spark_04.xbm ParticlesWithoutAlpha
%BIN_IMPORT_TEXTURE% fx/fire_tileable_2.png fx/fire_tileable_2.xbm ParticlesWithoutAlpha
%BIN_IMPORT_TEXTURE% fx/fire_tileable.png fx/fire_tileable.xbm ParticlesWithoutAlpha
%BIN_IMPORT_TEXTURE% fx/torch_flame_02.png fx/torch_flame_02.xbm Particles
%BIN_IMPORT_TEXTURE% fx/torch_flame_09_anim.png fx/torch_flame_09_anim.xbm Particles

	:: NTR LOGO
%BIN_IMPORT_TEXTURE% data/gameplay/logos/ntr_logo_en.png data/gameplay/logos/ntr_logo_en.xbm WorldDiffuseWithAlpha
%BIN_IMPORT_TEXTURE% data/gameplay/logos/ntr_credits_1.png data/gameplay/logos/ntr_credits_1.xbm WorldDiffuseWithAlpha
%BIN_IMPORT_TEXTURE% data/gameplay/logos/ntr_credits_2.png data/gameplay/logos/ntr_credits_2.xbm WorldDiffuseWithAlpha
%BIN_IMPORT_TEXTURE% data/gameplay/logos/ntr_credits_3.png data/gameplay/logos/ntr_credits_3.xbm WorldDiffuseWithAlpha
%BIN_IMPORT_TEXTURE% data/gameplay/logos/ntr_credits_4.png data/gameplay/logos/ntr_credits_4.xbm WorldDiffuseWithAlpha
%BIN_IMPORT_TEXTURE% data/gameplay/logos/ntr_credits_5.png data/gameplay/logos/ntr_credits_5.xbm WorldDiffuseWithAlpha

	:: Bruxa morph torso
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/t_02__bruxa_bloody_d01.tga data/entities/oriana/model/bruxa/t_02__bruxa_bloody_d01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/t_02__bruxa_bloody_a01.tga data/entities/oriana/model/bruxa/t_02__bruxa_bloody_a01.xbm CharacterDiffuse

	:: Human bloody2 for bruxa
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_human_bloody2_a01.tga data/entities/oriana/model/bruxa/oriana_bruxa_human_bloody2_a01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_human_bloody2_d01.tga data/entities/oriana/model/bruxa/oriana_bruxa_human_bloody2_d01.xbm CharacterDiffuse

	:: Bruxa normal for bruxa (+n for bloody2, +a for vampire_bloody)
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_monster_a01.tga data/entities/oriana/model/bruxa/oriana_bruxa_monster_a01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_monster_d01.tga data/entities/oriana/model/bruxa/oriana_bruxa_monster_d01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_monster_n01.tga data/entities/oriana/model/bruxa/oriana_bruxa_monster_n01.xbm NormalmapGloss

	:: Bruxa bloody2 for bruxa
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_monster_bloody2_a01.tga data/entities/oriana/model/bruxa/oriana_bruxa_monster_bloody2_a01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/bruxa/oriana_bruxa_monster_bloody2_d01.tga data/entities/oriana/model/bruxa/oriana_bruxa_monster_bloody2_d01.xbm CharacterDiffuse

  :::: Orianna vampire clean
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/oriana_vampire_clean_d01.tga data/entities/oriana/model/oriana_vampire_clean_d01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/oriana_vampire_clean_n01.tga data/entities/oriana/model/oriana_vampire_clean_n01.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/oriana_vampire_clean_a01.tga data/entities/oriana/model/oriana_vampire_clean_a01.xbm CharacterDiffuse

  :::: Orianna human bloody
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/oriana_human_bloody_d01.tga data/entities/oriana/model/oriana_human_bloody_d01.xbm CharacterDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/oriana_human_bloody_a01.tga data/entities/oriana/model/oriana_human_bloody_a01.xbm CharacterDiffuse
:: Use vanilla a

  :::: Orianna vampire bloody
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/oriana_vampire_bloody_d01.tga data/entities/oriana/model/oriana_vampire_bloody_d01.xbm CharacterDiffuse
:: Use vampire clean clean n
:: Use bruxa monster a

  :: Orianna stuff
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/orianna_dress_d03.png data/entities/oriana/model/orianna_dress_d03.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/orianna_dress_n03.png data/entities/oriana/model/orianna_dress_n03.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data/entities/oriana/model/eye_d03.tga data/entities/oriana/model/eye_d03.xbm WorldDiffuse

::%BIN_IMPORT_TEXTURE% data/fx/orianna_smoke/water_bubble_no_alpha.tga data/fx/orianna_smoke/water_bubble_no_alpha.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% fx/orianna/smoke_front_animated02_ver2.png fx/orianna/smoke_front_animated02_ver2.xbm WorldDiffuseWithAlpha

:: w1 prol
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/azar/cr_rienc1_c1_d.tga data_w1_prol/entities/models/azar/cr_rienc1_c1_d.xbm CharacterDiffuseWithAlpha
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/azar/cr_rienc1_c1_n.tga data_w1_prol/entities/models/azar/cr_rienc1_c1_n.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/azar/h_01_ma__hakland_mage_d01.tga data_w1_prol/entities/models/azar/h_01_ma__hakland_mage_d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/azar/h_01_ma__hakland_mage_n01.tga data_w1_prol/entities/models/azar/h_01_ma__hakland_mage_n01.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/azar/man_average__d01.tga data_w1_prol/entities/models/azar/man_average__d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/azar/man_big__n01.tga data_w1_prol/entities/models/azar/man_big__n01.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data_w1_prol/entities/models/savolla/legs_d.tga data_w1_prol/entities/models/savolla/legs_d.xbm WorldDiffuse

:: iorweth
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__n.tga data/entities/iorwetm/model/iorweth__n.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__a01.tga data/entities/iorwetm/model/iorweth__a01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__d01.tga data/entities/iorwetm/model/iorweth__d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__hair_d01.tga data/entities/iorwetm/model/iorweth__hair_d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__n.tga data/entities/iorwetm/model/roche_b1_n01.xbm NormalmapGloss
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__a01.tga data/entities/iorwetm/model/roche_b1_a01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/model/iorweth__d01.tga data/entities/iorwetm/model/roche_b1_d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/novigrad_citizen_halfling/c_04_ha__novigrad_citizen_halfling_d01.tga data/entities/iorwetm/novigrad_citizen_halfling/c_04_ha__novigrad_citizen_halfling_d01.xbm WorldDiffuse
%BIN_IMPORT_TEXTURE% data/entities/iorwetm/novigrad_citizen_halfling/c_04_ha__novigrad_citizen_halfling_n01.tga data/entities/iorwetm/novigrad_citizen_halfling/c_04_ha__novigrad_citizen_halfling_n01.xbm NormalmapGloss
:: last parameter can be set to define texturegroup if necessary, like this:
::
:: %BIN_IMPORT_TEXTURE% <srctexture.png> /data/textures/<targetname>.xbm WorldDiffuseWithAlpha
::
:: default texturegroup is: WorldDiffuse
:: Supported texture group names:
::       BillboardAtlas
::       CharacterDiffuse
::       CharacterDiffuseWithAlpha
::       CharacterEmissive
::       CharacterNormal
::       CharacterNormalHQ
::       CharacterNormalmapGloss
::       Default
::       DetailNormalMap
::       DiffuseNoMips
::       Flares
::       FoliageDiffuse
::       Font
::       GUIWithAlpha
::       GUIWithoutAlpha
::       HeadDiffuse
::       HeadDiffuseWithAlpha
::       HeadEmissive
::       HeadNormal
::       HeadNormalHQ
::       MimicDecalsNormal
::       NormalmapGloss
::       NormalsNoMips
::       Particles
::       ParticlesWithoutAlpha
::       PostFxMap
::       QualityColor
::       QualityOneChannel
::       QualityTwoChannels
::       SpecialQuestDiffuse
::       SpecialQuestNormal
::       SystemNoMips
::       TerrainDiffuse
::       TerrainNormal
::       WorldDiffuse
::       WorldDiffuseWithAlpha
::       WorldEmissive
::       WorldNormal
::       WorldNormalHQ
::       WorldSpecular
