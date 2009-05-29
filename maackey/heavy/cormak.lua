-- $Id$
unitDef = {
  unitname            = [[cormak]],
  name                = [[Outlaw]],
  description         = [[Riot Bot]],
  acceleration        = 0.099874,
  bmcode              = [[1]],
  brakeRate           = 0.12366,
  buildCostEnergy     = 250,
  buildCostMetal      = 250,
  builder             = false,
  buildPic            = [[cormak.png]],
  buildTime           = 250,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = [[1]],
  category            = [[LAND]],
  corpse              = [[DEAD]],

  customParams        = {
    description_fr = [[Robot ?meurier]],
    description_pt = [[Robô dispersador]],
    helptext       = [[The Outlaw's job is simple: destroy anything that crosses its way. Its cannon, adapted from the Leveler, shoots high speed, explosive projectiles that can fling away any small unit that isn't instantly killed. Victims who still won't die are then shot again with the A.K. class secondary weapon. Keep the Outlaw away from units that can out-range it: the heavy load of weapons and ammo it needs to carry make it slow, and somewhat unstable.]],
    helptext_fr    = [[Le Outlow est l'?meutier par excellence. Son canon principal adapt? du Leveler tire des projectiles ? haute v?locit? projetant les ennemis en arri?re et infligeant de gros d?g?ts. Son deuxi?me canon est une adaptation du canon AK qui lui permet d'achever ses cibles rapidement. Son blindage et son armement en font une unit? solide mais lente et dont la port?e est le principal d?faut.]],
    helptext_pt    = [[O trabalho do Outlaw é simples: Destruir tudo que atravessar seu caminho. Seu canh?o atira projéteis rápidos e explosivos que podem lançar longe qualquer unidade pequena que n?o morra na hora. Vítimas que n?o morrem s?o ent?o atingidas por sua arma secundária, uma metralhadora a laser. Mantenha-o longe de unidades que superam seu alcançe, pois ele é lento e um pouco instável.]],
  },

  defaultmissiontype  = [[Standby]],
  designation         = [[CP-CMAK]],
  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[kbotriot]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maneuverleashlength = [[500]],
  mass                = 125,
  maxDamage           = 1100,
  maxSlope            = 36,
  maxVelocity         = 1.5,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[KBOT2]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[cormack.s3o]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:LEVLRMUZZLE]],
      [[custom:RIOT_SHELL_L]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
    },

  },

  shootme             = [[1]],
  side                = [[CORE]],
  sightDistance       = 347,
  smoothAnim          = true,
  steeringmode        = [[2]],
  TEDClass            = [[KBOT]],
  threed              = [[1]],
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 22,
  turnRate            = 1050,
  unitnumber          = [[3203]],
  upright             = true,
  version             = [[1.2]],
  workerTime          = 0,
  zbuffer             = [[1]],

  weapons             = {

    {
      def                = [[RIOT]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 40,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[LASER1]],
      mainDir            = [[1 0 1]],
      maxAngleDif        = 120,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

	{
      def                = [[LASER2]],
      mainDir            = [[-1 0 1]],
      maxAngleDif        = 120,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {
	
	
	RIOT  = {
      name                    = [[Riot Cannon]],
      areaOfEffect            = 144,
      burnblow                = true,
      craterBoost             = 1,
      craterMult              = 1,

      damage                  = {
        default = 190,
        planes  = 190,
        subs    = 9.5,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:FLASH64]],
      impulseBoost            = 0,
      impulseFactor           = 0.3,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      noSelfDamage            = true,
      range                   = 290,
      reloadtime              = 2.1,
      renderType              = 4,
      soundHit                = [[xplosml3]],
      soundStart              = [[openQuarz/sattck1]],
      startsmoke              = [[1]],
      targetMoveError         = 0.6,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 550,
    },
	
    LASER1 = {
      name                    = [[Laser]],
      areaOfEffect            = 8,
      beamWeapon              = true,
      coreThickness           = 0.5,
      craterBoost             = 1,
      craterMult              = 1,

      damage                  = {
        default = 15,
        planes  = 15,
        subs    = 0.7,
      },

      duration                = 0.02,
      energypershot           = 0,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      noSelfDamage            = true,
      range                   = 300,
      reloadtime              = 0.2,
      renderType              = 0,
      rgbColor                = [[1 0 0]],
      soundHit                = [[laserhit]],
      soundStart              = [[lasrlit3]],
      soundStartVolume        = 0.3,
      soundTrigger            = true,
      targetMoveError         = 0.15,
      thickness               = 3.92905841137543,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 1040,
    },
	
	LASER2 = {
      name                    = [[Laser]],
      areaOfEffect            = 8,
      beamWeapon              = true,
      coreThickness           = 0.5,
      craterBoost             = 1,
      craterMult              = 1,

      damage                  = {
        default = 15,
        planes  = 15,
        subs    = 0.7,
      },

      duration                = 0.02,
      energypershot           = 0,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      noSelfDamage            = true,
      range                   = 300,
      reloadtime              = 0.2,
      renderType              = 0,
      rgbColor                = [[1 0 0]],
      soundHit                = [[laserhit]],
      soundStart              = [[lasrlit3]],
      soundStartVolume        = 0.3,
      soundTrigger            = true,
      targetMoveError         = 0.15,
      thickness               = 3.92905841137543,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 1040,
    },

  },


  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Outlaw]],
      blocking         = true,
      catagory         = [[corcorpses]],
      damage           = 2200,
      featureDead      = [[DEAD2]],
      featurereclamate = [[smudge01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[10]],
      hitdensity       = [[23]],
      metal            = 150,
      object           = [[cormak_dead]],
      reclaimable      = true,
      reclaimTime      = 150,
      seqnamereclamate = [[tree1reclamate]],
      world            = [[all]],
    },


    DEAD2 = {
      description      = [[Debris - Outlaw]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2200,
      featureDead      = [[HEAP]],
      featurereclamate = [[smudge01]],
      footprintX       = 2,
      footprintZ       = 2,
      hitdensity       = [[4]],
      metal            = 150,
      object           = [[2x2d]],
      reclaimable      = true,
      reclaimTime      = 150,
      seqnamereclamate = [[tree1reclamate]],
      world            = [[all]],
    },


    HEAP  = {
      description      = [[Debris - Outlaw]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2200,
      featurereclamate = [[smudge01]],
      footprintX       = 2,
      footprintZ       = 2,
      hitdensity       = [[4]],
      metal            = 75,
      object           = [[2x2d]],
      reclaimable      = true,
      reclaimTime      = 75,
      seqnamereclamate = [[tree1reclamate]],
      world            = [[all]],
    },

  },

}

return lowerkeys({ cormak = unitDef })
