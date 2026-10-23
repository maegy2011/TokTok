# TokTok — Design Brief (Preschool Driving Game)

## Target age range
3–5 years (preschool). Pre-readers assumed; no reading required to play.

## Platform & input
- Primary: tablet (Android/iOS) landscape, touch-first. Secondary: desktop with mouse for testing.
- Input: large on-screen touch buttons (left/right/accelerate) + keyboard fallback (A/D/W). No precise gestures, no multi-touch complexity. Tap targets ≥ 120px.

## Core play goal
Drive a colorful TokTok (tuk-tuk) along a simple curved path, collect friendly stars, reach the finish flag. Emphasis on exploration and cause/effect, not speed or skill.

## Session shape
- 60–120 seconds per run.
- No timer pressure shown as countdown; gentle progress indicator.
- End state: celebration screen with replay button. No "game over."

## Arabic language/dialect
- Modern Standard Arabic (MSA) for UI labels; Egyptian colloquial optional for voice-over only.
- RTL layout throughout; text is decorative/supplementary, never essential.

## Accessibility
- Color not sole cue (shape + motion + sound).
- High contrast, large UI, audio feedback for every action.
- No flashing/strobe; motion reduced option.
- One-handed playable.

## Explicit exclusions
- No ads, no in-app purchases, no chat, no external links.
- No punitive failure states (no crashes that end play, no "you lost").
- No real-world driving instruction (no traffic rules, no speed limits taught as facts).

## Prototype loop
Tap accelerate → TokTok moves forward along path → steer left/right with big arrows → collect star (sound + sparkle) → reach flag → celebration + replay.

## Non-text communication
Every essential action has icon + color + sound + animation. Labels are captions only.

## Test plan (brief)
1. Arabic readability/direction: verify all labels render RTL, no clipping, on 7", 10", 12" tablets and desktop.
2. Comprehension (ages 3-5, n≥8): can child start, steer, collect star, finish with ≤1 adult prompt?
3. Caregiver appropriateness: review by 2 caregivers + 1 educator for content and session length.
4. Accessibility: color-blind simulation, reduced motion, one-handed reach, audio-only cues.
5. Screen sizes: 1280x800, 1920x1080, 2560x1600; portrait fallback shows "rotate" hint.

## Testing status
- Automated: project loads, scenes run, input map present, RTL default set.
- NOT tested with children/caregivers/reviewers. Developmental & safety claims require that evidence.
