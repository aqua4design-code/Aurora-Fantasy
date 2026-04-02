# ✨ Aurora Fantasy 5.0 (AF11)

A fantasy-themed shader pack for Minecraft Java Edition, based on the open-source MakeUp shader by KDXavier.

---

## What's New

### Added
- 🌧️ Rain puddles appear on the ground when it rains
- 💧 Animated ripple effects on puddle surfaces
- 🪞 Screen-space reflections on wet surfaces and water
- 🌊 White foam where water meets blocks
- 🍃 Light passes through leaves (subsurface scattering)
- 🌤️ New atmosphere rendering system
- ❄️ Snow fog effect
- 👤 Player shadow now appears on the ground

### Fixed
- ☀️ Sun and moon now stay locked to the sky properly with smooth horizon fade
- ❄️ Snow particles during snowstorms now look brighter and more natural

### Changed
- Simplified settings — only 4 graphics profiles (HIGH, MEDIUM, LOW, POTATO)
- Clean settings menu with no extra options

---

## Graphics Profiles

Choose your profile from the shader settings menu. Each profile has a big difference from the others:

### HIGH — Best visuals
Everything is ON at maximum. Best reflections, rain puddles with animated ripples, dynamic clouds, bloom, god rays, motion blur, colored shadows.

### MEDIUM — Balanced
Good visuals with decent FPS. Reflections are good but not max. Rain puddles without ripples. Clouds and bloom still active. No motion blur.

### LOW — Performance
Shadows are on but short range. No bloom, no rain puddles, no god rays, no reflections on materials. Simple clouds. Good for weak GPUs.

### POTATO — Maximum FPS
Almost everything is OFF. No shadows, no reflections, no clouds, no bloom, no rain effects, no waving plants. Only basic rendering.

### Comparison

```
╔══════════════════╦══════════════════╦══════════════════╦══════════════════╦══════════════════╗
║     Feature      ║      HIGH        ║     MEDIUM       ║      LOW         ║     POTATO       ║
╠══════════════════╬══════════════════╬══════════════════╬══════════════════╬══════════════════╣
║ Shadows          ║ Max range        ║ Medium range     ║ Short range      ║ Off              ║
║ Shadow Quality   ║ 6                ║ 3                ║ 1                ║ --               ║
║ Reflections      ║ Raymarched 100%  ║ Good 80%         ║ Basic 60%        ║ Off              ║
║ Rain Puddles     ║ On + Ripples     ║ On (no ripples)  ║ Off              ║ Off              ║
║ Puddle Coverage  ║ 80%              ║ 50%              ║ --               ║ --               ║
║ Clouds           ║ Dynamic + Cirrus ║ Static + Cirrus  ║ Static           ║ Off              ║
║ Bloom            ║ On (strong)      ║ On (normal)      ║ Off              ║ Off              ║
║ God Rays         ║ On (high)        ║ On (medium)      ║ Off              ║ Off              ║
║ Motion Blur      ║ On               ║ Off              ║ Off              ║ Off              ║
║ Ambient Occl.    ║ On               ║ Off              ║ Off              ║ Off              ║
║ Water Foam       ║ On               ║ On               ║ Off              ║ Off              ║
║ Colored Shadows  ║ On               ║ On               ║ Off              ║ Off              ║
║ Glowing Ores     ║ On               ║ On               ║ Off              ║ Off              ║
║ Waving Plants    ║ On               ║ On               ║ On               ║ Off              ║
║ Fog              ║ On               ║ On               ║ On               ║ Off              ║
║ Anti-Aliasing    ║ Sharp TAA        ║ Sharp TAA        ║ TAA              ║ Off              ║
╚══════════════════╩══════════════════╩══════════════════╩══════════════════╩══════════════════╝
```

---

## Features

- ☀️ Realistic shadows with colored glass shadows
- ☁️ Volumetric clouds with cirrus layer
- 🌊 Realistic water with waves and reflections
- 🌧️ Rain puddles and wet surfaces
- ⭐ Stars, sun, and moon
- 🌈 12+ color schemes
- 💎 Glowing ores and shiny materials
- 🌅 God rays and bloom
- 🍃 Wind-animated plants
- 🌫️ Biome fog effects
- 🏜️ Desert sandstorms when it rains in sandy biomes
- 🌍 Overworld, Nether, The End support

---

## Requirements

- Minecraft Java Edition
- OptiFine or Iris Shaders

---

## Installation

Copy the shader folder into `.minecraft/shaderpacks`, then select it in-game.

---

## Credits

- **in2bubble** — Modified version
- **KDXavier** — Original MakeUp shader

---

## License

GNU Lesser General Public License v3.0
