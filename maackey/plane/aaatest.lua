unitDef = {
  unitname            = "aaatest",
  name                = "Vamp",
  description         = "Air Superiority Stealth Fighter",
  amphibious          = true,
  buildCostEnergy     = 300,
  buildCostMetal      = 300,
  buildPic            = "CORVAMP.png",
  buildTime           = 300,
  canAttack           = true,
  canDropFlare        = false,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = "1",
  canSubmerge         = false,
  category            = "FIXEDWING",
  collide             = false,
  corpse              = "DEAD",
  cruiseAlt           = 260,
  defaultmissiontype  = "VTOL_standby",
  explodeAs           = "GUNSHIPEX",
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  frontToSpeed        = 0,
  iconType            = "fighter",
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = "1280",
  mass                = 150,
  maxAcc              = 0.5,
  maxDamage           = 1000,
  maxVelocity         = 15.5,
  minCloakDistance    = 75,
  noChaseCategory     = "LAND SINK SHIP SATELLITE SWIM FLOAT SUB HOVER",
  objectName          = "aaatest.s3o",
  seismicSignature    = 0,
  selfDestructAs      = "GUNSHIPEX",
  side                = "CORE",
  sightDistance       = 790,
  smoothAnim          = true,
  speedToFront        = 0,
  stealth             = true,
  TEDClass            = "VTOL",

  weapons             = {

    {
      def                = "CORVTOL_ADVMISSILE",
      badTargetCategory  = "GUNSHIP",
      onlyTargetCategory = "FIXEDWING GUNSHIP",
    },

  },


  weaponDefs          = {

    CORVTOL_ADVMISSILE = {
      name                    = "GuidedMissiles",
      areaOfEffect            = 24,
      avoidFriendly           = true,
      canattackground         = false,
      canAttackGround         = 0,
      cegTag                  = "MISSILE_TAG_WHITE_10",
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 1,

      damage                  = {
        default = 20,
        planes  = 150,
        subs    = 10,
      },

      explosionGenerator      = "custom:MISSILE_HIT_PIKES_160",
      fireStarter             = 70,
      flightTime              = 4,
      guidance                = true,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = "wep_m_maverick.s3o",
      noSelfDamage            = true,
      range                   = 750,
      reloadtime              = 1.5,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = "0.1",
      smokeTrail              = true,
      soundHit                = "xplosml2",
      soundStart              = "Rocklit3",
      startsmoke              = "1",
      startVelocity           = 450,
      texture2                = "none",
      tolerance               = 40000,
      tracks                  = true,
      turnRate                = 50000,
      weaponAcceleration      = 450,
      weaponTimer             = 3.5,
      weaponType              = "MissileLauncher",
      weaponVelocity          = 850,
    },

  },


  featureDefs         = {

    DEAD  = {
      description      = "Wreckage - Vamp",
      blocking         = true,
      category         = "corpses",
      damage           = 2000,
      energy           = 0,
      featureDead      = "DEAD2",
      featurereclamate = "SMUDGE01",
      footprintX       = 2,
      footprintZ       = 2,
      height           = "40",
      hitdensity       = "100",
      metal            = 180,
      object           = "corvamp_dead",
      reclaimable      = true,
      reclaimTime      = 720,
      seqnamereclamate = "TREE1RECLAMATE",
      world            = "All Worlds",
    },


    DEAD2 = {
      description      = "Debris - Vamp",
      blocking         = false,
      category         = "heaps",
      damage           = 2000,
      energy           = 0,
      featureDead      = "HEAP",
      featurereclamate = "SMUDGE01",
      footprintX       = 2,
      footprintZ       = 2,
      height           = "4",
      hitdensity       = "100",
      metal            = 180,
      object           = "2X2E",
      reclaimable      = true,
      reclaimTime      = 720,
      seqnamereclamate = "TREE1RECLAMATE",
      world            = "All Worlds",
    },


    HEAP  = {
      description      = "Debris - Vamp",
      blocking         = false,
      category         = "heaps",
      damage           = 2000,
      energy           = 0,
      featurereclamate = "SMUDGE01",
      footprintX       = 2,
      footprintZ       = 2,
      height           = "4",
      hitdensity       = "100",
      metal            = 90,
      object           = "2X2E",
      reclaimable      = true,
      reclaimTime      = 360,
      seqnamereclamate = "TREE1RECLAMATE",
      world            = "All Worlds",
    },

  },

}

return lowerkeys({ aaatest = unitDef })
