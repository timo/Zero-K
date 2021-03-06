unitDef = {
  unitname               = [[armtick]],
  name                   = [[Tick]],
  description            = [[All-Terrain EMP Crawling Bomb]],
  acceleration           = 0.25,
  brakeRate              = 0.6,
  buildCostEnergy        = 120,
  buildCostMetal         = 120,
  buildPic               = [[armtick.png]],
  buildTime              = 120,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canstop                = [[1]],
  category               = [[LAND]],
  collisionVolumeOffsets  = [[0 0 0]],
  collisionVolumeScales   = [[16 16 16]],
  collisionVolumeType	  = [[ellipsoid]],
  cloakCost              = 0,

  customParams           = {
    description_bp = [[Bomba de PEM escaladora rastejante]],
    description_de = [[Gel�ndeg�ngige EMP Kriechbombe]],
    description_es = [[Bomba m�vil PEM All-terrain]],
    description_fi = [[Maastokelpoinen ry?miv? EMP-pommi]],
    description_fr = [[Bombe rampante EMP tout terrain]],
    description_it = [[Bomba PEM mobile All-terrain]],
    description_pl = [[Terenowa bomba EMP]],
    helptext       = [[The Tick relies on its speed and small size to dodge inaccurate weapons, especially those of assaults and many skirmishers. It can paralyze heavy units or packs of lighter raiders which cannot kill it before it is already in range. Warriors or Glaives can then eliminate the helpless enemies without risk. Counter with defenses or single cheap units to set off a premature detonation. This unit cloaks when otherwise idle.]],
    helptext_bp    = [[Tick ? um rob? de PEM escalador suicida. Usado com habilidade pode valer v?rias vezes seu pre?o. Use-o para paralizar defesas, unidades inimigas pesadas e grupos de unidades inimigas pr?ximas umas das outras armadas com armas lentas. Outras unidades podem entao eliminar as unidades paralizadas correndo pouco risco. defenda-se com defenders ou caminhoes de miss?is, ou uma ?nica unidade barata para provocar uma explosao prematura.]],
    helptext_de    = [[Geschickt eingesetzt kann Tick sich mehrfach rentieren. Nutze Tick, um gegnerische Verteidigung, schwere Einheiten und gut gesch�tzte Einheiten mit langsamen Waffen zu paralysieren. Andere deiner Einheiten haben so die M�glichkeit die feindlichen Truppen einfach, ohne Risiko zu eleminieren. Konter diese Einheit mit Raketent�rmen oder einzelnen, billigen Einheiten. Diese Einheit tarnt sich sobald sie sich nicht mehr bewegt.]],
    helptext_es    = [[Usado bien, el Tick puede valer docenas de veces su costo. Usalo para paralizar defensas, unidades pesadas, y masas de unidades con armas lentas. Otras unidades pueden eliminar a los enemigos indefensos sin riesgos. Contrastalos con torres de misil o s�ngolas unidades baratas para causar detonaciones inmaduras.]],
    helptext_fi    = [[Taitavasti k?ytettyn? Tick voi maksaa itsens? takaisin lukuisia kertoja. K?yt? sit? niit? vihollisia vastaan, joiden l?helle p??set - esimerkkin? suuret, hitaasti ampuvat yksik?t ja tiiviit ryhmittym?t. Muu armeijasi voi t?m?n j?lkeen vaaratta eliminoida lamaantuneet vastustajat. Ohjukset ja laserit r?j?ytt?v?t Tickin helposti ennen kuin se ylt?? kohteeseensa.]],
    helptext_fr    = [[Le Tick, invisible lorqu'il est statique, est rapide et petit ce qui lui permet d'�viter les tirs des armes impr�cises. Il peut paralyser des unit�s lourdes ou des groupes d'unit�s de raid qui ne peuvent le tuer avant d'�tre dans l'aire d'effet EMP. Des Warriors ou des Glaives peuvent ensuite �liminer les enemis fig�s sans risque. Contrez-le avec des d�fenses ou des unit�s bon march� pour provoquer une d�tonation pr�matur�e.]],
    helptext_it    = [[Usato bene, il Tick puo valere dozzine di volte il suo costo. Usalo per paralizzare difese, unit� pesanti, e masse di unit� con armi lente. Altre tue unit� posson eliminare i nemici indifesi senza rischi. Contrastali con torri lancia-razzo o singole unit� economiche per provocare una detonazione prematura.]],
    helptext_pl    = [[Tick jest szybki i maly, co pozwala mu unikac wolniejszych pocisk�w i dotrzec do celu, aby sie zdetonowac, zadajac wysokie obrazenia EMP i paralizujac grupy przeciwnik�w. Gdy stoi nieruchomo w miejscu, wlacza maskowanie.]],
    modelradius    = [[7]],
	instantselfd   = [[1]],
  },

  explodeAs              = [[ARMTICK_DEATH]],
  fireState              = 0,
  footprintX             = 1,
  footprintZ             = 1,
  iconType               = [[spiderbomb]],
  kamikaze               = true,
  kamikazeDistance       = 80,
  kamikazeUseLOS         = true,
  maxDamage              = 50,
  maxSlope               = 72,
  maxVelocity            = 4.2,
  maxWaterDepth          = 15,
  minCloakDistance       = 75,
  movementClass          = [[TKBOT1]],
  noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName             = [[ARMTICK]],
  pushResistant          = 0,
  script                 = [[armtick.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[ARMTICK_DEATH]],
  selfDestructCountdown  = 0,

  sfxtypes               = {

    explosiongenerators = {
      [[custom:digdig]],
    },

  },

  sightDistance          = 160,
  turnRate               = 3000,
}

--------------------------------------------------------------------------------

local weaponDefs = {
  ARMTICK_DEATH = {
    areaOfEffect       = 352,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0,
    explosionGenerator = "custom:ARMTICK_EXPLOSION",
    impulseBoost       = 0,
    impulseFactor      = 0,
    name               = "EMP Explosion",
    paralyzer          = true,
    paralyzeTime       = 16,
    soundHit           = "weapon/more_lightning",
    damage = {
      default          = 2000,
    },
  },
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------
return lowerkeys({ armtick = unitDef })
