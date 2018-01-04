-- Shift Policies Around
UPDATE Policies
SET GridX = '4'
WHERE Type = 'POLICY_MILITARY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridY = '1'
WHERE Type = 'POLICY_MILITARY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridX = '2'
WHERE Type = 'POLICY_DISCIPLINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridY = '1'
WHERE Type = 'POLICY_DISCIPLINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridX = '2'
WHERE Type = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridY = '2'
WHERE Type = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_PrereqPolicies
WHERE PrereqPolicy = 'POLICY_MILITARY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_PrereqPolicies
WHERE PrereqPolicy = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_PrereqPolicies
WHERE PrereqPolicy = 'POLICY_DISCIPLINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Honor 
UPDATE Policies
SET CultureFromBarbarianKills = '0'
WHERE Type = 'POLICY_HONOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CultureFromKills = '100'
WHERE Type = 'POLICY_HONOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET BarbarianCombatBonus = '25'
WHERE Type = 'POLICY_HONOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Warrior Code (Now Imperialism)
UPDATE Policies
SET GreatGeneralRateModifier = '0'
WHERE Type = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_UnitCombatProductionModifiers
WHERE PolicyType = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IncludesOneShotFreeUnits = '1'
WHERE Type = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_FreeUnitClasses
WHERE PolicyType = 'POLICY_WARRIOR_CODE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Discipline (Now Tribute)
DELETE FROM Policy_FreePromotions
WHERE PolicyType = 'POLICY_DISCIPLINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '23'
WHERE Type = 'POLICY_DISCIPLINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Military Tradition (Now Dominance)
UPDATE Policies
SET ExpModifier = '0'
WHERE Type = 'POLICY_MILITARY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET ExtraSupplyPerPopulation = '10'
WHERE Type = 'POLICY_MILITARY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Military Caste (Now Honor)
UPDATE Policies
SET CulturePerGarrisonedUnit = '2'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '22'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET HappinessPerGarrisonedUnit = '1'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitGoldMaintenanceMod = '-15'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET RouteGoldMaintenanceMod = '-50'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Professional Army (Now Heroism)
UPDATE Policies
SET UnitUpgradeCostMod = '0'
WHERE Type = 'POLICY_PROFESSIONAL_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_BuildingClassProductionModifiers
WHERE PolicyType = 'POLICY_PROFESSIONAL_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policy_BuildingClassProductionModifiers
SET ProductionModifier = '0'
WHERE PolicyType = 'POLICY_PROFESSIONAL_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '20'
WHERE Type = 'POLICY_PROFESSIONAL_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET BestRangedUnitSpawnSettle = '8'
WHERE Type = 'POLICY_PROFESSIONAL_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET WarWearinessModifier = '25'
WHERE Type = 'POLICY_PROFESSIONAL_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher

UPDATE Policies
SET GoldFromKills = '0'
WHERE Type = 'POLICY_HONOR_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

--UPDATE Policies
--SET UnlocksPolicyBranchEra = 'ERA_MEDIEVAL'
--WHERE Type = 'POLICY_HONOR_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
--UPDATE Policies
--SET IdeologyPoint = '1'
--WHERE Type = 'POLICY_HONOR_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Mercenary Army

UPDATE Units
SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS'
WHERE Type = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET ObsoleteTech = 'TECH_PENICILIN'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_RIFLEMAN'
WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_RIFLEMAN'
WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET Class = 'UNITCLASS_FOREIGNLEGION'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET Cost = '270'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET PolicyType = 'POLICY_HONOR_FINISHER'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET PolicyType = 'POLICY_HONOR_FINISHER'
WHERE Type = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET PurchaseOnly = '1'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET RequiresFaithPurchaseEnabled = '0'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET FaithCost = '0'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Units
SET MoveAfterPurchase = '1'
WHERE Type = 'UNIT_FRENCH_FOREIGNLEGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

INSERT INTO Policy_CityYieldChanges
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_HONOR', 'YIELD_PRODUCTION', 1),
	('POLICY_WARRIOR_CODE', 'YIELD_PRODUCTION', 1),
	('POLICY_MILITARY_TRADITION', 'YIELD_PRODUCTION', 1),
	('POLICY_PROFESSIONAL_ARMY', 'YIELD_PRODUCTION', 1),
	('POLICY_DISCIPLINE', 'YIELD_PRODUCTION', 1),
	('POLICY_MILITARY_CASTE', 'YIELD_PRODUCTION', 1);

INSERT INTO Policy_ConquerorYield
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_WARRIOR_CODE', 'YIELD_CULTURE', 30),
	('POLICY_WARRIOR_CODE', 'YIELD_SCIENCE', 30);

INSERT INTO Policy_FounderYield
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_WARRIOR_CODE', 'YIELD_CULTURE', 30),
	('POLICY_WARRIOR_CODE', 'YIELD_SCIENCE', 30);

INSERT INTO Policy_FreeUnitClasses
	(PolicyType, UnitClassType, Count)
VALUES
	('POLICY_WARRIOR_CODE', 'UNITCLASS_SETTLER', 1);

INSERT INTO Policy_YieldFromKills
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_MILITARY_TRADITION', 'YIELD_SCIENCE', 100);

INSERT INTO Policy_FreePromotions
	(PolicyType, PromotionType)
VALUES
	('POLICY_MILITARY_TRADITION', 'PROMOTION_KILL_HEAL'),
	('POLICY_PROFESSIONAL_ARMY', 'PROMOTION_HONOR_BONUS');

INSERT INTO Policy_YieldFromBorderGrowth
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_DISCIPLINE', 'YIELD_GOLD', 20),
	('POLICY_DISCIPLINE', 'YIELD_FOOD', 20),
	('POLICY_HONOR_FINISHER', 'YIELD_GOLD', 20),
	('POLICY_HONOR_FINISHER', 'YIELD_FOOD', 20);

INSERT INTO Policy_YieldFromMinorDemand
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_DISCIPLINE', 'YIELD_CULTURE', 25),
	('POLICY_HONOR_FINISHER', 'YIELD_CULTURE', 25);

INSERT INTO Policy_PrereqPolicies
	(PolicyType, PrereqPolicy)
VALUES
	('POLICY_WARRIOR_CODE', 'POLICY_DISCIPLINE'),
	('POLICY_MILITARY_CASTE', 'POLICY_MILITARY_TRADITION');


-- Honor Promotions

INSERT INTO UnitPromotions
	(Type, Description, Help, Sound, CannotBeChosen, CombatPercent, PortraitIndex, IconAtlas, PediaType, PediaEntry, HPHealedIfDestroyEnemy, HealIfDestroyExcludesBarbarians)
VALUES
	('PROMOTION_HONOR_BONUS', 'TXT_KEY_PROMOTION_HONOR_BONUS', 'TXT_KEY_PROMOTION_HONOR_BONUS_HELP', 'AS2D_IF_LEVELUP', 1, 10, 59, 'ABILITY_ATLAS', 'PEDIA_SHARED', 'TXT_KEY_PROMOTION_HONOR_BONUS', 0, 0),
	('PROMOTION_KILL_HEAL', 'TXT_KEY_PROMOTION_KILL_HEAL', 'TXT_KEY_PROMOTION_KILL_HEAL_HELP', 'AS2D_IF_LEVELUP', 1, 0, 59, 'ABILITY_ATLAS', 'PEDIA_HEAL', 'TXT_KEY_PROMOTION_KILL_HEAL', 15, 0);

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_RECON'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_MELEE'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_GUN'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_HELICOPTER'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_CARRIER'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_FIGHTER'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_BOMBER'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_HONOR_BONUS', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_RECON'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_MELEE'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_GUN'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_HELICOPTER'),
	('PROMOTION_KILL_HEAL', 'UNITCOMBAT_NAVALMELEE');