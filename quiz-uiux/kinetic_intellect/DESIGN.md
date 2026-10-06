---
name: Kinetic Intellect
colors:
  surface: '#faf8ff'
  surface-dim: '#d2d9f4'
  surface-bright: '#faf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f3ff'
  surface-container: '#eaedff'
  surface-container-high: '#e2e7ff'
  surface-container-highest: '#dae2fd'
  on-surface: '#131b2e'
  on-surface-variant: '#464554'
  inverse-surface: '#283044'
  inverse-on-surface: '#eef0ff'
  outline: '#767586'
  outline-variant: '#c7c4d7'
  surface-tint: '#494bd6'
  primary: '#4648d4'
  on-primary: '#ffffff'
  primary-container: '#6063ee'
  on-primary-container: '#fffbff'
  inverse-primary: '#c0c1ff'
  secondary: '#855300'
  on-secondary: '#ffffff'
  secondary-container: '#fea619'
  on-secondary-container: '#684000'
  tertiary: '#006c49'
  on-tertiary: '#ffffff'
  tertiary-container: '#00885d'
  on-tertiary-container: '#000703'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e1e0ff'
  primary-fixed-dim: '#c0c1ff'
  on-primary-fixed: '#07006c'
  on-primary-fixed-variant: '#2f2ebe'
  secondary-fixed: '#ffddb8'
  secondary-fixed-dim: '#ffb95f'
  on-secondary-fixed: '#2a1700'
  on-secondary-fixed-variant: '#653e00'
  tertiary-fixed: '#6ffbbe'
  tertiary-fixed-dim: '#4edea3'
  on-tertiary-fixed: '#002113'
  on-tertiary-fixed-variant: '#005236'
  background: '#faf8ff'
  on-background: '#131b2e'
  surface-variant: '#dae2fd'
typography:
  headline-xl:
    fontFamily: Plus Jakarta Sans
    fontSize: 36px
    fontWeight: '800'
    lineHeight: 44px
    letterSpacing: -0.03em
  headline-xl-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 30px
    fontWeight: '800'
    lineHeight: 38px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 26px
    fontWeight: '700'
    lineHeight: 34px
    letterSpacing: -0.02em
  headline-lg-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 22px
    fontWeight: '700'
    lineHeight: 30px
    letterSpacing: -0.01em
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 19px
    fontWeight: '600'
    lineHeight: 26px
    letterSpacing: -0.01em
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 17px
    fontWeight: '500'
    lineHeight: 26px
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 15px
    fontWeight: '400'
    lineHeight: 22px
  body-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 18px
  label-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '700'
    lineHeight: 20px
    letterSpacing: 0.01em
  label-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 18px
    letterSpacing: 0.01em
  label-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 12px
    fontWeight: '700'
    lineHeight: 16px
    letterSpacing: 0.02em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1rem
  gutter-mobile: 0.75rem
  margin: 1.25rem
  margin-mobile: 1rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2rem
---

## Brand & Style

The design system is crafted for an empowering, gamified mobile learning experience. It harmonizes the rigor of academic excellence with the dopamine-driven delight of playful, interactive micro-challenges. The aesthetic sits at the intersection of modern Scandinavian minimalism and tactile digital playfulness—delivering an interface that feels lightweight, inviting, and uncluttered, yet energetic and responsive.

Key Brand Characteristics:
- **Encouraging & Non-Punitive:** Mistakes are framed as stepping stones. Visual cues for feedback celebrate effort through fluid transitions, bounce physics, and clear semantic color differentiation.
- **Cognitive Clarity:** Visual noise is stripped down so question content, diagrams, and answer targets take absolute focus, optimizing retention and rapid decision-making.
- **Subtly Tactile:** Interactive elements feature micro-elevation, distinct selected states, and crisp borders that feel physical and punchy under the thumb.
- **Gamified Sophistication:** Streaks, badges, and score counters use radiant warm amber and violet gradients without lapsing into childish arcade tropes.

## Colors

The palette establishes high readability and vivid visual hierarchy, anchored in deep slates and luminous indigo primaries, complemented by rich functional accents:

- **Primary (`#6366F1` Indigo & `#4F46E5` Deep Indigo):** Drives the primary actions, hero containers, and progress milestones. Gradients transitioning diagonally from `#6366F1` to `#4F46E5` evoke vitality and forward movement.
- **Secondary (`#F59E0B` Amber & `#FBBF24` Bright Gold):** Reserved for achievements, current streaks, XP multipliers, coin balances, and star ratings.
- **Tertiary / Success (`#10B981` Emerald & `#059669` Deep Emerald):** Validates correct options, completed categories, and rank promotions. Pairs with an ultra-light tint (`#ECFDF5`) for question resolution backgrounds.
- **Error / Danger (`#EF4444` Coral Rose & `#DC2626` Deep Red):** Designates incorrect choices and low timer states. Paired with `#FEF2F2` for dismissive feedback banners.
- **Neutral Base:**
  - Background Canvas: `#F8FAFC` (Slate-50) creates soft, glare-free contrast on OLED and LCD mobile screens.
  - Surface Containers: Pure `#FFFFFF` (Crisp White) for distinct elevation tiers.
  - Deep Text: `#0F172A` (Slate-900) provides AAA contrast for headline legibility.
  - Muted Secondary Text: `#64748B` (Slate-500) for metadata, timer labels, and subtitles.
  - Borders & Dividers: `#E2E8F0` (Slate-200) for clean structural delineation without visual weight.

## Typography

The type system is powered entirely by **Plus Jakarta Sans**, chosen for its geometric precision, rounded stroke ends, wide aperture, and modern, friendly legibility at both high speeds and compact screen sizes.

Typographic Hierarchy & Intent:
- **Question Stems (`headline-lg-mobile` / `headline-md`):** Uses weight `700` with tight letter-spacing to form a clear visual anchor at the top of the viewport.
- **Numbers, Timers & Badges:** Utilize tabular numbers where available to prevent jitter during countdown animations.
- **Option Text (`body-lg`):** Scaled to `17px` weight `500` to ensure effortless scanning under timed pressure.
- **Micro-copy & Status Chips (`label-sm`):** Set in bold caps or semibold title case with open tracking (`+0.02em`) to guarantee legibility on colored badge containers.

## Layout & Spacing

The layout is optimized for single-handed mobile ergonomic zones ("the thumb zone"), with a strictly mobile-first column framework:

- **Canvas Safe Margins:** Base horizontal inset is `16px` on phones, expanding to `24px` on tablets. All key touch targets sit safely inside system gesture boundaries.
- **Component Stacking:** A strict 8-point base grid drives spacing (`8px`, `16px`, `24px`, `32px`). Quiz question screens fix the progress indicator and stats pill bar to the top safe area, float the question prompt in the upper-mid viewport, and anchor answer option cards and the primary CTA within the bottom thumb reach.
- **Touch Bounds:** All interactive elements maintain a minimum target footprint of 48×48px. Option selection cards use a minimum height of 60px with `16px` internal padding to prevent mis-taps.

## Elevation & Depth

Visual depth is achieved through an ambient light model with tinted shadows, avoiding harsh muddy blacks:

- **Level 0 (Flat / Canvas):** `#F8FAFC` base surface without shadow.
- **Level 1 (Card Rest State):** Pure `#FFFFFF` surface accompanied by a subtle double shadow:
  - `0 1px 3px rgba(15, 23, 42, 0.04)`
  - `0 6px 16px rgba(99, 102, 241, 0.05)` (subtly tinted with brand indigo).
  - Outlined with a 1px border of `#E2E8F0` to maintain definition on varying screen brightness.
- **Level 2 (Active / Floating Pill / Dialog):** Raised state for top toolbars, bottom navigation, and popups:
  - `0 8px 24px rgba(15, 23, 42, 0.08)`
  - `0 2px 6px rgba(15, 23, 42, 0.04)`
- **Level 3 (Pressed / Interactive Affirmation):** Dynamic interactive state: options push downward physically on press, dropping the shadow offset to `0 2px 4px rgba(15, 23, 42, 0.06)` while thickening the active border.

## Shapes

The shape vocabulary emphasizes approachability, comfort, and fluidity.
- **Standard Cards & Question Containers:** 16px to 20px border radius (`rounded-lg`), producing a friendly, modern tablet feel.
- **Option Selection Cards:** 16px radius with internal 12px pill badges for option index letters (A, B, C, D).
- **Buttons, Streak Trackers, Badges & Chips:** 9999px (full pill form factor). This contrasts against rectangular cards and highlights call-to-action tappability.
- **Bottom Navigation Dock:** 24px top radius floating sheet or 32px pill bar floating 16px above the home indicator.

## Components

### 1. Interactive 4-Option Cards
The core interactive quiz element. Renders full-width in a vertical stack with an 8-column layout and 12px gaps.
- **Default State:** Pure `#FFFFFF` background, 1.5px border `#E2E8F0`, dark slate text `#0F172A`. Left prefix features a circular indicator (36px) with `#F1F5F9` background and bold slate letter.
- **Selected State:** Light Indigo background tint (`#EEF2FF`), vibrant 2px border `#6366F1`. The indicator turns solid `#6366F1` with white text.
- **Correct State:** Soft emerald background tint (`#ECFDF5`), 2px border `#10B981`. Indicator morphs into a solid emerald checkmark icon with tactile spring animation.
- **Incorrect State:** Soft coral red background tint (`#FEF2F2`), 2px border `#EF4444`. Indicator morphs into a cross icon with subtle shake vibration feedback.

### 2. Large Action Buttons (CTAs)
- **Primary Action:** Solid `#6366F1` (or indigo gradient `#6366F1` to `#4F46E5`), full pill radius (9999px), 56px height, font `label-lg` in `#FFFFFF`. Casts an indigo-tinted shadow (`0 8px 20px rgba(99, 102, 241, 0.35)`).
- **Secondary / Ghost Action:** `#FFFFFF` card background with 1.5px border `#E2E8F0`, slate `#0F172A` text, 52px height.

### 3. Gamified Chips & Badges
- **Streak Pill:** Amber tone with bright flame glyph, `#FEF3C7` background, `#D97706` text, 32px height, pill-shaped.
- **Timer Badge:** Circular or rounded pill container with clock icon; transitions from calm slate (`#64748B`) to pulsing danger red (`#EF4444`) when time drops below 5 seconds.

### 4. Progress Bars
- Smooth 8px to 10px track height with full pill radius.
- Background: `#E2E8F0`.
- Fill Indicator: Continuous gradient (`#6366F1` to `#818CF8`) with an animated glowing cap that glides linearly between questions.

### 5. Floating Bottom Navigation Bar
- Floats 16px above the screen base with 16px lateral padding.
- Backdrop: Translucent `#FFFFFF` (94% opacity with 20px blur) with 24px radius and soft ambient shadow.
- Unselected tabs use `#94A3B8`; active tab uses `#6366F1` with a micro indicator dot underneath.