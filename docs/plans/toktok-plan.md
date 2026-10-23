# TokTok — Arabic Driving Game — Implementation Plan

## Vision
Top-down 2D driving game (TokTok / tuk-tuk). Arabic UI. Mobile-first (touch controls), desktop keyboard fallback.

## Milestones

### M1 — Core Driving (done)
- [x] Project scaffold (Godot 4.7, split layout, autoloads)
- [x] Car controller (accelerate/brake/steer/handbrake/horn)
- [x] Main menu (Arabic) + level scene + HUD (speed, time)
- [x] Camera follow

### M2 — Track & Environment
- [ ] TileMap road tiles (asphalt, curbs, sidewalks)
- [ ] Track boundary colliders
- [ ] Spawn points & checkpoints
- [ ] Minimap

### M3 — Gameplay Loop
- [ ] Lap timer + best time save (SaveManager)
- [ ] Checkpoint gates with scoring
- [ ] Traffic AI (simple path-following cars)
- [ ] Obstacles (cones, barriers) with crash physics
- [ ] Game over / results screen (Arabic)

### M4 — Polish
- [ ] Engine/exhaust/horn SFX + background music
- [ ] Particle effects (dust, smoke on drift)
- [ ] Screen shake on crash
- [ ] Touch controls overlay (mobile)
- [ ] Localization pass (all strings via TranslationServer)

### M5 — Release
- [ ] Export presets (Android APK, Windows, Web)
- [ ] Performance pass (godot-optimization)
- [ ] Playtesting + balance

## Architecture
- Autoloads: GameManager, EventBus, AudioManager, SaveManager
- Scenes: main_menu, level_01, car, hud, touch_controls, results
- Scripts: car.gd, level_01.gd, hud.gd, traffic_car.gd, checkpoint.gd

## Key Decisions
- 2D top-down (not 3D) for mobile performance and faster iteration.
- CharacterBody2D for player; RigidBody2D for traffic (crash physics).
- Arabic strings centralized in resources/translations/arabic.csv.
