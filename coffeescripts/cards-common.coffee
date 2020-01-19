# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
]

exportObj.isReleased = (data) ->
    for source in data.sources
        return true if source not in exportObj.unreleasedExpansions
    false

String::canonicalize = ->
    this.toLowerCase()
        .replace(/[^a-z0-9]/g, '')
        .replace(/\s+/g, '-')

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicCardData = ->
    ships:
        "X-Wing":
            name: "X-Wing"
            xws: "T-65 X-wing".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 2
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 1, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
              "Servomotor S-Foils"
            ]
        "Y-Wing":
            name: "Y-Wing"
            xws: "BTL-A4 Y-wing".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 1
            hull: 6
            shields: 2
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
                "Reload"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 3, 1, 1, 1, 3, 0]
              [ 0, 0, 3, 0, 0, 3]
            ]
        "A-Wing":
            name: "A-Wing"
            xws: "RZ-1 A-wing".canonicalize()
            factions: [ "Rebel Alliance" ]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
        "YT-1300":
            name: "YT-1300"
            xws: "Modified YT-1300 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 5
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
                "Boost"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
            large: true
        "Customized YT-1300":
            name: "Customized YT-1300"
            canonical_name: 'Customized YT-1300'.canonicalize()
            xws: "Customized YT-1300 Light Freighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
                "Boost"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
            large: true
        "TIE Fighter":
            name: "TIE Fighter"
            xws: "TIE/ln Fighter".canonicalize()
            factions: ["Rebel Alliance", "Galactic Empire"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]
        "TIE Advanced":
            name: "TIE Advanced"
            xws: "TIE Advanced x1".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            actions: [
                "Focus" 
                "R> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Interceptor":
            name: "TIE Interceptor"
            icon: "tieinterceptor"
            xws: "TIE/IN Interceptor".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Boost"
                "Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "Firespray-31":
            name: "Firespray-31"
            xws: "Firespray-class Patrol Craft".canonicalize()
            factions: [ "Scum and Villainy", ]
            attack: 3
            attackb: 3
            agility: 2
            hull: 6
            shields: 4
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Boost"
            ]
            actionsred: [
                "Reinforce"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
        "HWK-290":
            name: "HWK-290"
            xws: "HWK-290 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "R> Rotate Arc"
                "Lock" 
                "R> Rotate Arc"
                "Rotate Arc"
            ]
            actionsred: [
                "Boost"
                "Jam"
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0]
              [ 0, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1]
              [ 3, 1, 2, 1, 3]
              [ 0, 0, 1, 0, 0]
            ]
        "Lambda-Class Shuttle":
            name: "Lambda-Class Shuttle"
            xws: "Lambda-class T-4a Shuttle".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Coordinate"
                "Reinforce"
            ]
            actionsred: [
                "Jam"
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0]
              [ 0, 2, 2, 2, 0]
              [ 3, 1, 2, 1, 3]
              [ 0, 3, 1, 3, 0]
            ]
            large: true
        "B-Wing":
            name: "B-Wing"
            xws: "A/SF-01 B-wing".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 1
            hull: 4
            shields: 4
            actions: [
                "Focus"
                "R> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3]
              [ 1, 1, 2, 1, 1, 3, 0, 0, 0, 0]
              [ 0, 3, 2, 3, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Bomber":
            name: "TIE Bomber"
            xws: "TIE/sa Bomber".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Lock"
            ]
            actionsred: [
                "Reload"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 3]
            ]
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            xws: "Z-95-AF4 Headhunter".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy", ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
            ]
        "TIE Defender":
            name: "TIE Defender"
            xws: "TIE/D Defender".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 3
            hull: 3
            shields: 4
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 3, 2, 0, 2, 3, 0]
              [ 3, 1, 2, 1, 3, 3]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 0, 2, 0, 0, 1]
              [ 0, 0, 2, 0, 0, 0]
            ]
        "E-Wing":
            name: "E-Wing"
            xws: "E-wing".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R> Lock"
                "Boost"
                "R> Lock"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 3, 3 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0 ]
            ]
        "TIE Phantom":
            name: "TIE Phantom"
            xws: "TIE/ph Phantom".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "Cloak"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 1, 0, 1, 1, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 3]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "YT-2400":
            name: "YT-2400"
            xws: "YT-2400 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance", ]
            attackdt: 4
            agility: 2
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            large: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "VT-49 Decimator":
            name: "VT-49 Decimator"
            xws: "VT-49 Decimator".canonicalize()
            factions: [ "Galactic Empire", ]
            attackdt: 3
            agility: 0
            hull: 12
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Rotate Arc"
            ]
            actionsred: [
                "Coordinate"
            ]
            large: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 2, 2, 2, 3, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 0]
            ]
        "StarViper":
            name: "StarViper"
            xws: "StarViper-class Attack Platform".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "M3-A Interceptor":
            name: "M3-A Interceptor"
            xws: "M3-A Interceptor".canonicalize()
            factions: [ "Scum and Villainy" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 0, 2, 1, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 1, 2, 1, 0, 3 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "Aggressor":
            name: "Aggressor"
            xws: "Aggressor Assault Fighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 3
            hull: 5
            shields: 3
            actions: [
                "Calculate"
                "Evade"
                "Lock"
                "Boost"
            ]
            actionsred: [
            ]
            medium: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 3, 3 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
            ]
        "YV-666":
            name: "YV-666"
            xws: "YV-666 Light Freighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attackf: 3
            agility: 1
            hull: 9
            shields: 3
            large: true
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "Kihraxz Fighter":
            name: "Kihraxz Fighter"
            xws: "Kihraxz Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 2
            hull: 5
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 0, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 3, 3 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "K-Wing":
            name: "K-Wing"
            xws: "BTL-S8 K-wing".canonicalize()
            factions: ["Rebel Alliance"]
            attackdt: 2
            agility: 1
            hull: 6
            shields: 3
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Rotate Arc"
                "Reload"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
            ]
        "TIE Punisher":
            name: "TIE Punisher"
            xws: "TIE/ca Punisher".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 1
            hull: 6
            shields: 3
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Boost" 
                "R> Lock"
                "Reload"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "VCX-100":
            name: "VCX-100"
            xws: "VCX-100 Light Freighter".canonicalize()
            factions: ["Rebel Alliance"]
            attack: 4
            agility: 0
            hull: 10
            shields: 4
            large: true
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "Attack Shuttle":
            name: "Attack Shuttle"
            xws: "Attack Shuttle".canonicalize()
            factions: ["Rebel Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "R> Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "TIE Advanced Prototype":
            name: "TIE Advanced Prototype"
            xws: "TIE Advanced v1".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 0, 2, 2, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "G-1A Starfighter":
            name: "G-1A Starfighter"
            xws: "G-1A Starfighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 5
            shields: 4
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Jam"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 1, 1, 2, 1, 1, 3 ]
                [ 0, 3, 1, 3, 0, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "JumpMaster 5000":
            name: "JumpMaster 5000"
            xws: "JumpMaster 5000".canonicalize()
            factions: ["Scum and Villainy"]
            large: true
            attackt: 2
            agility: 2
            hull: 6
            shields: 3
            actions: [
                "Focus"
                "R> Rotate Arc"
                "Lock"
                "R> Rotate Arc"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 1, 3, 0, 0, 0 ]
                [ 1, 2, 2, 1, 3, 0, 0, 0 ]
                [ 0, 2, 2, 1, 0, 0, 3, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
            ]
        "ARC-170":
            name: "ARC-170"
            xws: "ARC-170 Starfighter".canonicalize()
            factions: ["Rebel Alliance","Galactic Republic"]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 3
            medium: true
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "Fang Fighter":
            name: "Fang Fighter"
            canonical_name: 'Protectorate Starfighter'.canonicalize()
            xws: "Fang Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 0
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 0, 0, 0, 1, 0, 0, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 3, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Lancer-Class Pursuit Craft":
            name: "Lancer-Class Pursuit Craft"
            xws: "Lancer-class Pursuit Craft".canonicalize()
            factions: ["Scum and Villainy"]
            large: true
            attack: 3
            attackt: 2
            agility: 2
            hull: 8
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 2, 2, 2, 2, 2, 0]
                [ 0, 0, 2, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "Quadjumper":
            name: "Quadjumper"
            xws: "Quadrijet Transfer Spacetug".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            actions: [
                "Barrel Roll"
                "Focus"
            ]
            actionsred: [
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0, 0, 3, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "U-Wing":
            name: "U-Wing"
            xws: "UT-60D U-wing".canonicalize()
            factions: ["Rebel Alliance"]
            medium: true
            attack: 3
            agility: 2
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0 ]
                [ 0, 2, 2, 2, 0 ]
                [ 1, 2, 2, 2, 1 ]
                [ 0, 1, 1, 1, 0 ]
                [ 0, 0, 1, 0, 0 ]
            ]
            autoequip: [
              "Pivot Wing"
            ]
        "TIE Striker":
            name: "TIE Striker"
            xws: "TIE/sk Striker".canonicalize()
            factions: ["Galactic Empire"]
            attack: 3
            agility: 2
            hull: 4
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 3, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 3, 3 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0 ]
            ]
        "Auzituck Gunship":
            name: "Auzituck Gunship"
            xws: "Auzituck Gunship".canonicalize()
            factions: ["Rebel Alliance"]
            attackf: 3
            agility: 1
            hull: 6
            shields: 2
            actions: [
                "Focus"
                "Reinforce"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0 ]
            ]
        "Scurrg H-6 Bomber":
            name: "Scurrg H-6 Bomber"
            xws: "Scurrg H-6 Bomber".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 6
            shields: 4
            medium: true
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE Aggressor":
            name: "TIE Aggressor"
            xws: "TIE/ag Aggressor".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll" 
                "R> Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Alpha-Class Star Wing":
            name: "Alpha-Class Star Wing"
            xws: "Alpha-class Star Wing".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 4
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Reload"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
            ]
        "M12-L Kimogila Fighter":
            name: "M12-L Kimogila Fighter"
            xws: "M12-L Kimogila Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 7
            shields: 2
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Reload"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 1, 2, 1, 3, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "Sheathipede-Class Shuttle":
            name: "Sheathipede-Class Shuttle"
            xws: "Sheathipede-class Shuttle".canonicalize()
            factions: ["Rebel Alliance"]
            attack: 2
            attackb: 2
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Coordinate"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 2, 1, 3, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Reaper":
            name: "TIE Reaper"
            xws: "TIE Reaper".canonicalize()
            factions: ["Galactic Empire"]
            attack: 3
            agility: 1
            hull: 6
            shields: 2
            medium: true
            actions: [
                "Focus"
                "Evade"
                "Jam"
            ]
            actionsred: [
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 3, 3 ]
                [ 3, 1, 2, 1, 3, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0 ]
            ]
        "Escape Craft":
            name: "Escape Craft"
            xws: "Escape Craft".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Barrel Roll"
            ]
            actionsred: [
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 3, 0, 0 ]
            ]
        "T-70 X-Wing":
            name: "T-70 X-Wing"
            xws: "T-70 X-wing".canonicalize()
            factions: [ "Resistance"]
            attack: 3
            agility: 2
            hull: 4
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
              "Integrated S-Foils"
            ]
        "RZ-2 A-Wing":
            name: "RZ-2 A-Wing"
            xws: "RZ-2 A-wing".canonicalize()
            factions: ["Resistance"]
            attackt: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
        "TIE/FO Fighter":
            name: "TIE/FO Fighter"
            xws: "TIE/fo Fighter".canonicalize()
            factions: ["First Order"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 3, 3]
              [ 1, 1, 2, 1, 1, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "TIE/VN Silencer":
            name: "TIE/VN Silencer"
            xws: "TIE/vn Silencer".canonicalize()
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Boost"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE/SF Fighter":
            name: "TIE/SF Fighter"
            xws: "TIE/sf Fighter".canonicalize()
            factions: ["First Order"]
            attack: 2
            attackt: 2
            agility: 2
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "> Rotate Arc"
                "Evade"
                "> Rotate Arc"
                "Lock"
                "> Rotate Arc"
                "Barrel Roll"
                "> Rotate Arc"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Upsilon-Class Command Shuttle":
            name: "Upsilon-Class Command Shuttle"
            xws: "Upsilon-class command shuttle".canonicalize()
            factions: ["First Order"]
            attack: 4
            agility: 1
            hull: 6
            shields: 6
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Coordinate"
                "Jam"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 1, 2, 1, 3, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            large: true
        "MG-100 StarFortress":
            name: "MG-100 StarFortress"
            xws: "MG-100 StarFortress".canonicalize()
            factions: ["Resistance"]
            attack: 3
            attackdt: 2
            agility: 1
            hull: 9
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "Reload"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
              [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            large: true
        "Scavenged YT-1300":
            name: "Scavenged YT-1300"
            canonical_name: 'Scavenged YT-1300'.canonicalize()
            xws: "Scavenged YT-1300".canonicalize()
            factions: [ "Resistance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 3
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Boost"
                "Rotate Arc"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0]
              [ 1, 1, 1, 1, 1, 0, 3, 3]
              [ 0, 0, 3, 0, 0, 0, 0, 0]
            ]
            large: true
        "Mining Guild TIE Fighter":
            name: "Mining Guild TIE Fighter"
            xws: "Modified TIE/ln Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 0]
              [ 0, 0, 3, 0, 0, 0]
            ]
        "V-19 Torrent":
            name: "V-19 Torrent"
            xws: "V-19 Torrent Starfighter".canonicalize()
            factions: ["Galactic Republic"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R> Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 3, 2, 3, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Delta-7 Aethersprite":
            name: "Delta-7 Aethersprite"
            xws: "Delta-7 Aethersprite".canonicalize()
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "F-Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 0, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Sith Infiltrator":
            name: "Sith Infiltrator"
            xws: "Sith Infiltrator".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 1
            hull: 6
            large: true
            shields: 4
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Vulture-class Droid Fighter":
            name: "Vulture-class Droid Fighter"
            xws: "Vulture-class Droid Fighter".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 3
            shields: 0
            actions: [
                "Calculate"
                "Lock"
                "Barrel Roll"
                "R> Calculate"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 3, 0, 0, 0, 0]
              [ 2, 1, 2, 1, 2, 0, 0, 0, 3, 3]
              [ 1, 3, 2, 3, 1, 0, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Belbullab-22 Starfighter":
            name: "Belbullab-22 Starfighter"
            xws: "Belbullab-22 Starfighter".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 1, 0, 1, 1, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 3, 1, 2, 1, 3, 0, 3, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Naboo Royal N-1 Starfighter":
           name: "Naboo Royal N-1 Starfighter"               
           xws: "Naboo Royal N-1 Starfighter".canonicalize()
           factions: ["Galactic Republic"]
           attack: 2
           agility: 2
           hull: 3
           shields: 2
           actions: [
             "Focus"
             "Lock"
             "Barrel Roll"
             "Boost"
           ]
           actionsred: [
           ]
           maneuvers: [
             [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
             [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]
             [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
             [ 1, 2, 2, 2, 1, 0, 0, 0, 3, 3]
             [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
             [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
           ]
        "Hyena-Class Droid Bomber":
           name: "Hyena-Class Droid Bomber"               
           xws: "Hyena-Class Droid Bomber".canonicalize()
           factions: ["Separatist Alliance"]
           attack: 2
           agility: 2
           hull: 5
           shields: 0
           actions: [
             "Calculate"
             "Lock"
             "Barrel Roll"
             "R> Lock"
           ]
           actionsred: [
             "Reload"
           ]
           maneuvers: [
             [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
             [ 1, 3, 1, 3, 1, 0, 0, 0, 0, 0]
             [ 2, 1, 2, 1, 2, 3, 0, 0, 3, 3]
             [ 1, 0, 2, 0, 1, 0, 0, 0, 0, 0]
             [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
             [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
           ]
        "Resistance Transport Pod":
           name: "Resistance Transport Pod"               
           xws: "Resistance Transport Pod".canonicalize()
           factions: ["Resistance"]
           attack: 2
           agility: 2
           hull: 3
           shields: 1
           actions: [
             "Focus"
           ]
           actionsred: [
             "Lock"
             "Barrel Roll"
             "Jam"
           ]
           maneuvers: [
             [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
             [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
             [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
             [ 0, 3, 1, 3, 0, 3, 0, 0, 0, 0]
             [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
           ]
        "Resistance Transport":
           name: "Resistance Transport"               
           xws: "Resistance Transport".canonicalize()
           factions: ["Resistance"]
           attack: 2
           agility: 1
           hull: 5
           shields: 3
           actions: [
             "Focus"
             "Lock"
           ]
           actionsred: [
             "Coordinate"
             "Jam"
           ]
           maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
           ]
        "Nantex-Class Starfighter":
           name: "Nantex-Class Starfighter"               
           xws: "Nantex-Class Starfighter".canonicalize()
           factions: ["Separatist Alliance"]
           attackbull: 3
           attackt: 2
           agility: 3
           hull: 4
           shields: 0
           actions: [
             "Focus"
             "Evade"
           ]
           maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 1, 2, 0, 2, 1, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
           ]
        "BTL-B Y-Wing":
           name: "BTL-B Y-Wing"               
           xws: "BTL-B Y-Wing".canonicalize()
           factions: ["Galactic Republic"]
           attack: 2
           agility: 1
           hull: 5
           shields: 3
           actions: [
             "Focus"
             "Lock"
           ]
           actionsred: [
             "Barrel Roll"
             "Reload"
           ]
           maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 3, 1, 1, 1, 3, 0]
                [ 0, 0, 3, 0, 0, 3]
                [ 0, 0, 0, 0, 0, 0]
           ]
        "Fireball":
           name: "Fireball"               
           xws: "Fireball".canonicalize()
           factions: ["Resistance"]
           attack: 2
           agility: 2
           hull: 6
           shields: 0
           actions: [
             "Focus"
             "Evade"
             "Barrel Roll"
             "Slam"
           ]
           maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
           ]
        "TIE/Ba Interceptor":
           name: "TIE/Ba Interceptor"               
           xws: "TIE/Ba Interceptor".canonicalize()
           factions: ["First Order"]
           attack: 3
           agility: 3
           hull: 2
           shields: 2
           actions: [
             "Focus"
             "Evade"
             "Lock"
             "Barrel Roll"
             "Boost"
           ]
           maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 0, 2, 2, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
           ]

        # Epic Section
        "CR90 Corellian Corvette":
           name: "CR90 Corellian Corvette"
           xws: "CR90 Corellian Corvette".canonicalize()
           icon: "cr90corvette"
           factions: ["Galactic Republic", "Rebel Alliance"]
           huge: true
           attackl: 4
           attackr: 4
           agility: 0
           hull: 18
           shields: 7
           shieldrecurr: 2
           energy: 7
           energyrecurr: 2
           actions: [
             "Focus"
             "Reinforce"
             "Lock"
             "Jam"
           ]
           actionsred: [
             "Coordinate"
           ]
           maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 1, 1, 0]
                [ 0, 2, 2, 2, 0]
                [ 0, 3, 2, 3, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
           ]
        "Raider-class Corvette":
           name: "Raider-class Corvette"
           xws: "Raider-class Corvette".canonicalize()
           factions: ["Galactic Empire", "First Order"]
           huge: true
           attackf: 4
           agility: 0
           hull: 20
           shields: 8
           shieldrecurr: 2
           energy: 6
           energyrecurr: 2
           actions: [
             "Focus"
             "Reinforce"
             "Lock"
             "Coordinate"
             "Jam"
           ]
           maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 1, 2, 1, 0]
                [ 0, 3, 2, 3, 0]
                [ 0, 0, 1, 0, 0]
                [ 0, 0, 3, 0, 0]
           ]
        "GR-75 Medium Transport":
           name: "GR-75 Medium Transport"
           xws: "GR-75 Medium Transport".canonicalize()
           factions: ["Rebel Alliance", "Resistance"]
           huge: true
           attack: 2
           agility: 0
           hull: 12
           shields: 3
           shieldrecurr: 1
           energy: 4
           energyrecurr: 1
           actions: [
             "Focus"
             "Coordinate"
             "Jam"
           ]
           actionsred: [
             "Reinforce"
             "Lock"
           ]
           maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 2, 2, 0]
                [ 0, 1, 1, 1, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
           ]
        "Gozanti-class Cruiser":
           name: "Gozanti-class Cruiser"
           xws: "Gozanti-class Cruiser".canonicalize()
           factions: ["Galactic Empire", "First Order"]
           huge: true
           attack: 3
           agility: 0
           hull: 11
           shields: 5
           shieldrecurr: 1
           energy: 3
           energyrecurr: 1
           actions: [
             "Focus"
             "Reinforce"
             "Lock"
             "Coordinate"
             "Jam"
           ]
           maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 2, 1, 0]
                [ 0, 3, 2, 3, 0]
                [ 0, 0, 2, 0, 0]
                [ 0, 0, 3, 0, 0]
           ]
        "C-ROC Cruiser":
           name: "C-ROC Cruiser"
           xws: "C-ROC Cruiser".canonicalize()
           factions: ["Separatist Alliance", "Scum and Villainy"]
           huge: true
           attack: 3
           agility: 0
           hull: 12
           shields: 4
           shieldrecurr: 1
           energy: 4
           energyrecurr: 1
           actions: [
             "Focus"
             "Reinforce"
             "Lock"
             "Jam"
           ]
           actionsred: [
             "Coordinate"
           ]
           maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 2, 1, 0]
                [ 0, 1, 2, 1, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
           ]
        
    # name field is for convenience only
    pilotsById: [
        {
            name: "Cavern Angels Zealot"
            id: 0
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 1
            points: 39
            slots: [
                "Illicit"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Escort"
            id: 1
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 2
            points: 40
            slots: [
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Red Squadron Veteran"
            id: 2
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 41
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Jek Porkins"
            id: 3
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 4
            points: 45
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Luke Skywalker"
            id: 4
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 5
            lightside: true
            force: 2
            points: 62
            slots: [
                "Force"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Wedge Antilles"
            id: 5
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 6
            points: 52
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Garven Dreis (X-Wing)"
            canonical_name: 'Garven Dreis'.canonicalize()
            id: 6
            unique: true
            xws: "garvendreis-t65xwing"
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Biggs Darklighter"
            id: 7
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 48
            slots: [
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Edrio Two Tubes"
            id: 8
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 2
            points: 43
            slots: [
                "Illicit"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Thane Kyrell"
            id: 9
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 5
            points: 48
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Leevan Tenza"
            id: 10
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 44
            slots: [
                "Illicit"
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "whoops"
            id: 11
            skip: true
        }
        {
            name: "Kullbee Sperado"
            id: 12
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 4
            points: 46
            slots: [
                "Illicit"
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Sabine Wren (TIE Fighter)"
            canonical_name: 'Sabine Wren'.canonicalize()
            id: 13
            unique: true
            xws: "sabinewren-tielnfighter"
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 3
            points: 28
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Ezra Bridger (TIE Fighter)"
            canonical_name: 'Ezra Bridger'.canonicalize()
            id: 14
            unique: true
            xws: "ezrabridger-tielnfighter"
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 3
            lightside: true
            force: 1
            points: 31
            slots: [
                "Force"
                "Modification"
            ]
        }
        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            canonical_name: '"Zeb" Orrelios'.canonicalize()
            id: 15
            unique: true
            xws: "zeborrelios-tielnfighter"
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 2
            points: 24
            slots: [
                "Modification"
            ]
        }
        {
            name: "Captain Rex"
            id: 16
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 2
            points: 30
            slots: [
                "Modification"
            ]
            applies_condition: 'Suppressive Fire'.canonicalize()
        }
        {
            name: "Miranda Doni"
            id: 17
            unique: true
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 4
            points: 42
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Esege Tuketu"
            id: 18
            unique: true
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 3
            points: 44
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "empty"
            id: 19
            skip: true
        }
        {
            name: "Warden Squadron Pilot"
            id: 20
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 2
            points: 37
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Corran Horn"
            id: 21
            unique: true
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 5
            points: 66
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Gavin Darklighter"
            id: 22
            unique: true
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 4
            points: 61
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Rogue Squadron Escort"
            id: 23
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 4
            points: 53
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Knave Squadron Escort"
            id: 24
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 2
            points: 50
            slots: [
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Norra Wexley (Y-Wing)"
            id: 25
            unique: true
            canonical_name: 'Norra Wexley'.canonicalize()
            xws: "norrawexley-btla4ywing"
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 5
            points: 41
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Horton Salm"
            id: 26
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 4
            points: 37
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: '"Dutch" Vander'
            id: 27
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 4
            points: 39
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Evaan Verlaine"
            id: 28
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 3
            points: 35
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Gold Squadron Veteran"
            id: 29
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Gray Squadron Bomber"
            id: 30
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 2
            points: 30
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Bodhi Rook"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 4
            points: 48
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Cassian Andor"
            id: 32
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 3
            points: 47
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Heff Tobber"
            id: 33
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 44
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Magva Yarro"
            id: 34
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 3
            points: 50
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
                "Illicit"
            ]
        }
        {
            name: "Saw Gerrera"
            id: 35
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 4
            points: 52
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
                "Illicit"
            ]
        }
        {
            name: "Benthic Two Tubes"
            id: 36
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 46
            slots: [
                "Illicit"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Scout"
            id: 37
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 43
            slots: [
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Partisan Renegade"
            id: 38
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 1
            points: 43
            slots: [
                "Illicit"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Dash Rendar"
            id: 39
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 5
            points: 91
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: '"Leebo"'
            id: 40
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 3
            points: 81
            slots: [
                "Missile"
                "Gunner"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Rotate Arc"
                ]
        }
        {
            name: "Wild Space Fringer"
            id: 41
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 1
            points: 77
            slots: [
                "Missile"
                "Gunner"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: "Han Solo"
            id: 42
            unique: true
            xws: "hansolo-modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 6
            points: 80
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian"
            id: 43
            unique: true
            xws: "landocalrissian-modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 5
            points: 79
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Chewbacca"
            id: 44
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 4
            charge: 1
            recurring: true
            points: 71
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Outer Rim Smuggler"
            id: 45
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 1
            points: 67
            slots: [
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Jan Ors"
            id: 46
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 5
            points: 41
            slots: [
                "Talent"
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Roark Garnet"
            id: 47
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 4
            points: 38
            slots: [
                "Talent"
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Kyle Katarn"
            id: 48
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Rebel Scout"
            id: 49
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 2
            points: 30
            slots: [
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Jake Farrell"
            id: 50
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 4
            points: 36
            slots: [
                "Talent"
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Arvel Crynyd"
            id: 51
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Green Squadron Pilot"
            id: 52
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Phoenix Squadron Pilot"
            id: 53
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 1
            points: 29
            slots: [
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Airen Cracken"
            id: 54
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 5
            points: 36
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Blount"
            id: 55
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 4
            points: 30
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Tala Squadron Pilot"
            id: 56
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 2
            points: 24
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            id: 57
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 1
            points: 22
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Wullffwarro"
            id: 58
            unique: true
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 4
            points: 56
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Lowhhrick"
            id: 59
            unique: true
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 3
            points: 52
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Kashyyyk Defender"
            id: 60
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 1
            points: 44
            slots: [
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Hera Syndulla (VCX-100)"
            id: 61
            unique: true
            canonical_name: 'Hera Syndulla'.canonicalize()
            xws: "herasyndulla-vcx100lightfreighter"
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 5
            points: 72
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: "Kanan Jarrus"
            id: 62
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 3
            lightside: true
            force: 2
            points: 80
            slots: [
                "Force"
                "Sensor"
                "Torpedo"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: '"Chopper"'
            id: 63
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 2
            points: 68
            slots: [
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Reinforce"
                ]
        }
        {
            name: "Lothal Rebel"
            id: 64
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 2
            points: 67
            slots: [
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: "Hera Syndulla"
            id: 65
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            points: 38
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Sabine Wren"
            canonical_name: 'Sabine Wren'.canonicalize()
            id: 66
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            points: 38
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Ezra Bridger"
            id: 67
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            lightside: true
            force: 1
            points: 40
            slots: [
                "Force"
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }

        {
            name: '"Zeb" Orrelios'
            id: 68
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 2
            points: 32
            slots: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Fenn Rau (Sheathipede)"
            id: 69
            unique: true
            xws: "fennrau-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 6
            points: 50
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: "Ezra Bridger (Sheathipede)"
            canonical_name: 'Ezra Bridger'.canonicalize()
            id: 70
            unique: true
            xws: "ezrabridger-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 3
            force: 1
            points: 42
            slots: [
                "Force"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: '"Zeb" Orrelios (Sheathipede)'
            canonical_name: '"Zeb" Orrelios'.canonicalize()
            id: 71
            unique: true
            xws: "zeborrelios-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 2
            points: 32
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: "AP-5"
            id: 72
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 1
            points:30
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Coordinate"
                ]
        }
        {
            name: "Braylen Stramm"
            id: 73
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Ten Numb"
            id: 74
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 4
            points: 46
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blade Squadron Veteran"
            id: 75
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 3
            points: 42
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            id: 76
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 2
            points: 41
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Norra Wexley"
            id: 77
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 5
            points: 55
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Shara Bey"
            id: 78
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 4
            points: 50
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Garven Dreis"
            id: 79
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 4
            points: 49
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Ibtisam"
            id: 80
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 3
            points: 46
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "IG-88A"
            id: 81
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 67
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "IG-88B"
            id: 82
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 63
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
                ]
        }
        {
            name: "IG-88C"
            id: 83
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 64
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "IG-88D"
            id: 84
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 63
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Kavil"
            id: 85
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 5
            points: 42
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Drea Renthal"
            id: 86
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 4
            points: 40
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Hired Gun"
            id: 87
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 2
            points: 32
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Crymorah Goon"
            id: 88
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 1
            points: 30
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Han Solo (Scum)"
            id: 89
            unique: true
            xws: "hansolo"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 6
            points: 54
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian (Scum)"
            id: 90
            unique: true
            xws: "landocalrissian"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 4
            points: 49
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "L3-37"
            id: 91
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 2
            points: 47
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Rotate Arc"
                ]
        }
        {
            name: "Freighter Captain"
            id: 92
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 1
            points: 46
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian (Scum) (Escape Craft)"
            canonical_name: 'Lando Calrissian (Scum)'.canonicalize()
            id: 93
            unique: true
            xws: "landocalrissian-escapecraft"
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 4
            points: 26
            slots: [
                "Talent"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Outer Rim Pioneer"
            id: 94
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 3
            points: 24
            slots: [
                "Talent"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "L3-37 (Escape Craft)"
            canonical_name: 'L3-37'.canonicalize()
            id: 95
            unique: true
            xws: "l337-escapecraft"
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 2
            points: 22
            slots: [
                "Talent"
                "Crew"
                "Modification"
              ]
            ship_override:
                actions: [
                    "Calculate"
                    "Barrel Roll"
                ]
        }
        {
            name: "Autopilot Drone"
            id: 96
            unique: true        
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 1
            charge: 3
            points: 12
            slots: [
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Barrel Roll"
                ]
        }
        {
            name: "Fenn Rau"
            id: 97
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 68
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Old Teroch"
            id: 98
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 5
            points: 56
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Kad Solus"
            id: 99
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Joy Rekkoff"
            id: 100
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 52
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Skull Squadron Pilot"
            id: 101
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Zealous Recruit"
            id: 102
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 1
            points: 41
            slots: [
                "Torpedo"
              ]
        }
        {
            name: "Boba Fett"
            id: 103
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 5
            points: 80
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Emon Azzameen"
            id: 104
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 4
            points: 71
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Kath Scarlet"
            id: 105
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 4
            points: 72
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Koshka Frost"
            id: 106
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 3
            points: 70
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Krassis Trelix"
            id: 107
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 3
            points: 65
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Bounty Hunter"
            id: 108
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 2
            points: 62
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "4-LOM"
            id: 109
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 49
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Jam"
                ]

        }
        {
            name: "Zuckuss"
            id: 110
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 45
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Gand Findsman"
            id: 111
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 1
            points: 41
            slots: [
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Palob Godalhi"
            id: 112
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 3
            points: 38
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Dace Bonearm"
            id: 113
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 4
            charge: 3
            recurring: true
            points: 33
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Torkil Mux"
            id: 114
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 2
            points: 36
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Dengar"
            id: 115
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 6
            charge: 1
            recurring: true
            points: 53
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Tel Trevura"
            id: 116
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 4
            charge: 1        
            points: 44
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Manaroo"
            id: 117
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 3
            points: 45
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Contracted Scout"
            id: 118
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 2
            points: 41
            slots: [
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Talonbane Cobra"
            id: 119
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 5
            points: 50
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Graz"
            id: 120
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 46
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Viktor Hel"
            id: 121
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 44
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Captain Jostero"
            id: 122
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 42
            slots: [
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Black Sun Ace"
            id: 123
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 40
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Cartel Marauder"
            id: 124
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 2
            points: 38
            slots: [
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Asajj Ventress"
            id: 125
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 4
            points: 72
            force: 2
            darkside: true
            slots: [
                "Force"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Ketsu Onyo"
            id: 126
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 5
            points: 69
            slots: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Sabine Wren (Scum)"
            id: 127
            unique: true
            xws: "sabinewren-lancerclasspursuitcraft"
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 3
            points: 61
            slots: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Shadowport Hunter"
            id: 128
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 2
            points: 56
            slots: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Torani Kulda"
            id: 129
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 4
            points: 48
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Dalan Oberos"
            id: 130
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 3
            charge: 2
            points: 45
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Cartel Executioner"
            id: 131
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 3
            points: 41
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Serissu"
            id: 132
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 5
            points: 40
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Genesis Red"
            id: 133
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 4
            points: 31
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Laetin A'shera"
            id: 134
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 30
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Quinn Jast"
            id: 135
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 31
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Tansarii Point Veteran"
            id: 136
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 29
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Inaldra"
            id: 137
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 2
            points: 30
            slots: [
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Sunny Bounder"
            id: 138
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 27
            slots: [
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Cartel Spacer"
            id: 139
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 25
            slots: [
                "Modification"
                "HardpointShip"
              ]
        }
        {
            name: "Constable Zuvio"
            id: 140
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 4
            points: 33
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Sarco Plank"
            id: 141
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 2
            points: 31
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Unkar Plutt"
            id: 142
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 2
            points: 30
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Jakku Gunrunner"
            id: 143
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 1
            points: 28
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Captain Nym"
            id: 144
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 5
            charge: 1
            recurring: true
            points: 48
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Sol Sixxa"
            id: 145
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 3
            points: 46
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Lok Revenant"
            id: 146
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 2
            points: 43
            slots: [
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Guri"
            id: 147
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 5
            points: 62
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R> Calculate"
                    "Boost"
                    "R> Calculate"
                ]
        }
        {
            name: "Prince Xizor"
            id: 148
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Dalan Oberos (StarViper)"
            id: 149
            unique: true
            xws: "dalanoberos-starviperclassattackplatform"
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Black Sun Assassin"
            id: 150
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 3
            points: 48
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Black Sun Enforcer"
            id: 151
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 2
            points: 45
            slots: [
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Moralo Eval"
            id: 152
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 4
            charge: 2
            points: 66
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Bossk"
            id: 153
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 4
            points: 62
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Latts Razzi"
            id: 154
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 3
            points: 57
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Trandoshan Slaver"
            id: 155
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 2
            points: 52
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "N'dru Suhlak"
            id: 156
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 4
            points: 30
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Kaa'to Leeachos"
            id: 157
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 3
            points: 27
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Black Sun Soldier"
            id: 158
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 3
            points: 24
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Binayre Pirate"
            id: 159
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 1
            points: 22
            slots: [
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Nashtah Pup"
            id: 160
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 0
            points: 6
            slots: [
                "Missile"
                "Illicit"
                "Modification"
              ]
            restriction_func: (ship) ->
                builder = ship.builder
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'houndstooth' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false

        }
        {
            name: "Major Vynder"
            id: 161
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 4
            points: 39
            slots: [
                "Talent"         
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Lieutenant Karsabi"
            id: 162
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 37
            slots: [
                "Talent"         
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Rho Squadron Pilot"
            id: 163
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 35
            slots: [
                "Talent"         
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Nu Squadron Pilot"
            id: 164
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 2
            points: 32
            slots: [      
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Captain Kagi"
            id: 165
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 4
            points: 48
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Lieutenant Sai"
            id: 166
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 3
            points: 47
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Colonel Jendon"
            id: 167
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 3
            charge: 2
            points: 46
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Omicron Group Pilot"
            id: 168
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 1
            points: 43
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Grand Inquisitor"
            id: 169
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 5
            points: 52
            force: 2
            darkside: true
            slots: [       
                "Force"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Seventh Sister"
            id: 170
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 4
            points: 43
            force: 2
            darkside: true
            slots: [       
                "Force"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Inquisitor"
            id: 171
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 3
            points: 35
            force: 1
            darkside: true
            slots: [       
                "Force"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Baron of the Empire"
            id: 172
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 3
            points: 30
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Darth Vader"
            id: 173
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 6
            darkside: true
            points: 65
            force: 3
            slots: [       
                "Force"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Maarek Stele"
            id: 174
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 5
            points: 45
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Ved Foslo"
            id: 175
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 4
            points: 44
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Zertik Strom"
            id: 176
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 3
            points: 41
            slots: [       
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Storm Squadron Ace"
            id: 177
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 3
            points: 39
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Tempest Squadron Pilot"
            id: 178
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 2
            points: 36
            slots: [  
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Soontir Fel"
            id: 179
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 6
            points: 52
            slots: [       
                "Talent"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Turr Phennir"
            id: 180
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 42
            slots: [       
                "Talent"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Saber Squadron Ace"
            id: 181
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 36
            slots: [       
                "Talent"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Alpha Squadron Pilot"
            id: 182
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 1
            points: 31
            slots: [       
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Major Vermeil"
            id: 183
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 4
            points: 49
            slots: [       
                "Talent"
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Captain Feroph"
            id: 184
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 3
            points: 47
            slots: [       
                "Talent"
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: '"Vizier"'
            id: 185
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 2
            points: 45
            slots: [
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Scarif Base Pilot"
            id: 186
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 1
            points: 39
            slots: [       
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Lieutenant Kestal"
            id: 187
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 4
            points: 31
            slots: [       
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: '"Double Edge"'
            id: 188
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 2
            points: 29
            slots: [       
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Onyx Squadron Scout"
            id: 189
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 3
            points: 28
            slots: [       
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Sienar Specialist"
            id: 190
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 2
            points: 26
            slots: [       
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: '"Redline"'
            id: 191
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 5
            points: 44
            slots: [       
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Deathrain"'
            id: 192
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 4
            points: 42
            slots: [       
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Cutlass Squadron Pilot"
            id: 193
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 2
            points: 36
            slots: [       
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Colonel Vessery"
            id: 194
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 84
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Countess Ryad"
            id: 195
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 82
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Rexler Brath"
            id: 196
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 5
            points: 81
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Onyx Squadron Ace"
            id: 197
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 74
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Delta Squadron Pilot"
            id: 198
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 1
            points: 67
            slots: [       
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: '"Whisper"'
            id: 199
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 5
            points: 52
            slots: [       
                "Talent"
                "Sensor"
                "Crew"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: '"Echo"'
            id: 200
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 4
            points: 50
            slots: [       
                "Talent"
                "Sensor"
                "Crew"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Sigma Squadron Ace"
            id: 201
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 4
            points: 46
            slots: [       
                "Talent"
                "Sensor"
                "Crew"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Imdaar Test Pilot"
            id: 202
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 3
            points: 43
            slots: [       
                "Sensor"
                "Crew"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Captain Jonus"
            id: 203
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 4
            points: 36
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Major Rhymer"
            id: 204
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 4
            points: 34
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Tomax Bren"
            id: 205
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 5
            points: 34
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Deathfire"'
            id: 206
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 2
            points: 32
            slots: [       
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Gamma Squadron Ace"
            id: 207
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 3
            points: 30
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Scimitar Squadron Pilot"
            id: 208
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 2
            points: 27
            slots: [       
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Countdown"'
            id: 209
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 4
            points: 44
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Pure Sabacc"'
            id: 210
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 4
            points: 44
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Duchess"'
            id: 211
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 5
            points: 42
            slots: [
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Black Squadron Scout"
            id: 212
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 3
            points: 34
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Planetary Sentinel"
            id: 213
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 1
            points: 31
            slots: [
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Rear Admiral Chiraneau"
            id: 214
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 5
            points: 76
            slots: [       
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Captain Oicunn"
            id: 215
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 3
            points: 74
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Patrol Leader"
            id: 216
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 2
            points: 67
            slots: [
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: '"Howlrunner"'
            id: 217
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 40
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Iden Versio"
            id: 218
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            charge: 1
            points: 40
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Mauler" Mithel'
            id: 219
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 31
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Scourge" Skutu'
            id: 220
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 31
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Wampa"'
            id: 221
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 1
            recurring: true
            charge: 1
            points: 29
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Del Meeko"
            id: 222
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 30
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Gideon Hask"
            id: 223
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 30
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Seyn Marana"
            id: 224
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 30
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Valen Rudor"
            id: 225
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            points: 27
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Night Beast"'
            id: 226
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 2
            points: 25
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Black Squadron Ace"
            id: 227
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            points: 25
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Obsidian Squadron Pilot"
            id: 228
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 2
            points: 23
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Academy Pilot"
            id: 229
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 1
            points: 22
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Spice Runner"
            id: 230
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 1
            points: 30
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Poe Dameron"
            id: 231
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            points: 68
            charge: 1
            recurring: true 
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            id: 232 # duplicate, has been removed 
            skip: true
        }
        {
            name: '"Midnight"'
            id: 233
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 6
            points: 42
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Longshot"'
            id: 234
            skip: true
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Muse"'
            id: 235
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 30
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Kylo Ren"
            id: 236
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 5
            force: 2
            darkside: true
            points: 76
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            slots: [
                "Force"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Blackout"'
            id: 237
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 5
            points: 63
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Dormitz"
            id: 238
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 60
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "L'ulo L'ampar"
            id: 239
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 5
            points: 38
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Tallissan Lintra"
            id: 240
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 5
            charge: 1
            recurring: true
            points: 35
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "blanks"
            id: 241
            skip: true
        }
        {
            name: '"Backdraft"'
            id: 242
            unique: true
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 4
            points: 39
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Quickdraw"'
            id: 243
            unique: true
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 6
            charge: 1
            recurring: true 
            points: 45
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Rey"
            id: 244
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 5
            points: 70
            force: 2
            slots: [
                "Force"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Han Solo (Resistance)"
            id: 245
            unique: true
            xws: "hansolo-scavengedyt1300"
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            points: 65
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Chewbacca (Resistance)"
            id: 246
            unique: true
            faction: "Resistance"
            xws: "chewbacca-scavengedyt1300"
            ship: "Scavenged YT-1300"
            skill: 4
            points: 63
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Captain Seevor"
            id: 247
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 3
            charge: 1
            recurring: true
            points: 28
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Surveyor"
            id: 248
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 2
            points: 23
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Ahhav"
            id: 249
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 3
            points: 30
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Finch Dallow"
            id: 250
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 4
            points: 60
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Major Stridan"
            id: 251
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 61
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Kare Kun"
            id: 252
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 51
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Joph Seastriker"
            id: 253
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 51
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Lieutenant Bastian"
            id: 254
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 2
            points: 47
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Jaycris Tubbs"
            id: 255
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 1
            points: 48
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Black Squadron Ace (T-70)"
            id: 256
            faction: "Resistance"
            xws: "blacksquadronace-t70xwing" 
            ship: "T-70 X-Wing"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Red Squadron Expert"
            id: 257
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 44
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Blue Squadron Rookie"
            id: 258
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 1
            points: 42
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Zeta Squadron Survivor"
            id: 259
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 2
            points: 32
            slots: [
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Cobalt Squadron Bomber"
            id: 260
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 52
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "TN-3465"
            id: 261
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 28
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Scorch"'
            id: 262
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 4
            points: 33
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Longshot"'
            id: 263
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 3
            points: 31
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Static"'
            id: 264
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 4
            points: 33
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Rivas"
            id: 265
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 1
            points: 27
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Commander Malarus"
            id: 266
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 5
            points: 38
            charge: 2
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Omega Squadron Ace"
            id: 267
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 3
            points: 28
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Zeta Squadron Pilot"
            id: 268
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 26
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Epsilon Squadron Cadet"
            id: 269
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 1
            points: 25
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Greer Sonnel"
            id: 270
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 4
            points: 36
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Zari Bangel"
            id: 271
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 3
            points: 35
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Darth Maul"
            id: 272
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 5
            force: 3
            darkside: true
            points: 65
            slots: [
                "Force"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }
        {
            name: "Anakin Skywalker"
            id: 273
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 6
            force: 3
            points: 60
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Luminara Unduli"
            id: 274
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 2
            points: 43
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Barriss Offee"
            id: 275
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 1
            points: 38
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Ahsoka Tano"
            id: 276
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 3
            force: 2
            points: 44
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Jedi Knight"
            id: 277
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 3
            force: 1
            points: 37
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Obi-Wan Kenobi"
            id: 278
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            force: 3
            points: 47
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Trade Federation Drone"
            id: 279
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 19
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Sinker"'
            id: 280
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 54
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Petty Officer Thanisson"
            id: 281
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 1
            points: 59
            charge: 1
            recurring: true
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Captain Cardinal"
            id: 282
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 62
            charge: 2
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Avenger"'
            id: 283
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 3
            points: 56
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: '"Recoil"'
            id: 284
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 4
            points: 57
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: "Omega Squadron Expert"
            id: 285
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Sienar-Jaemus Engineer"
            id: 286
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 1
            points: 51
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "First Order Test Pilot"
            id: 287
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 4
            points: 56
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Starkiller Base Pilot"
            id: 288
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 56
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Tavson"
            id: 289
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 3
            charge: 2
            recurring: true
            points: 62
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Null"'
            id: 290
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 0
            points: 30
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Cat"
            id: 291
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 54
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Ben Teene"
            id: 292
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 3
            points: 58
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            applies_condition: 'Rattled'.canonicalize()
        }
        {
            name: "Edon Kappehl"
            id: 293
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 3
            points: 60
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Vennie"
            id: 294
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 2
            points: 56
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Resistance Sympathizer"
            id: 295
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 2
            points: 60
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Jessika Pava"
            id: 296
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 51
            charge: 1
            recurring: true 
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Temmin Wexley"
            id: 297
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 53
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Nien Nunb"
            id: 298
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            points: 55
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Ello Asty"
            id: 299
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            points: 55
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Green Squadron Expert"
            id: 300
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Blue Squadron Recruit"
            id: 301
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 1
            points: 32
            slots: [
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Foreman Proach"
            id: 302
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 4
            points: 32
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Overseer Yushyn"
            id: 303
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 2
            charge: 1
            recurring: true
            points: 26
            slots: [
                "Modification"
            ]
        }
        {
            name: "Mining Guild Sentry"
            id: 304
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 1
            points: 22
            slots: [
                "Modification"
            ]
        }
        {
            name: "General Grievous"
            id: 305
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 4
            points: 44
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Wat Tambor"
            id: 306
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 3
            points: 42
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Feethan Ottraw Autopilot"
            id: 307
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            skill: 1
            points: 35
            slots: [
                "Tactical Relay"
                "Modification"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R> Calculate"
                    "Boost"
                    "R> Calculate"
                ]
        }
        {
            name: "Captain Sear"
            id: 308
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 2
            points: 39
            slots: [
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Precise Hunter"
            id: 309
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 23
            max_per_squad: 3
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Haor Chall Prototype"
            id: 310
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 21
            max_per_squad: 2
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "DFS-081"
            id: 311
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 26
            unique: true
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Plo Koon"
            id: 312
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            force: 2
            points: 44
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Saesee Tiin"
            id: 313
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 2
            points: 43
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Mace Windu"
            id: 314
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 3
            points: 45
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Kickback"'
            id: 315
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 4
            points: 33
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball"'
            id: 316
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 5
            points: 34
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Swoop"'
            id: 317
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 3
            points: 31
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Axe"'
            id: 318
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Tucker"'
            id: 319
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 2
            points: 29
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Blue Squadron Protector"
            id: 320
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 3
            points: 27
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Gold Squadron Trooper"
            id: 321
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 2
            points: 25
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Anakin Skywalker (N-1 Starfighter)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-nabooroyaln1starfighter"
            id: 322
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            force: 1
            points: 41
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Bravo Flight Officer"
            id: 323
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 2
            points: 33
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Techno Union Bomber"
            id: 324
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 1
            points: 25
            slots: [
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Bombardment Drone"
            id: 325
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            max_per_squad: 3
            points: 29
            slots: [
                "Sensor"
                "Device"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DBS-404"
            id: 326
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 4
            points: 30
            slots: [
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Separatist Bomber"
            id: 327
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 28
            slots: [
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DBS-32C"
            id: 328
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 40
            slots: [
                "Sensor"
                "Tactical Relay"
                "Modification"
                "Configuration"
            ]
            ship_override:
                actionsred: [
                    "Jam"
                ]
        }
        {
            name: "Baktoid Prototype"
            id: 329
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 1
            points: 28
            slots: [
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Naboo Handmaiden"
            id: 330
            max_per_squad: 2
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 1
            points: 42
            applies_condition: '''Decoyed'''.canonicalize()
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Dineé Ellberger"
            id: 331
            xws: "dineeellberger"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 3
            points: 38
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Padmé Amidala"
            id: 332
            xws: "padmeamidala"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            points: 45
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Ric Olié"
            id: 333
            xws: "ricolie"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 5
            points: 42
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Count Dooku"
            id: 334
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            force: 3
            darkside: true
            points: 61
            slots: [
                "Force"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }
        {
            name: "0-66"
            id: 335
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            points: 51
            slots: [
                "Talent"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                ]
        }
        {
            name: "Dark Courier"
            id: 336
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 2
            points: 51
            slots: [
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }
        {
            name: "DFS-311"
            id: 337
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 23
            unique: true
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            xws: "oddball-arc170starfighter" 
            canonical_name: '"Odd Ball"'.canonicalize()
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 5
            points: 51
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: '"Jag"'
            id: 339
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 48
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Squad Seven Veteran"
            id: 340
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 44
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "104th Battalion Pilot"
            id: 341
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 2
            points: 42
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: '"Wolffe"'
            id: 342
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 4
            charge: 1
            points: 50
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Separatist Drone"
            id: 343
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 21
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Skakoan Ace"
            id: 344
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            skill: 3
            points: 38
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }    
        {
            name: "Rose Tico"
            id: 345
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 26
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Logistics Division Pilot"
            id: 346
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 1
            points: 32
            slots: [
                "Tech"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Pammich Nerro Goode"
            id: 347
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 3
            points: 36
            slots: [
                "Tech"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Vi Moradi"
            id: 348
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 1
            points: 27
            applies_condition: '''Compromising Intel'''.canonicalize()
            slots: [
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "BB-8"
            id: 349
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 26
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
            ]
            ship_override:
                actions: [
                    "Calculate"
                ]
        }
        {
            name: "Finn"
            id: 350
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 2
            points: 29
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Cova Nell"
            id: 351
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 4
            points: 38
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Nodin Chavdri"
            id: 352
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 2
            points: 36
            slots: [
                "Tech"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Stalgasin Hive Guard"
            id: 353
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 3
            points: 34
            slots: [
                "Talent"
            ]
        }
        {
            name: "Petranaki Arena Ace"
            id: 354
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 38
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Gorgol"
            unique: true
            id: 355
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 2
            points: 36
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Chertek"
            unique: true
            id: 356
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 39
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Sun Fac"
            unique: true
            id: 357
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 6
            points: 54
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Berwer Kret"
            unique: true
            id: 358
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 5
            points: 40
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Anakin Skywalker (Y-Wing)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-btlbywing"
            unique: true
            id: 359
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 6
            force: 3
            points: 60
            slots: [
                "Force"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Shadow Squadron Veteran"
            id: 360
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Red Squadron Bomber"
            id: 361
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 2
            points: 30
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "R2-D2"
            id: 362
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 2
            points: 35
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Crew"
                "Device"
                "Modification"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                ]
        }
        {
            name: '"Goji"'
            id: 363
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 2
            points: 32
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Broadside"'
            id: 364
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 3
            points: 36
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Matchstick"'
            id: 365
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 4
            points: 43
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball" (Y-Wing)'
            xws: "oddball-btlbywing"
            id: 366
            unique: true
            canonical_name: '"Odd Ball"'.canonicalize()
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 5
            points: 44
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Republic Judiciary"
            id: 367
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 146
            slots: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Alderaanian Guard"
            id: 368
            faction: "Rebel Alliance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 146
            slots: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Outer Rim Patrol"
            id: 369
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 146
            slots: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "First Order Collaborators"
            id: 370
            faction: "First Order"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 146
            slots: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Echo Base Evacuees"
            id: 371
            faction: "Rebel Alliance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 55
            slots: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "New Republic Volunteers"
            id: 372
            faction: "Resistance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 55
            slots: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Outer Rim Garrison"
            id: 373
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 60
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "First Order Sympathizers"
            id: 374
            faction: "First Order"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 60
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Separatist Privateers"
            id: 375
            faction: "Separatist Alliance"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 58
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Tactical Relay"
                "Team"
                "Cargo"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Syndicate Smugglers"
            id: 376
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 58
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Device"
                "Illicit"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Jarek Yeager"
            id: 377
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 5
            points: 33
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Kazuda Xiono"
            id: 378
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 4
            points: 40
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "R1-J5"
            id: 379
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 1
            points: 29
            slots: [
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Evade"
                    "Barrel Roll"
                    "Slam"
                ]
        }
        {
            name: "Colossus Station Mechanic"
            id: 380
            faction: "Resistance"
            ship: "Fireball"
            skill: 2
            points: 26
            slots: [
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Major Vonreg"
            id: 381
            faction: "First Order"
            unique: true
            skill: 6
            ship: "TIE/Ba Interceptor"
            points: 57
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Holo"'
            id: 382
            faction: "First Order"
            unique: true
            skill: 5
            ship: "TIE/Ba Interceptor"
            points: 54
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Ember"'
            id: 383
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/Ba Interceptor"
            points: 52
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "First Order Provocateur"
            id: 384
            faction: "First Order"
            skill: 3
            ship: "TIE/Ba Interceptor"
            points: 45
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Captain Phasma"
            id: 385
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/SF Fighter"
            points: 39
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Rush"'
            id: 386
            faction: "First Order"
            unique: true
            skill: 2
            ship: "TIE/VN Silencer"
            points: 57
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: "Zizi Tlo"
            id: 387
            faction: "Resistance"
            unique: true
            skill: 5
            charge: 1
            recurring: true
            ship: "RZ-2 A-Wing"
            points: 40
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Ronith Blario"
            id: 388
            faction: "Resistance"
            unique: true
            skill: 2
            ship: "RZ-2 A-Wing"
            points: 34
            slots: [
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Paige Tico"
            id: 389
            faction: "Resistance"
            unique: true
            skill: 5
            ship: "MG-100 StarFortress"
            points: 60
            charge: 1
            recurring: true
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "K-2SO"
            id: 390
            faction: "Rebel Alliance"
            unique: true
            skill: 3
            ship: "U-Wing"
            points: 46
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                ]
        }
        {
            name: "Gina Moonsong"
            id: 391
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "B-Wing"
            points: 50
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Alexsandr Kallus"
            id: 392
            faction: "Rebel Alliance"
            unique: true
            skill: 4
            ship: "VCX-100"
            points: 69
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: "Leia Organa"
            id: 393
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "YT-1300"
            points: 79
            force: 1
            slots: [
                "Force"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Fifth Brother"
            id: 394
            faction: "Galactic Empire"
            unique: true
            skill: 4
            darkside: true
            ship: "TIE Advanced Prototype"
            points: 42
            force: 2
            slots: [
                "Force"
                "Sensor"
                "Missile"
            ]
        }
        {
            name: '"Vagabond"'
            id: 395
            faction: "Galactic Empire"
            unique: true
            skill: 2
            ship: "TIE Striker"
            points: 35
            slots: [
                "Talent"
                "Gunner"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Morna Kee"
            id: 396
            faction: "Galactic Empire"
            unique: true
            skill: 4
            ship: "VT-49 Decimator"
            points: 75
            charge: 3
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lieutenant LeHuse"
            id: 397
            faction: "First Order"
            unique: true
            skill: 5
            ship: "TIE/SF Fighter"
            points: 39
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Bossk (Z-95 Headhunter)"
            xws: "bossk-z-95headhunter"
            id: 398
            faction: "Scum and Villainy"
            unique: true
            skill: 4
            ship: "Z-95 Headhunter"
            points: 29
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "G4R-GOR V/M"
            id: 399
            faction: "Scum and Villainy"
            unique: true
            skill: 0
            ship: "M3-A Interceptor"
            points: 28
            slots: [
                "Modification"
                "HardpointShip"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                ]
        }
        {
            name: "Nom Lumb"
            id: 400
            faction: "Scum and Villainy"
            unique: true
            skill: 1
            ship: "JumpMaster 5000"
            points: 38
            slots: [
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
    ]


    upgradesById: [
       {
           name: '"Chopper" (Astromech)'
           id: 0
           slot: "Astromech"
           canonical_name: '"Chopper"'.canonicalize()
           points: 2
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: '"Genius"'
           id: 1
           slot: "Astromech"
           points: 0
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "R2 Astromech"
           id: 2
           slot: "Astromech"
           pointsarray: [3,3,4,4]
           variableagility: true
           charge: 2
       }
       {
           name: "R2-D2"
           id: 3
           unique: true
           slot: "Astromech"
           pointsarray: [4,4,5,6]
           variableagility: true
           charge: 3
           faction: "Rebel Alliance"
       }
       {
           name: "R3 Astromech"
           id: 4
           slot: "Astromech"
           points: 3
       }
       {
           name: "R4 Astromech"
           id: 5
           slot: "Astromech"
           points: 2
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
           modifier_func: (stats) ->
                for turn in [0 ... stats.maneuvers[1].length]
                    if turn > 4
                        continue
                    if stats.maneuvers[1][turn] > 0 
                        if stats.maneuvers[1][turn] == 3
                            stats.maneuvers[1][turn] = 1
                        else 
                            stats.maneuvers[1][turn] = 2
                    if stats.maneuvers[2][turn] > 0 
                        if stats.maneuvers[2][turn] == 3
                            stats.maneuvers[2][turn] = 1
                        else 
                            stats.maneuvers[2][turn] = 2
       }
       {
           name: "R5 Astromech"
           id: 6
           slot: "Astromech"
           points: 4
           charge: 2
       }
       {
           name: "R5-D8"
           id: 7
           unique: true
           slot: "Astromech"
           points: 6
           charge: 3
           faction: "Rebel Alliance"
       }
       {
           name: "R5-P8"
           id: 8
           slot: "Astromech"
           points: 4
           unique: true
           faction: "Scum and Villainy"
           charge: 3
       }
       {
           name: "R5-TK"
           id: 9
           slot: "Astromech"
           points: 0
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Heavy Laser Cannon"
           id: 10
           slot: "Cannon"
           points: 4
           attackbull: 4
           range: """2-3"""
       }
       {
           name: "Ion Cannon"
           id: 11
           slot: "Cannon"
           points: 5
           attack: 3
           range: """1-3"""
       }
       {
           name: "Jamming Beam"
           id: 12
           slot: "Cannon"
           points: 0
           attack: 3
           range: """1-2"""
       }
       {
           name: "Tractor Beam"
           id: 13
           slot: "Cannon"
           points: 2
           attack: 3
           range: """1-3"""
       }
       {
           name: "Admiral Sloane"
           id: 14
           slot: "Crew"
           points: 9
           unique: true
           faction: "Galactic Empire"
       }
       {
           name: "Agent Kallus"
           id: 15
           slot: "Crew"
           points: 5
           unique: true
           faction: "Galactic Empire"
           applies_condition: 'Hunted'.canonicalize()
       }
       {
           name: "Boba Fett"
           id: 16
           slot: "Crew"
           points: 0
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Baze Malbus"
           id: 17
           slot: "Crew"
           points: 3
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "C-3PO"
           id: 18
           slot: "Crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
           name: "Cassian Andor"
           id: 19
           slot: "Crew"
           points: 6
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Cad Bane"
           id: 20
           slot: "Crew"
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Chewbacca"
           id: 21
           slot: "Crew"
           points: 4
           unique: true
           faction: "Rebel Alliance"
           charge: 2
           recurring: true
       }
       {
           name: "Chewbacca (Scum)"
           id: 22
           slot: "Crew"
           xws: "chewbacca-crew" 
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: '"Chopper" (Crew)'
           id: 23
           canonical_name: '"Chopper"'.canonicalize()
           xws: "chopper-crew" 
           slot: "Crew"
           points: 1
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Ciena Ree"
           id: 24
           slot: "Crew"
           points: 6
           unique: true
           faction: "Galactic Empire"
           restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actions or "Coordinate" in ship.effectiveStats().actionsred
       }
       {
           name: "Cikatro Vizago"
           id: 25
           slot: "Crew"
           points: 1
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Darth Vader"
           id: 26
           slot: "Crew"
           points: 14
           force: 1
           unique: true
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Death Troopers"
           id: 27
           slot: "Crew"
           points: 6
           unique: true
           faction: "Galactic Empire"
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Crew" ]
       }
       {
           name: "Director Krennic"
           id: 28
           slot: "Crew"
           points: 4
           unique: true
           faction: "Galactic Empire"
           applies_condition: 'Optimized Prototype'.canonicalize()
           modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
       }
       {
           name: "Emperor Palpatine"
           id: 29
           slot: "Crew"
           points: 11
           force: 1
           unique: true
           faction: "Galactic Empire"
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Crew" ]
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Freelance Slicer"
           id: 30
           slot: "Crew"
           points: 3
       }
       {
           name: "4-LOM"
           id: 31
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: 'GNK "Gonk" Droid'
           id: 32
           slot: "Crew"
           points: 10
           charge: 1
       }
       {
           name: "Grand Inquisitor"
           id: 33
           slot: "Crew"
           points: 13
           unique: true
           force: 1 
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Grand Moff Tarkin"
           id: 34
           slot: "Crew"
           points: 6
           unique: true
           faction: "Galactic Empire"
           charge: 2
           recurring: true
           restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
           name: "Hera Syndulla"
           id: 35
           slot: "Crew"
           points: 4
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "IG-88D"
           id: 36
           slot: "Crew"
           points: 3
           unique: true
           faction: "Scum and Villainy"
           modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        
       }
       {
           name: "Informant"
           id: 37
           slot: "Crew"
           points: 5
           unique: true
           applies_condition: 'Listening Device'.canonicalize()
       }
       {
           name: "ISB Slicer"
           id: 38
           slot: "Crew"
           points: 3
           faction: "Galactic Empire"
       }
       {
           name: "Jabba the Hutt"
           id: 39
           slot: "Crew"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           charge: 4
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Crew" ]
       }
       {
           name: "Jyn Erso"
           id: 40
           slot: "Crew"
           points: 2
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Kanan Jarrus"
           id: 41
           slot: "Crew"
           lightside: true
           points: 12
           force: 1
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Ketsu Onyo"
           id: 42
           slot: "Crew"
           points: 5
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "L3-37"
           id: 43
           slot: "Crew"
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Lando Calrissian"
           id: 44
           slot: "Crew"
           xws: "landocalrissian" 
           points: 2
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Lando Calrissian (Scum)"
           id: 45
           slot: "Crew"
           xws: "landocalrissian-crew" 
           points: 8
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Leia Organa"
           id: 46
           slot: "Crew"
           points: 0
           unique: true
           faction: "Rebel Alliance"
           charge: 3
           recurring: true
       }
       {
           name: "Latts Razzi"
           id: 47
           slot: "Crew"
           points: 7
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Maul"
           id: 48
           slot: "Crew"
           points: 11
           unique: true
           faction: ["Scum and Villainy", "Rebel Alliance"]
           force: 1
           modifier_func: (stats) ->
                stats.force += 1
                stats.darkside = true
           restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Scum and Villainy"
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'ezrabridger' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false
       }
       {
           name: "Minister Tua"
           id: 49
           slot: "Crew"
           points: 7
           unique: true
           faction: "Galactic Empire"
       }
       {
           name: "Moff Jerjerrod"
           id: 50
           slot: "Crew"
           points: 8
           unique: true
           faction: "Galactic Empire"
           charge: 2
           recurring: true
           restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actions or "Coordinate" in ship.effectiveStats().actionsred
       }
       {
           name: "Magva Yarro"
           id: 51
           slot: "Crew"
           points: 7
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Nien Nunb"
           id: 52
           slot: "Crew"
           points: 5
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                for s in (stats.maneuvers)
                    if s[1] > 0
                        if s[1] == 1
                            s[1] = 2
                        else if s[1] == 3
                            s[1] = 1
                    if s[3] > 0
                        if s[3] == 1
                            s[3] = 2
                        else if s[3] == 3
                            s[3] = 1
       }
       {
           name: "Novice Technician"
           id: 53
           slot: "Crew"
           points: 4
       }
       {
           name: "Perceptive Copilot"
           id: 54
           slot: "Crew"
           points: 8
       }
       {
           name: "Qi'ra"
           id: 55
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "R2-D2 (Crew)"
           id: 56
           slot: "Crew"
           canonical_name: 'r2d2-crew'
           xws: "r2d2-crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Sabine Wren"
           id: 57
           slot: "Crew"
           points: 3
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Saw Gerrera"
           id: 58
           slot: "Crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Seasoned Navigator"
           id: 59
           slot: "Crew"
           pointsarray: [2,3,4,5,5,5,5,5,5]
           variableinit: true
       }
       {
           name: "Seventh Sister"
           id: 60
           slot: "Crew"
           points: 9
           force: 1
           unique: true
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Tactical Officer"
           id: 61
           slot: "Crew"
           points: 2
           restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actionsred
           modifier_func: (stats) ->
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
       }
       {
           name: "Tobias Beckett"
           id: 62
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "0-0-0"
           id: 63
           slot: "Crew"
           points: 3
           unique: true
           faction: ["Scum and Villainy", "Galactic Empire"]
           restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Scum and Villainy"
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'darthvader' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false
       }
       {
           name: "Unkar Plutt"
           id: 64
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: '"Zeb" Orrelios' 
           id: 65
           slot: "Crew"
           points: 1
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Zuckuss"
           id: 66
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Bomblet Generator"
           id: 67
           slot: "Device"
           points: 5
           charge: 2
           applies_condition: 'Bomblet'.canonicalize()
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Device" ]
       }
       {
           name: "Conner Nets"
           id: 68
           slot: "Device"
           points: 6
           charge: 1
           applies_condition: 'Conner Net'.canonicalize()
       }
       {
           name: "Proton Bombs"
           id: 69
           slot: "Device"
           points: 5
           charge: 2
           applies_condition: 'Proton Bomb'.canonicalize()
       }
       {
           name: "Proximity Mines"
           id: 70
           slot: "Device"
           points: 6
           charge: 2
           applies_condition: 'Proximity Mine'.canonicalize()
       }
       {
           name: "Seismic Charges"
           id: 71
           slot: "Device"
           points: 3
           charge: 2
           applies_condition: 'Seismic Charge'.canonicalize()
       }
       {
           name: "Heightened Perception"
           id: 72
           slot: "Force"
           points: 3
       }
       {
           name: "Instinctive Aim"
           id: 73
           slot: "Force"
           points: 1
       }
       {
           name: "Supernatural Reflexes"
           id: 74
           slot: "Force"
           pointsarray: [4,4,4,8,12,12,12]
           variableinit: true
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
           name: "Sense"
           id: 75
           slot: "Force"
           points: 5
       }
       {
           name: "Agile Gunner"
           id: 76
           slot: "Gunner"
           points: 8
       }
       {
           name: "Bistan"
           id: 77
           slot: "Gunner"
           points: 14
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Bossk"
           id: 78
           slot: "Gunner"
           points: 10
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "BT-1"
           id: 79
           slot: "Gunner"
           points: 2
           unique: true
           faction: ["Scum and Villainy", "Galactic Empire"]
           restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Scum and Villainy"
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'darthvader' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false
       }
       {
           name: "Dengar"
           id: 80
           slot: "Gunner"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           recurring: true
           charge: 1

       }
       {
           name: "Ezra Bridger"
           id: 81
           slot: "Gunner"
           points: 14
           force: 1
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Fifth Brother"
           id: 82
           slot: "Gunner"
           points: 9
           force: 1
           unique: true
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Greedo"
           id: 83
           slot: "Gunner"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           charge: 1
           recurring: true 
       }
       {
           name: "Han Solo"
           id: 84
           slot: "Gunner"
           xws: "hansolo" 
           points: 12
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Han Solo (Scum)"
           id: 85
           slot: "Gunner"
           xws: "hansolo-gunner"
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Hotshot Gunner"
           id: 86
           slot: "Gunner"
           points: 7
       }
       {
           name: "Luke Skywalker"
           id: 87
           slot: "Gunner"
           points: 26
           force: 1
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Skilled Bombardier"
           id: 88
           slot: "Gunner"
           points: 2
       }
       {
           name: "Veteran Tail Gunner"
           id: 89
           slot: "Gunner"
           points: 4
           restriction_func: (ship) ->
                ship.data.attackb?
       }
       {
           name: "Veteran Turret Gunner"
           id: 90
           slot: "Gunner"
           points: 6
           restriction_func: (ship) ->
                "Rotate Arc" in ship.effectiveStats().actions or "Rotate Arc" in ship.effectiveStats().actionsred
       }
       {
           name: "Cloaking Device"
           id: 91
           slot: "Illicit"
           points: 4
           unique: true
           charge: 2
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.huge?)
       }
       {
           name: "Contraband Cybernetics"
           id: 92
           slot: "Illicit"
           points: 2
           charge: 1
       }
       {
           name: "Deadman's Switch"
           id: 93
           slot: "Illicit"
           points: 2
       }
       {
           name: "Feedback Array"
           id: 94
           slot: "Illicit"
           points: 3
       }
       {
           name: "Inertial Dampeners"
           id: 95
           slot: "Illicit"
           pointsarray: [0,1,1,1,1,1,1,1,1]
           variableinit: true
       }
       {
           name: "Rigged Cargo Chute"
           id: 96
           slot: "Illicit"
           points: 4
           charge: 1
           restriction_func: (ship) ->
                ship.data.medium?  or ship.data.large?
       }
       {
           name: "Barrage Rockets"
           id: 97
           slot: "Missile"
           points: 6
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 5
           restriction_func: (ship, upgrade_obj) ->
               ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
               upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ 'Missile' ]
       }
       {
           name: "Cluster Missiles"
           id: 98
           slot: "Missile"
           points: 5
           attack: 3
           range: """1-2"""
           rangebonus: true 
           charge: 4
       }
       {
           name: "Concussion Missiles"
           id: 99
           slot: "Missile"
           points: 6
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 3
       }
       {
           name: "Homing Missiles"
           id: 100
           slot: "Missile"
           points: 3
           attack: 4
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
           name: "Ion Missiles"
           id: 101
           slot: "Missile"
           points: 4
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 3
       }
       {
           name: "Proton Rockets"
           id: 102
           slot: "Missile"
           points: 7
           attackbull: 5
           range: """1-2"""
           rangebonus: true 
           charge: 1
       }
       {
           name: "Ablative Plating"
           id: 103
           slot: "Modification"
           points: 4
           charge: 2
           restriction_func: (ship) ->
                ship.data.medium?  or ship.data.large?
       }
       {
           name: "Advanced SLAM"
           id: 104
           slot: "Modification"
           points: 3
           restriction_func: (ship) -> 
                "Slam" in ship.effectiveStats().actions or "Slam" in ship.effectiveStats().actionsred
       }
       {
           name: "Afterburners"
           id: 105
           slot: "Modification"
           points: 6
           charge: 2
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
           name: "Electronic Baffle"
           id: 106
           slot: "Modification"
           points: 2
       }
       {
           name: "Engine Upgrade"
           id: 107
           slot: "Modification"
           pointsarray: [2,4,7]
           variablebase: true
           restriction_func: (ship) ->
                "Boost" in ship.effectiveStats().actionsred
           modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
       }
       {
           name: "Munitions Failsafe"
           id: 108
           slot: "Modification"
           points: 1
       }
       {
           name: "Static Discharge Vanes"
           id: 109
           slot: "Modification"
           points: 6
       }
       {
           name: "Tactical Scrambler"
           id: 110
           slot: "Modification"
           points: 2
           restriction_func: (ship) ->
                ship.data.medium?  or ship.data.large?
       }
       {
           name: "Advanced Sensors"
           id: 111
           slot: "Sensor"
           points: 8
       }
       {
           name: "Collision Detector"
           id: 112
           slot: "Sensor"
           points: 5
           charge: 2
       }
       {
           name: "Fire-Control System"
           id: 113
           slot: "Sensor"
           points: 2
       }
       {
           name: "Trajectory Simulator"
           id: 114
           slot: "Sensor"
           points: 3
       }
       {
           name: "Composure"
           id: 115
           slot: "Talent"
           points: 1
           restriction_func: (ship) ->
                "Focus" in ship.effectiveStats().actions or "Focus" in ship.effectiveStats().actionsred
       }
       {
           name: "Crack Shot"
           id: 116
           slot: "Talent"
           points: 1
           charge: 1
       }
       {
           name: "Daredevil"
           id: 117
           slot: "Talent"
           points: 2
           restriction_func: (ship) ->
                "Boost" in ship.effectiveStats().actions and not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
           name: "Debris Gambit"
           id: 118
           slot: "Talent"
           points: 2
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.huge?)
           modifier_func: (stats) ->
                stats.actionsred.push 'Evade' if 'Evade' not in stats.actionsred
       }
       {
           name: "Elusive"
           id: 119
           slot: "Talent"
           points: 3
           charge: 1
           restriction_func: (ship) ->
                not ship.data.large?
       }
       {
           name: "Expert Handling"
           id: 120
           slot: "Talent"
           pointsarray: [2,3,4]
           variablebase: true
           restriction_func: (ship) ->
                "Barrel Roll" in ship.effectiveStats().actionsred
           modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
       }
       {
           name: "Fearless"
           id: 121
           slot: "Talent"
           points: 3
           faction: "Scum and Villainy"
       }
       {
           name: "Intimidation"
           id: 122
           slot: "Talent"
           points: 3
       }
       {
           name: "Juke"
           id: 123
           slot: "Talent"
           points: 4
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.huge?)
       }
       {
           name: "Lone Wolf"
           id: 124
           slot: "Talent"
           points: 4
           unique: true
           recurring: true
           charge: 1
       }
       {
           name: "Marksmanship"
           id: 125
           slot: "Talent"
           points: 1
       }
       {
           name: "Outmaneuver"
           id: 126
           slot: "Talent"
           points: 6
       }
       {
           name: "Predator"
           id: 127
           slot: "Talent"
           points: 2
       }
       {
           name: "Ruthless"
           id: 128
           slot: "Talent"
           points: 0
           faction: "Galactic Empire"
       }
       {
           name: "Saturation Salvo"
           id: 129
           slot: "Talent"
           points: 5
           restriction_func: (ship) ->
                "Reload" in ship.effectiveStats().actions or "Reload" in ship.effectiveStats().actionsred
       }
       {
           name: "Selfless"
           id: 130
           slot: "Talent"
           points: 3
           faction: "Rebel Alliance"
       }
       {
           name: "Squad Leader"
           id: 131
           slot: "Talent"
           pointsarray: [2,4,4,4,4,4,4,4,4]
           variableinit: true
           unique: true
           modifier_func: (stats) ->
                if stats.actionsred?
                    stats.actionsred.push 'Coordinate' if 'Coordinate' not in stats.actionsred
       }
       {
           name: "Swarm Tactics"
           id: 132
           slot: "Talent"
           pointsarray: [3,3,3,3,3,3,3,3,3]
           variableinit: true
       }
       {
           name: "Trick Shot"
           id: 133
           slot: "Talent"
           points: 1
       }
       {
           name: "Adv. Proton Torpedoes"
           id: 134
           slot: "Torpedo"
           points: 6
           attack: 5
           range: """1"""
           rangebonus: true 
           charge: 1
       }
       {
           name: "Ion Torpedoes"
           id: 135
           slot: "Torpedo"
           points: 6
           attack: 4
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
           name: "Proton Torpedoes"
           id: 136
           slot: "Torpedo"
           points: 9
           attack: 4
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
           name: "Dorsal Turret"
           id: 137
           slot: "Turret"
           points: 2
           attackt: 2
           range: """1-2"""
           modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
           name: "Ion Cannon Turret"
           id: 138
           slot: "Turret"
           points: 4
           attackt: 3
           range: """1-2"""
           modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
           name: "Os-1 Arsenal Loadout"
           id: 139
           points: 0
           slot: "Configuration"
           ship: "Alpha-Class Star Wing"
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Missile"
                }
            ]
       }
       {
           name: "Pivot Wing"
           id: 140
           points: 0
           slot: "Configuration"
           ship: "U-Wing"
       }
       {
           name: "Pivot Wing (Open)"
           id: 141
           points: 0
           skip: true
       }
       {
           name: "Servomotor S-Foils"
           id: 142
           points: 0
           slot: "Configuration"
           ship: "X-Wing"
           modifier_func: (stats) ->
                stats.actions.push 'Boost'
                stats.actions.push '*Focus'
                stats.actions.push 'R> Boost'
       }
       {
           name: "Blank"
           id: 143
           skip: true
       }
       {
           name: "Xg-1 Assault Configuration"
           id: 144
           points: 0
           slot: "Configuration"
           ship: "Alpha-Class Star Wing"
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
           ]
       }
       {
           name: "L3-37's Programming"
           id: 145
           skip: true 
           points: 0
           slot: "Configuration"
           faction: "Scum and Villainy"
       }
       {
           name: "Andrasta"
           id: 146
           slot: "Title"
           points: 3
           unique: true
           faction: "Scum and Villainy"
           ship: "Firespray-31"
           confersAddons: [
              {
                  type: exportObj.Upgrade
                  slot: "Device"
              }
            ]
           modifier_func: (stats) ->
                stats.actions.push 'Reload' if 'Reload' not in stats.actions
       }
       {
           name: "Dauntless"
           id: 147
           slot: "Title"
           points: 4
           unique: true
           faction: "Galactic Empire"
           ship: "VT-49 Decimator"
       }
       {
           name: "Ghost"
           id: 148
           slot: "Title"
           unique: true
           points: 0
           faction: "Rebel Alliance"
           ship: "VCX-100"
       }
       {
           name: "Havoc"
           id: 149
           slot: "Title"
           points: 2
           unique: true
           faction: "Scum and Villainy"
           ship: "Scurrg H-6 Bomber"
           unequips_upgrades: [
                'Crew'
            ]
           also_occupies_upgrades: [
                'Crew'
           ]
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Sensor'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Astromech'
                }
           ]
       }
       {
           name: "Hound's Tooth"
           id: 150
           slot: "Title"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           ship: "YV-666"
       }
       {
           name: "IG-2000"
           id: 151
           slot: "Title"
           points: 1
           faction: "Scum and Villainy"
           ship: "Aggressor"
       }
       {
           name: "Lando's Millennium Falcon"
           id: 152
           slot: "Title"
           points: 3
           unique: true
           faction: "Scum and Villainy"
           ship: "Customized YT-1300"
       }
       {
           name: "Marauder"
           id: 153
           slot: "Title"
           points: 3
           unique: true
           faction: "Scum and Villainy"
           ship: "Firespray-31"
           confersAddons: [
              {
                  type: exportObj.Upgrade
                  slot: "Gunner"
              }
            ]
       }
       {
           name: "Millennium Falcon"
           id: 154
           slot: "Title"
           points: 3
           unique: true
           faction: "Rebel Alliance"
           ship: "YT-1300"
           modifier_func: (stats) ->
                stats.actions.push 'Evade' if 'Evade' not in stats.actions
       }
       {
           name: "Mist Hunter"
           id: 155
           slot: "Title"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           ship: "G-1A Starfighter"
           modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
           ]
       }
       {
           name: "Moldy Crow"
           id: 156
           slot: "Title"
           points: 12
           unique: true
           ship: "HWK-290"
           modifier_func: (stats) ->
                stats.attack = 3
       }
       {
           name: "Outrider"
           id: 157
           slot: "Title"
           points: 14
           unique: true
           faction: "Rebel Alliance"
           ship: "YT-2400"
       }
       {
           id: 158
           skip: true 
       }
       {
           name: "Punishing One"
           id: 159
           slot: "Title"
           points: 5
           unique: true
           faction: "Scum and Villainy"
           ship: "JumpMaster 5000"
           unequips_upgrades: [
                'Crew'
           ]
           also_occupies_upgrades: [
                'Crew'
           ]
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Astromech'
                }
           ]
       }
       {
           name: "Shadow Caster"
           id: 160
           slot: "Title"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           ship: "Lancer-Class Pursuit Craft"
       }
       {
           name: "Slave I"
           id: 161
           slot: "Title"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           ship: "Firespray-31"
           confersAddons: [
              {
                  type: exportObj.Upgrade
                  slot: "Torpedo"
              }
            ]
       }
       {
           name: "ST-321"
           id: 162
           slot: "Title"
           points: 4
           unique: true
           faction: "Galactic Empire"
           ship: "Lambda-Class Shuttle"
       }
       {
           name: "Virago"
           id: 163
           slot: "Title"
           points: 8
           unique: true
           charge: 2
           ship: "StarViper"
           modifier_func: (stats) ->
                stats.shields += 1       
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Modification"
                }
            ]
       }
       {
           name: "Hull Upgrade"
           id: 164
           slot: "Modification"
           pointsarray: [2,3,5,7]
           variableagility: true
           modifier_func: (stats) ->
                stats.hull += 1
       }
       {
           name: "Shield Upgrade"
           id: 165
           slot: "Modification"
           pointsarray: [3,4,6,8]
           variableagility: true
           modifier_func: (stats) ->
                stats.shields += 1
       }
       {
           name: "Stealth Device"
           id: 166
           slot: "Modification"
           pointsarray: [3,4,6,8]
           variableagility: true
           charge: 1
           modifier_func: (stats) ->
                stats.agility += 1
       }
       {
           name: "Phantom"
           id: 167
           slot: "Title"
           points: 0
           unique: true
           faction: "Rebel Alliance"
           ship: ["Attack Shuttle","Sheathipede-Class Shuttle"]
       }
       {
            id: 168
            skip: true
       }
       {
            id: 169
            skip: true
       }
       {
            id: 170
            skip: true
       }
       {
            name: "Black One"
            id: 171
            slot: "Title"
            unique: true
            charge: 1
            points: 2
            faction: "Resistance"
            ship: "T-70 X-Wing"
            modifier_func: (stats) ->
                stats.actions.push 'Slam' if 'Slam' not in stats.actions
       }
       {
            name: "Heroic"
            id: 172
            slot: "Talent"
            points: 1
            faction: "Resistance"
       }
       {
            name: "Rose Tico"
            id: 173
            slot: "Crew"
            points: 9
            unique: true
            faction: "Resistance"
       }
       {
            name: "Finn"
            id: 174
            slot: "Gunner"
            points: 10
            unique: true
            faction: "Resistance"
       }
       {
            name: "Integrated S-Foils"
            id: 175
            slot: "Configuration"
            points: 0
            ship: "T-70 X-Wing"
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll'
                stats.actions.push '*Focus'
                stats.actions.push 'R> Barrel Roll'
       }
       {
            name: "Integrated S-Foils (Open)"
            id: 176
            skip: true
       }
       {
            name: "Targeting Synchronizer"
            id: 177
            slot: "Tech"
            points: 5
            restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
            name: "Primed Thrusters"
            id: 178
            slot: "Tech"
            pointsarray: [4,5,6,7,8,8,8,8,8]
            variableinit: true
            restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
            name: "Kylo Ren"
            id: 179
            slot: "Crew"
            points: 11
            force: 1
            faction: "First Order"
            unique: true
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "General Hux"
            id: 180
            slot: "Crew"
            points: 6
            unique: true
            faction: "First Order"
            restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actions
       }
       {
            name: "Fanatical"
            id: 181
            slot: "Talent"
            points: 2
            faction: "First Order"
       }
       {
            name: "Special Forces Gunner"
            id: 182
            slot: "Gunner"
            points: 10
            faction: "First Order"
            ship: "TIE/SF Fighter"
       }
       {
            name: "Captain Phasma"
            id: 183
            slot: "Crew"
            unique: true
            points: 5
            faction: "First Order"
       }
       {
            name: "Supreme Leader Snoke"
            id: 184
            slot: "Crew"
            unique: true
            points: 13
            force: 1
            faction: "First Order"
            restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "Hyperspace Tracking Data"
            id: 185
            slot: "Tech"
            faction: "First Order"
            points: 2
            restriction_func: (ship) ->
                ship.data.large?
       }
       {
            name: "Advanced Optics"
            id: 186
            slot: "Tech"
            points: 4
       }
       {
            name: "Rey"
            id: 187
            slot: "Gunner"
            xws: "rey-gunner"
            points: 14
            unique: true
            force: 1
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "Chewbacca (Resistance)"
            id: 188
            slot: "Crew"
            xws: "chewbacca-crew-swz19" 
            points: 5
            charge: 2
            unique: true
            faction: "Resistance"
       }
       {
            name: "Paige Tico"
            id: 189
            slot: "Gunner"
            points: 7
            unique: true
            faction: "Resistance"
       }
       {
            name: "R2-HA"
            id: 190
            slot: "Astromech"
            points: 4
            unique: true
            faction: "Resistance"
       }
       {
            name: "C-3PO (Resistance)"
            id: 191
            slot: "Crew"
            xws: "c3po-crew"
            points: 6
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
                stats.actionsred.push 'Coordinate' if 'Coordinate' not in stats.actionsred
       }
       {
            name: "Han Solo (Resistance)"
            id: 192
            slot: "Crew"
            xws: "hansolo-crew"
            points: 4
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actionsred.push 'Evade' if 'Evade' not in stats.actionsred
       }
       {
            name: "Rey's Millennium Falcon"
            id: 193
            slot: "Title"
            points: 2
            unique: true
            ship: "Scavenged YT-1300"
            faction: "Resistance"
       }
       {
            name: "Petty Officer Thanisson"
            id: 194
            slot: "Crew"
            points: 4
            unique: true
            faction: "First Order"
       }
       {
            name: "BB-8"
            id: 195
            slot: "Astromech"
            pointsarray: [2,3,4,5,6,7,8]
            variableinit: true
            charge: 2
            unique: true
            faction: "Resistance"
       }
       {
            name: "BB Astromech"
            id: 196
            slot: "Astromech"
            pointsarray: [0,1,2,3,4,5,5]
            variableinit: true
            charge: 2
            faction: "Resistance"
       }
       {
            name: "M9-G8"
            id: 197
            slot: "Astromech"
            points: 7
            unique: true
            faction: "Resistance"
       }
       {
            name: "Ferrosphere Paint"
            id: 198
            slot: "Tech"
            points: 6
            faction: "Resistance"
       }
       {
            name: "Brilliant Evasion"
            id: 199
            slot: "Force"
            pointsarray: [0,2,3,3]
            variableagility: true
       }
       {
            name: "Calibrated Laser Targeting"
            id: 200
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            pointsarray: [0,0,1,2,3,4,5]
            variableinit: true
            unequips_upgrades: [ "Modification" ]
            also_occupies_upgrades: [ "Modification" ]
       }
       {
            name: "Delta-7B"
            id: 201
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            pointsarray: [12,13,14,15,16,17,18]
            variableinit: true
            modifier_func: (stats) ->
                stats.attack += 1
                stats.agility += -1
                stats.shields += 2
       }
       {
            name: "Biohexacrypt Codes"
            id: 202
            slot: "Tech"
            points: 1
            faction: "First Order"
            restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
            name: "Predictive Shot"
            id: 203
            slot: "Force"
            points: 1
       }
       {
            name: "Hate"
            id: 204
            slot: "Force"
            pointsarray: [3,3,3]
            variablebase: true
            restriction_func: (ship) ->
                ship.effectiveStats().darkside == true
       }
       {
            name: "R5-X3"
            id: 205
            unique: true
            slot: "Astromech"
            faction: "Resistance"
            charge: 2
            points: 5
       }
       {
            name: "Pattern Analyzer"
            id: 206
            slot: "Tech"
            points: 5
       }
       {
            name: "Impervium Plating"
            id: 207
            ship: "Belbullab-22 Starfighter"
            charge: 2
            slot: "Modification"
            points: 4
       }
       {
            name: "Grappling Struts"
            id: 208
            ship: "Vulture-class Droid Fighter"
            slot: "Configuration"
            points: 1
       }
       {
            name: "Energy-Shell Charges"
            id: 209
            faction: "Separatist Alliance"
            slot: "Missile"
            attack: 3
            range: """2-3"""
            rangebonus: true 
            charge: 1
            points: 4
            restriction_func: (ship) ->
                "Calculate" in ship.effectiveStats().actions or "Calculate" in ship.effectiveStats().actionsred
       }
       {
            name: "Dedicated"
            id: 210
            faction: "Galactic Republic"
            slot: "Talent"
            points: 1
            restriction_func: (ship) ->
                not ship.pilot.unique
       }
       {
            name: "Synchronized Console"
            id: 211
            faction: "Galactic Republic"
            slot: "Modification"
            points: 1
            restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
            name: "Battle Meditation"
            id: 212
            faction: "Galactic Republic"
            slot: "Force"
            pointsarray: [0,2,4,6,8,10,12]
            variableinit: true
            modifier_func: (stats) ->
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
       }
       {
            name: "R4-P Astromech"
            id: 213
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 4
       }
       {
            name: "R4-P17"
            id: 214
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 5
       }
       {
            name: "Spare Parts Canisters"
            id: 215
            slot: "Modification"
            charge: 1
            points: 4
            restriction_func: (ship) ->
                if "Astromech" in ship.pilot.slots
                    if not ship.isSlotOccupied "Astromech"
                        return true
                else if ship.doesSlotExist "Astromech"
                    if not ship.isSlotOccupied "Astromech"
                        return true
                false
       }
       {
            name: "Scimitar"
            id: 216
            unique: true
            ship: "Sith Infiltrator"
            slot: "Title"
            faction: "Separatist Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.actionsred.push 'Cloak' if 'Cloak' not in stats.actionsred
                stats.actions.push 'Jam' if 'Jam' not in stats.actions
       }
       {
            name: "Chancellor Palpatine"
            id: 217
            unique: true
            slot: "Crew"
            faction: ["Galactic Republic", "Separatist Alliance"]
            force: 1
            points: 14
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
       }
       {
            name: "Count Dooku"
            id: 218
            unique: true
            slot: "Crew"
            force: 1
            faction: "Separatist Alliance"
            points: 9
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "General Grievous"
            id: 219
            unique: true
            slot: "Crew"
            charge: 1
            faction: "Separatist Alliance"
            points: 3
       }
       {
            name: "K2-B4"
            id: 220
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 5
       }
       {
            name: "DRK-1 Probe Droids"
            id: 221
            slot: "Device"
            unique: true
            faction: "Separatist Alliance"
            charge: 2
            points: 5
            applies_condition: '''DRK-1 Probe Droid'''.canonicalize()
       }
       {
            name: "Kraken"
            id: 222
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 10
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
            name: "TV-94"
            id: 223
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 5
       }
       {
            name: "Discord Missiles"
            id: 224
            slot: "Missile"
            faction: "Separatist Alliance"
            charge: 1
            max_per_squad: 3
            points: 4
            applies_condition: '''Buzz Droid Swarm'''.canonicalize()
       }
       {
            name: "Clone Commander Cody"
            id: 225
            unique: true
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 3
       }
       {
            name: "R4-P44"
            id: 226
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            points: 5
       }
       {
            name: "Seventh Fleet Gunner"
            id: 227
            charge: 1
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 9
       }
       {
            name: "Treacherous"
            id: 228
            charge: 1
            slot: "Talent"
            faction: "Separatist Alliance"
            points: 2
       }
       {
            name: "Soulless One"
            id: 229
            slot: "Title"
            unique: true
            ship: "Belbullab-22 Starfighter"
            faction: "Separatist Alliance"
            points: 6
            modifier_func: (stats) ->
                stats.hull += 2
       }
       {
            name: "GA-97"
            id: 230
            slot: "Crew"
            points: 6
            charge: 5
            recurring: true
            faction: "Resistance"
            unique: true
            modifier_func: (stats) ->
               stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
            applies_condition: '''It's the Resistance'''.canonicalize()
       }
       {
            name: "Kaydel Connix"
            id: 231
            slot: "Crew"
            points: 5
            faction: "Resistance"
            unique: true
       }
       {
           name: "Autoblasters"
           id: 232
           slot: "Cannon"
           points: 2
           attack: 2
           range: """1-2"""
       }
       {
           name: "R2-C4"
           id: 233
           unique: true
           slot: "Astromech"
           points: 5
           faction: "Galactic Republic"
       }
       {
           name: "Plasma Torpedoes"
           id: 234
           slot: "Torpedo"
           points: 9
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
            name: "Electro-Proton Bomb"
            id: 235
            unique: true
            slot: "Device"
            points: 12
            charge: 1
            unequips_upgrades: [ "Modification" ]
            also_occupies_upgrades: [ "Modification" ]
            applies_condition: 'Electro-Proton Bomb'.canonicalize()
            restriction_func: (ship) ->
                "Reload" in ship.effectiveStats().actions or "Reload" in ship.effectiveStats().actionsred
       }
       {
            name: "Delayed Fuses"
            id: 236
            slot: "Modification"
            points: 1
       }
       {
            name: "Landing Struts"
            id: 237
            ship: "Hyena-Class Droid Bomber"
            slot: "Configuration"
            points: 1
       }
       {
            name: "Diamond-Boron Missiles"
            id: 238
            unique: true
            slot: "Missile"
            points: 6
            attack: 3
            range: """2-3"""
            rangebonus: true 
            charge: 3
            restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
            also_occupies_upgrades: [ 'Missile' ]
       }
       {
            name: "TA-175"
            id: 239
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 5
       }
       {
            name: "Passive Sensors"
            id: 240
            slot: "Sensor"
            points: 3
       }
       {
            name: "R2-A6"
            id: 241
            unique: true
            slot: "Astromech"
            faction: "Galactic Republic"
            points: 6
       }
       {
            name: "Amilyn Holdo"
            id: 242
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 8
       }
       {
            name: "Larma D'Acy"
            id: 243
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 4
       }
       {
            name: "Leia Organa (Resistance)"
            id: 244
            xws: "leiaorgana-resistance"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            force: 1
            points: 17
            restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
       }
       {
            name: "Korr Sella"
            id: 245
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 6
       }
       {
            name: "PZ-4CO"
            id: 246
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
            name: "Angled Deflectors"
            id: 247
            slot: "Modification"
            pointsarray: [9,6,3,3]
            variableagility: true
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.actions.push 'Reinforce' if 'Reinforce' not in stats.actions
            restriction_func: (ship) ->                
                ship.data.shields > 0 and not ship.data.large?
       }
       {
            name: "Ensnare"
            id: 248
            slot: "Talent"
            pointsarray: [10,10,10,10,10,16,24]
            variableinit: true
            ship: "Nantex-Class Starfighter"
       }
       {
            name: "Targeting Computer"
            id: 249
            slot: "Modification"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
       }
       {
            name: "Precognitive Reflexes"
            id: 250
            slot: "Force"
            pointsarray: [3,3,3,4,7,10,13]
            variableinit: true
            restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
            name: "Foresight"
            slot: "Force"
            points: 4
            id: 251
            attackbull: 2
            range: """1-3"""
            rangebonus: true 
       }
       {
            name: "C1-10P"
            id: 252
            unique: true
            slot: "Astromech"
            charge: 2
            points: 7
            faction: "Galactic Republic"
       }
       {
            name: "Ahsoka Tano"
            id: 253
            unique: true
            slot: "Gunner"
            points: 12
            faction: "Galactic Republic"
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "C-3PO (Republic)"
            id: 254
            unique: true
            slot: "Crew"
            xws: "c3po-republic"
            points: 8
            faction: "Galactic Republic"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
            name: "Gravitic Deflection"
            id: 255
            slot: "Talent"
            points: 5
            ship: "Nantex-Class Starfighter"
       }
       {
            name: "Snap Shot"
            id: 256
            slot: "Talent"
            pointsarray: [7,8,9]
            variablebase: true
            attack: 2
            range: """2"""
            rangebonus: true
            
       }
       {
            name: "Agent of the Empire"
            id: 257
            unique: true
            faction: "Galactic Empire"
            slot: "Command"
            points: 4
            ship: ["TIE Advanced","TIE Advanced Prototype"]
            restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
            name: "First Order Elite"
            id: 258
            unique: true
            faction: "First Order"
            slot: "Command"
            ship: ["TIE/SF Fighter","TIE/VN Silencer"]
            points: 4
            restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
            name: "Veteran Wing Leader"
            id: 259
            slot: "Command"
            points: 2
            restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium? or ship.data.huge?)
       }
       {
            name: "Dreadnought Hunter"
            id: 260
            slot: "Command"
            points: 6
            max_per_squad: 2
            restriction_func: (ship) ->
                (not (ship.data.large? or ship.data.medium? or ship.data.huge?)) and (ship.pilot.skill > 3)
       }
       {
            name: "Admiral Ozzel"
            id: 261
            unique: true
            slot: "Command"
            points: 6
            faction: "Galactic Empire"
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Azmorigan"
            id: 262
            unique: true
            slot: "Command"
            points: 4
            faction: "Scum and Villainy"
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Captain Needa"
            id: 263
            unique: true
            faction: "Galactic Empire"
            slot: "Command"
            points: 8
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Carlist Rieekan"
            id: 264
            unique: true
            faction: "Rebel Alliance"
            slot: "Command"
            points: 6
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.actionsred.push 'Evade' if 'Evade' not in stats.actionsred
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Jan Dodonna"
            id: 265
            unique: true
            faction: "Rebel Alliance"
            slot: "Command"
            points: 4
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Raymus Antilles"
            id: 266
            unique: true
            slot: "Command"
            points: 12
            faction: "Rebel Alliance"
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Stalwart Captain"
            id: 267
            unique: true
            slot: "Command"
            points: 6
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Strategic Commander"
            id: 268
            unique: true
            slot: "Command"
            charge: 3
            points: 6
            unequips_upgrades: [ "Crew" ]
            also_occupies_upgrades: [ "Crew" ]
            restriction_func: (ship) ->
                ship.data.huge? and ship.doesSlotExist "Crew"
       }
       {
            name: "Ion Cannon Battery"
            id: 269
            slot: "Hardpoint"
            points: 5
            attackt: 4
            range: """2-4"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
            name: "Targeting Battery"
            id: 270
            slot: "Hardpoint"
            points: 6
            attackt: 3
            range: """2-5"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
            name: "Ordnance Tubes"
            id: 271
            slot: "Hardpoint"
            points: 1
       }
       {
            name: "Point-Defense Battery"
            id: 272
            slot: "Hardpoint"
            points: 9
            attackdt: 2
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
            name: "Turbolaser Battery"
            id: 273
            slot: "Hardpoint"
            points: 13
            attackt: 3
            range: """3-5"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
            restriction_func: (ship) ->
                ship.effectiveStats().energy > 4
       }
       {
            name: "Toryn Farr"
            id: 274
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            points: 4
            modifier_func: (stats) ->
                stats.actions.push 'Lock'
                stats.actions.push 'R> Coordinate'
            restriction_func: (ship) ->
                ship.data.huge?
       }
       {
            name: "Bombardment Specialists"
            id: 275
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
       }
       {
            name: "Comms Team"
            id: 276
            slot: "Team"
            points: 8
            modifier_func: (stats) ->
                stats.actions.push '*Coordinate'
                stats.actions.push '> Calculate'
                stats.actions.push '*Jam'
                stats.actions.push '> Calculate'
       }
       {
            name: "Damage Control Team"
            id: 277
            slot: "Team"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push '*Reinforce'
                stats.actions.push '> Calculate'
       }
       {
            name: "Gunnery Specialists"
            id: 278
            slot: "Team"
            points: 8
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
       }
       {
            name: "IG-RM Droids"
            id: 279
            slot: "Team"
            faction: "Scum and Villainy"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
            name: "Ordnance Team"
            id: 280
            slot: "Team"
            points: 4
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Calculate'
       }
       {
            name: "Sensor Experts"
            id: 281
            slot: "Team"
            points: 10
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
       }
       {
            name: "Adaptive Shields"
            id: 282
            slot: "Cargo"
            points: 10
       }
       {
            name: "Boosted Scanners"
            id: 283
            slot: "Cargo"
            points: 8
       }
       {
            id: 284
            skip: true
       }
       {
            name: "Tibanna Reserves"
            id: 285
            slot: "Cargo"
            points: 3
            charge: 3
       }
       {
            name: "Optimized Power Core"
            id: 286
            slot: "Cargo"
            points: 6
       }
       {
            name: "Quick-Release Locks"
            id: 287
            slot: "Illicit"
            charge: 2
            points: 5
            restriction_func: (ship) ->
                ship.data.huge?
       }
       {
            name: "Saboteur's Map"
            id: 288
            slot: "Illicit"
            points: 3
            restriction_func: (ship) ->
                ship.data.huge?
       }
       {
            name: "Scanner Baffler"
            id: 289
            slot: "Illicit"
            points: 8
            restriction_func: (ship) ->
                ship.data.huge?
       }
       {
            name: "Dodonna's Pride"
            id: 290
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 8
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.actions.push '*Evade'
                stats.actions.push 'R> Coordinate'
                stats.actions.push '*Focus'
                stats.actions.push 'R> Coordinate'
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
       }
       {
            name: "Jaina's Light"
            id: 291
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 6
            modifier_func: (stats) ->
                stats.shields += 1
                stats.energy -= 1
       }
       {
            name: "Liberator"
            id: 292
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 5
            modifier_func: (stats) ->
                stats.energy += 1
       }
       {
            name: "Tantive IV"
            id: 293
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 6
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
            ]
       }
       {
            name: "Bright Hope"
            id: 294
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 5
       }
       {
            name: "Luminous"
            id: 295
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 12
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.energy += 2
       }
       {
            name: "Quantum Storm"
            id: 296
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 3
            modifier_func: (stats) ->
                stats.energy += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
       }
       {
            name: "Assailer"
            id: 297
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 7
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.hull += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
       }
       {
            name: "Corvus"
            id: 298
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 3
       }
       {
            name: "Impetuous"
            id: 299
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 4
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.energy += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
            ]
       }
       {
            name: "Instigator"
            id: 300
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 6
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
            ]
       }
       {
            name: "Blood Crow"
            id: 301
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 5
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.energy += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
       }
       {
            name: "Requiem"
            id: 302
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 7
            modifier_func: (stats) ->
                stats.hull -= 1
                stats.energy += 1
       }
       {
            name: "Suppressor"
            id: 303
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 6
            modifier_func: (stats) ->
                stats.shields += 2
                stats.hull -= 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Sensor'
                }
            ]
       }
       {
            name: "Vector"
            id: 304
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 8
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
       }
       {
            name: "Broken Horn"
            id: 305
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 4
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Illicit'
                }
            ]
       }
       {
            name: "Merchant One"
            id: 306
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 8
            modifier_func: (stats) ->
                stats.actionsred.push 'Evade' if 'Evade' not in stats.actionsred
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Turret'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
       }
       {
            name: "Insatiable Worrt"
            id: 307
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 7
            modifier_func: (stats) ->
                stats.hull += 3
                stats.shields -= 1
                stats.energy -= 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
       }
       {
            name: "Corsair Refit"
            id: 308
            slot: "Configuration"
            ship: "C-ROC Cruiser"
            max_per_squad: 2
            points: 15
            modifier_func: (stats) ->
                stats.hull += 2
                stats.shields -= 2
                stats.energy += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Cannon'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Turret'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Missile'
                }
            ]
       }
       {
            name: "Thunderstrike"
            id: 309
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.hull += 3
                stats.shields -= 3
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
       }
       {
            name: "Coaxium Hyperfuel"
            id: 310
            slot: "Illicit"
            points: 2
            restriction_func: (ship) ->
                "Slam" in ship.effectiveStats().actions
       }
       {
            name: "Mag-Pulse Warheads"
            id: 311
            slot: "Missile"
            points: 6
            attack: 3
            range: """1-3"""
            rangebonus: true 
            charge: 2
       }
       {
            name: "R1-J5"
            id: 312
            slot: "Astromech"
            faction: "Resistance"
            unique: true
            points: 6
            charge: 3
       }
       {
            name: "Stabilized S-Foils"
            id: 313
            slot: "Configuration"
            ship: "B-Wing"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push '*Barrel Roll'
                stats.actions.push 'R> Evade'
                stats.actions.push '*Barrel Roll'
                stats.actions.push 'R> Lock'
                stats.actionsred.push 'Reload'
       }
       {
            name: "K-2SO"
            id: 314
            slot: "Crew"
            faction: "Rebel Alliance"
            unique: true
            points: 8
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push 'Jam'
       }
       {
            name: "Kaz's Fireball"
            id: 315
            slot: "Title"
            ship: "Fireball"
            faction: "Resistance"
            unique: true
            points: 2
       }
       {
            name: "Cluster Mines"
            id: 316
            slot: "Device"
            points: 8
            applies_condition: 'Cluster Mine'.canonicalize()
       }
       {
            name: "Ion Bombs"
            id: 317
            slot: "Device"
            points: 6
       }
       {
            name: "Deuterium Power Cells"
            id: 318
            slot: "Tech"
            points: 9
            charge: 2
            faction: "First Order"
            unequips_upgrades: [ "Modification" ]
            also_occupies_upgrades: [ "Modification" ]
            restriction_func: (ship) ->
                ship.doesSlotExist "Modification"
       }
       {
            name: "Proud Tradition"
            id: 319
            slot: "Talent"
            faction: "First Order"
            points: 2
       }
    ]


    conditionsById: [
        {
            name: '''Zero Condition'''
            id: 0
        }
        {
            name: 'Suppressive Fire'
            id: 1
            unique: true
        }
        {
            name: 'Hunted'
            id: 2
            unique: true
        }
        {
            name: 'Listening Device'
            id: 3
            unique: true
        }
        {
            name: 'Optimized Prototype'
            id: 4
            unique: true
        }
        {
            name: '''I'll Show You the Dark Side'''
            id: 5
            unique: true
        }
        {
            name: 'Proton Bomb'
            id: 6
        }
        {
            name: 'Seismic Charge'
            id: 7
        }
        {
            name: 'Bomblet'
            id: 8
        }
        {
            name: 'Loose Cargo'
            id: 9
        }
        {
            name: 'Conner Net'
            id: 10
        }
        {
            name: 'Proximity Mine'
            id: 11
        }
        {
            name: 'Rattled'
            id: 12
            unique: true
        }
        {
            name: 'DRK-1 Probe Droid'
            id: 13
        }
        {
            name: 'Buzz Droid Swarm'
            id: 14
        }
        {
            name: '''It's the Resistance'''
            id: 15
        }
        {
            name: 'Electro-Proton Bomb'
            id: 16
        }
        {
            name: 'Decoyed'
            id: 17
            unique: true
        }
        {
            name: 'Compromising Intel'
            id: 18
            unique: true
        }
        {
            name: 'Cluster Mine'
            id: 19
        }
    ]

    quickbuildsById: [
        {
            id: 0
            faction: "Galactic Empire"
            pilot: "Valen Rudor"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Shield Upgrade"
            ]
        }
    ]



exportObj.setupCommonCardData = (basic_cards) ->
    # assert that each ID is the index into BLAHById (should keep this, in general)
    for pilot_data, i in basic_cards.pilotsById
        if pilot_data.id != i
            throw new Error("ID mismatch: pilot at index #{i} has ID #{pilot_data.id}")
    for upgrade_data, i in basic_cards.upgradesById
        if upgrade_data.id != i
            throw new Error("ID mismatch: upgrade at index #{i} has ID #{upgrade_data.id}")
    for condition_data, i in basic_cards.conditionsById
        if condition_data.id != i
            throw new Error("ID mismatch: condition at index #{i} has ID #{condition_data.id}")
    for quickbuild_data, i in basic_cards.quickbuildsById
        if quickbuild_data.id != i
            throw new Error("ID mismatch: quickbuild  at index #{i} has ID #{quickbuild_data.id}")


    exportObj.pilots = {}
    # Assuming a given pilot is unique by name...
    for pilot_data in basic_cards.pilotsById
        unless pilot_data.skip?
            pilot_data.sources = []
            pilot_data.canonical_name = pilot_data.name.canonicalize() unless pilot_data.canonical_name?
            exportObj.pilots[pilot_data.name] = pilot_data
    # pilot_name is the English version here as it's the common index into
    # basic card info
                
    exportObj.upgrades = {}
    for upgrade_data in basic_cards.upgradesById
        unless upgrade_data.skip?
            upgrade_data.sources = []
            upgrade_data.canonical_name = upgrade_data.name.canonicalize() unless upgrade_data.canonical_name?
            exportObj.upgrades[upgrade_data.name] = upgrade_data

    exportObj.conditions = {}
    for condition_data in basic_cards.conditionsById
        unless condition_data.skip?
            condition_data.sources = []
            condition_data.canonical_name = condition_data.name.canonicalize() unless condition_data.canonical_name?
            exportObj.conditions[condition_data.name] = condition_data

    # there is no exportObj.quickbuilds generated from basic_cards.quickbuildsById, as reference by pilot name might be ambigous (e.g. there are multiple Black Sq. Aces having different upgrades)

    exportObj.quickbuildsById = {}
    quickbuild_count = 0
    for quickbuild_data in basic_cards.quickbuildsById
        unless quickbuild_data.skip? 
            quickbuild_count += 1
            # Sometimes there is something to be appended to the pilot name for displaying, e.g. (x2) for two TIEs at the cost of 3 threat points. If nothing specified set as empty string. 
            quickbuild_data.suffix = "" unless quickbuild_data.suffix? 
            exportObj.quickbuildsById[quickbuild_data.id] = quickbuild_data
    if Object.keys(exportObj.quickbuildsById).length != quickbuild_count
        throw new Error("At least one quickbuild shares an ID with another")

    for ship_name, ship_data of basic_cards.ships
        ship_data.canonical_name ?= ship_data.name.canonicalize()
        ship_data.sources = []

    # Set sources from manifest
    for expansion, cards of exportObj.manifestByExpansion
        # console.log(exportObj.manifestByExpansion)
        for card in cards
            continue if card.skipForSource # heavy scyk special case :(
            try
                switch card.type
                    when 'pilot'
                        exportObj.pilots[card.name].sources.push expansion
                    when 'upgrade'
                        exportObj.upgrades[card.name].sources.push expansion
                    when 'ship'
                        exportObj.ships[card.name].sources.push expansion
                    else
                        throw new Error("Unexpected card type #{card.type} for card #{card.name} of #{expansion}")
            catch e
                console.log(e)
                console.error "Error adding card #{card.name} (#{card.type}) from #{expansion}"


    for name, card of exportObj.pilots
        card.sources = card.sources.sort()
    for name, card of exportObj.upgrades
        card.sources = card.sources.sort()

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.fixIcons pilot
        exportObj.pilotsById[pilot.id] = pilot
        for source in pilot.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.pilotsById).length != Object.keys(exportObj.pilots).length
        throw new Error("At least one pilot shares an ID with another")

    exportObj.pilotsByFactionCanonicalName = {}
    # uniqueness can't be enforced just be canonical name, but by the base part
    exportObj.pilotsByUniqueName = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionCanonicalName[pilot.faction] ?= {})[pilot.canonical_name] ?= []).push pilot
        (exportObj.pilotsByUniqueName[pilot.canonical_name.getXWSBaseName()] ?= []).push pilot

    exportObj.pilotsByFactionXWS = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionXWS[pilot.faction] ?= {})[pilot.xws] ?= []).push pilot
        

    exportObj.upgradesById = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.fixIcons upgrade
        exportObj.upgradesById[upgrade.id] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw new Error("At least one upgrade shares an ID with another")

    exportObj.upgradesBySlotCanonicalName = {}
    exportObj.upgradesBySlotXWSName = {}
    exportObj.upgradesBySlotUniqueName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        (exportObj.upgradesBySlotCanonicalName[upgrade.slot] ?= {})[upgrade.canonical_name] = upgrade
        (exportObj.upgradesBySlotXWSName[upgrade.slot] ?= {})[upgrade.xws] = upgrade
        (exportObj.upgradesBySlotUniqueName[upgrade.slot] ?= {})[upgrade.canonical_name.getXWSBaseName()] = upgrade

    exportObj.conditionsById = {}
    for condition_name, condition of exportObj.conditions
        exportObj.fixIcons condition
        exportObj.conditionsById[condition.id] = condition
        for source in condition.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.conditionsById).length != Object.keys(exportObj.conditions).length
        throw new Error("At least one condition shares an ID with another")

    exportObj.conditionsByCanonicalName = {}
    for condition_name, condition of exportObj.conditions
        (exportObj.conditionsByCanonicalName ?= {})[condition.canonical_name] = condition

    exportObj.expansions = Object.keys(exportObj.expansions).sort()


    
exportObj.setupTranslationCardData = (pilot_translations, upgrade_translations, condition_translations) ->
    for upgrade_name, translations of upgrade_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.upgrades[upgrade_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for upgrade #{upgrade_name}. Please report this Issue. "
                # throw e

    for condition_name, translations of condition_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.conditions[condition_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for condition #{condition_name}. Please report this Issue. "
                # throw e

    for pilot_name, translations of pilot_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.pilots[pilot_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for pilot #{pilot_name}. Please report this Issue. "
                # throw e

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>')
            .replace(/%BULLSEYEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>')
            .replace(/%GUNNER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>')
            .replace(/%SINGLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>')
            .replace(/%FRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-frontarc"></i>')
            .replace(/%REARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reararc"></i>')
            .replace(/%LEFTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-leftarc"></i>')
            .replace(/%RIGHTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rightarc"></i>')
            .replace(/%ROTATEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rotatearc"></i>')
            .replace(/%FULLFRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullfrontarc"></i>')
            .replace(/%FULLREARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullreararc"></i>')
            .replace(/%DEVICE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-device"></i>')
            .replace(/%MODIFICATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-modification"></i>')
            .replace(/%RELOAD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reload"></i>')
            .replace(/%CONFIG%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-config"></i>')
            .replace(/%TALENT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-talent"></i>')
            .replace(/%FORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcecharge"></i>')
            .replace(/%CHARGE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-charge"></i>')
            .replace(/%ENERGY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-energy"></i>')
            .replace(/%CALCULATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-calculate"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankleft"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankright"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll"></i>')
            .replace(/%BOMB%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bomb"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cloak"></i>')
            .replace(/%F-COORDINATE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-coordinate"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crit"></i>')
            .replace(/%CREW%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>')
            .replace(/%DUALCARD%/g, '<span class="card-restriction">Dual card.</span>')
            .replace(/%ELITE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-elite"></i>')
            .replace(/%TACTICALRELAY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-focus"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>')
            .replace(/%HIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hit"></i>')
            .replace(/%ILLICIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-jam"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>')
            .replace(/%RECOVER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-recover"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce"></i>')
            .replace(/%SALVAGEDASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-salvagedastromech"></i>')
            .replace(/%SHIELD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-shield"></i>')
            .replace(/%SLAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-slam"></i>')
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop"></i>')
            .replace(/%SENSOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sensor"></i>')
            .replace(/%LOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-lock"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>')
            .replace(/%UTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%LARGESHIPONLY%/g, '<span class="card-restriction">Large ship only.</span>')
            .replace(/%SMALLSHIPONLY%/g, '<span class="card-restriction">Small ship only.</span>')
            .replace(/%REBELONLY%/g, '<span class="card-restriction">Rebel only.</span>')
            .replace(/%IMPERIALONLY%/g, '<span class="card-restriction">Imperial only.</span>')
            .replace(/%SCUMONLY%/g, '<span class="card-restriction">Scum only.</span>')
            .replace(/%LIMITED%/g, '<span class="card-restriction">Limited.</span>')
            .replace(/%LINEBREAK%/g, '<br /><br />')
            
exportObj.canonicalizeShipNames = (card_data) ->
    for ship_name, ship_data of card_data.ships
        ship_data.canonical_name ?= ship_data.name.canonicalize()

exportObj.renameShip = (name, new_name) ->
    exportObj.ships[name].display_name = new_name

exportObj.randomizer = (faction_name, points) ->
    shiplistmaster = exportObj.basicCardData #export ship database
    listcount = 0 #start count at 0
    #for shiplistmaster in shiplistmaster.pilotsbyid.faction == faction_name loop grab pilots by faction
        #if Math.random() >= 0.9
        #append.shiplistmaster.pilotsbyid.xws ? shiplistmaster.pilotsbyid.canonical_name ? shiplistmaster.pilotsbyid.name.canonicalize())

exportObj.hyperspaceShipInclusions = [
    {name: 'X-Wing', faction: 'Rebel Alliance'},
    {name: 'YT-1300', faction: 'Rebel Alliance'},
    {name: 'B-Wing', faction: 'Rebel Alliance'},
    {name: 'A-Wing', faction: 'Rebel Alliance'},
    {name: 'Y-Wing', faction: 'Rebel Alliance'},
    {name: 'TIE Advanced', faction: 'Galactic Empire'},
    {name: 'TIE Fighter', faction: 'Galactic Empire'},
    {name: 'TIE Reaper', faction: 'Galactic Empire'},
    {name: 'TIE Striker', faction: 'Galactic Empire'},
    {name: 'VT-49 Decimator', faction: 'Galactic Empire'},
    {name: 'Firespray-31', faction: 'Scum and Villainy'},
    {name: 'Mining Guild TIE Fighter', faction: 'Scum and Villainy'},
    {name: 'Fang Fighter', faction: 'Scum and Villainy'},
    {name: 'JumpMaster 5000', faction: 'Scum and Villainy'},
    {name: 'M3-A Interceptor', faction: 'Scum and Villainy'},
    {name: 'Fireball', faction: 'Resistance'},
    {name: 'T-70 X-Wing', faction: 'Resistance'},
    {name: 'RZ-2 A-Wing', faction: 'Resistance'},
    {name: 'Resistance Transport', faction: 'Resistance'},
    {name: 'Resistance Transport Pod', faction: 'Resistance'},
    {name: 'TIE/Ba Interceptor', faction: 'First Order'},
    {name: 'TIE/FO Fighter', faction: 'First Order'},
    {name: 'TIE/VN Silencer', faction: 'First Order'},
    {name: 'TIE/SF Fighter', faction: 'First Order'},
    {name: 'Delta-7 Aethersprite', faction: 'Galactic Republic'},
    {name: 'ARC-170', faction: 'Galactic Republic'},
    {name: 'Naboo Royal N-1 Starfighter', faction: 'Galactic Republic'},
    {name: 'BTL-B Y-Wing', faction: 'Galactic Republic'},
    {name: 'Vulture-class Droid Fighter', faction: 'Separatist Alliance'},
    {name: 'Hyena-Class Droid Bomber', faction: 'Separatist Alliance'},
    {name: 'Sith Infiltrator', faction: 'Separatist Alliance'},
    {name: 'Nantex-Class Starfighter', faction: 'Separatist Alliance'}
]

# Used to exclude pilots from included ships
exportObj.hyperspacePilotExclusions = [
    # Galactic Republic
    '"Sinker"',
    '104th Battalion Pilot',
    '"Goji"',
    'Anakin Skywalker',
    'Mace Windu',
    'Saesee Tiin',

    # Separatist Alliance
    'Dark Courier',

    
    # Rebel Alliance
    'Wedge Antilles',
    'Biggs Darklighter',
    'Kullbee Sperado',
    'Leevan Tenza',
    'Edrio Two Tubes',
    'Cavern Angels Zealot',
    'Outer Rim Smuggler',

    # Galactic Empire
    '"Wampa"',
    '"Howlrunner"',
    '"Night Beast"',
    '"Wampa"',
    'Valen Rudor',
    'Scarif Base Pilot',
    'Patrol Leader',

    # Scum and Villainy
    'Nashtah Pup',
    'Old Teroch',
    'Foreman Proach',
    'Captain Seevor',

    # Resistance
    'Ello Asty',
    'Logistics Division Pilot',
    'Finn',
    "L'ulo L'ampar",

    # FO
    '"Quickdraw"'
]

# Upgrades in that are not in Hyperspace
exportObj.hyperspaceUpgradeExclusions = [
    # Galactic Republic
    'C1-10P',
    'R2-A6',
    'R2-C4',
    'R4-P44',
    'Delta-7B',
    'Chancellor Palpatine',
    'Ahsoka Tano',
    'Clone Commander Cody',
    'Seventh Fleet Gunner',
    'Synchronized Console',

    # Separatist Alliance
    'Chancellor Palpatine',
    'Energy-Shell Charges',
    'Impervium Plating',
    'Ensnare',
    'Soulless One',
    
    # Rebel Alliance
    'Jyn Erso',
    'Sabine Wren',
    'Bistan',
    'Ezra Bridger',
    '"Chopper" (Astromech)',
    '"Chopper" (Crew)',
    'Pivot Wing',
    '"Zeb" Orrelios',
    '"Chopper"',
    'Baze Malbus',
    'Cassian Andor',
    'Hera Syndulla',
    'Kanan Jarrus',
    'Magva Yarro',
    'R2-D2 (Crew)',
    'Saw Gerrera',
    'Han Solo',
    'Luke Skywalker',
    'Phantom',
    'Ghost',

    # Galactic Empire
    'Admiral Sloane',
    'Ciena Ree',
    'Darth Vader',
    'Grand Moff Tarkin',
    'Minister Tua',
    'Moff Jerjerrod',
    'ISB Slicer',
    'Emperor Palpatine',

    # Scum and Villainy
    '"Genius"',
    'R5-TK',
    '4-LOM',
    'Cad Bane',
    'Cikatro Vizago',
    'IG-88D',
    'Ketsu Onyo',
    'Unkar Plutt',
    'Zuckuss',
    'Jabba the Hutt',
    'Bossk',
    'Greedo',
    'Chewbacca (Scum)',
    'L3-37',
    'Lando Calrissian (Scum)',
    "Qi'ra",
    'Tobias Beckett',
    'Han Solo (Scum)',
    "Marauder",
    "Lando's Millennium Falcon",
    'Virago',

    # Resistance
    'BB Astromech',
    'M9-G8',
    'C-3PO (Resistance)',
    'Chewbacca (Resistance)',
    'GA-97',
    'Han Solo (Resistance)',
    'Rose Tico',
    'Finn',
    'Rey',
    'Paige Tico',
    "Rey's Millennium Falcon",

    # FO
    'Captain Phasma',
    'General Hux',
    'Kylo Ren',
    'Petty Officer Thanisson',
    'Supreme Leader Snoke',
    'Biohexacrypt Codes',
    'Hyperspace Tracking Data',

    # Generic
    'Jamming Beam',
    'Heavy Laser Cannon',
    'GNK "Gonk" Droid',
    'Seasoned Navigator',
    'Bomblet Generator',
    'Conner Nets',
    'Electro-Proton Bomb',
    'Proximity Mines',
    'Hate',
    'Precognitive Reflexes',
    'Sense',
    'Supernatural Reflexes',
    'Freelance Slicer',
    'Cloaking Device',
    'Feedback Array',
    'Ablative Plating',
    'Debris Gambit',
    'Saturation Salvo',
    'Hotshot Gunner',
    'Skilled Bombardier',
    'Veteran Turret Gunner',
    'Feedback Array',
    'Barrage Rockets',
    'Cluster Missiles',
    'Diamond-Boron Missiles',
    'Homing Missiles',
    'Proton Rockets',
    'Afterburners',
    'Electronic Baffle',
    'Shield Upgrade',
    'Static Discharge Vanes',
    'Stealth Device',
    'Tactical Scrambler',
    'Advanced Sensors',
    'Collision Detector',
    'Trajectory Simulator',
    'Composure',
    'Crack Shot',
    'Elusive',
    'Juke',
    'Lone Wolf',
    'Marksmanship',
    'Predator',
    'Swarm Tactics',
    'Trick Shot',
    'Pattern Analyzer',
    'Targeting Synchronizer',
    'Ion Torpedoes',
    'Dorsal Turret'
]

exportObj.epicExclusionsList = [
    'CR90 Corellian Corvette',
    'Raider-class Corvette',
    'GR-75 Medium Transport',
    'Gozanti-class Cruiser',
    'C-ROC Cruiser'
]


exportObj.epicExclusions = (data) ->
    if data.ship? and (data.ship in exportObj.epicExclusionsList)
        return false
    else if data.slot? and (data.slot == "Command")
        return false
    else
        return true

# Ships/Pilots excluded unless in the included list (with further excluded pilots list for included ships, i.e u-wing)
# while upgrades assumed included unless on the excluded list
exportObj.hyperspaceCheck = (data, faction='', shipCheck=false) ->
    # check ship/pilot first
    if (shipCheck)
        if (data.name in exportObj.hyperspacePilotExclusions)
            return false
        for ship in exportObj.hyperspaceShipInclusions
            # checks against name for ship itself or ship name/faction for pilot inclusions
            if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                return true
        return false
    else
        return data.name not in exportObj.hyperspaceUpgradeExclusions
