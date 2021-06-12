{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BurnInDestinationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInDestinationSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.BurnInAlignment
import Network.AWS.MediaLive.Types.BurnInBackgroundColor
import Network.AWS.MediaLive.Types.BurnInFontColor
import Network.AWS.MediaLive.Types.BurnInOutlineColor
import Network.AWS.MediaLive.Types.BurnInShadowColor
import Network.AWS.MediaLive.Types.BurnInTeletextGridControl
import Network.AWS.MediaLive.Types.InputLocation

-- | Burn In Destination Settings
--
-- /See:/ 'newBurnInDestinationSettings' smart constructor.
data BurnInDestinationSettings = BurnInDestinationSettings'
  { -- | If no explicit xPosition or yPosition is provided, setting alignment to
    -- centered will place the captions at the bottom center of the output.
    -- Similarly, setting a left alignment will align captions to the bottom
    -- left of the output. If x and y positions are given in conjunction with
    -- the alignment parameter, the font will be justified (either left or
    -- centered) relative to those coordinates. Selecting \"smart\"
    -- justification will left-justify live subtitles and center-justify
    -- pre-recorded subtitles. All burn-in and DVB-Sub font settings must
    -- match.
    alignment :: Core.Maybe BurnInAlignment,
    -- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent.
    -- Leaving this parameter out is equivalent to setting it to 0
    -- (transparent). All burn-in and DVB-Sub font settings must match.
    shadowOpacity :: Core.Maybe Core.Natural,
    -- | Specifies the color of the shadow cast by the captions. All burn-in and
    -- DVB-Sub font settings must match.
    shadowColor :: Core.Maybe BurnInShadowColor,
    -- | Specifies font outline color. This option is not valid for source
    -- captions that are either 608\/embedded or teletext. These source
    -- settings are already pre-defined by the caption stream. All burn-in and
    -- DVB-Sub font settings must match.
    outlineColor :: Core.Maybe BurnInOutlineColor,
    -- | Controls whether a fixed grid size will be used to generate the output
    -- subtitles bitmap. Only applicable for Teletext inputs and
    -- DVB-Sub\/Burn-in outputs.
    teletextGridControl :: Core.Maybe BurnInTeletextGridControl,
    -- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is
    -- transparent. Leaving this parameter out is equivalent to setting it to 0
    -- (transparent). All burn-in and DVB-Sub font settings must match.
    backgroundOpacity :: Core.Maybe Core.Natural,
    -- | Specifies the horizontal position of the caption relative to the left
    -- side of the output in pixels. A value of 10 would result in the captions
    -- starting 10 pixels from the left of the output. If no explicit xPosition
    -- is provided, the horizontal caption position will be determined by the
    -- alignment parameter. All burn-in and DVB-Sub font settings must match.
    xPosition :: Core.Maybe Core.Natural,
    -- | Specifies the color of the burned-in captions. This option is not valid
    -- for source captions that are STL, 608\/embedded or teletext. These
    -- source settings are already pre-defined by the caption stream. All
    -- burn-in and DVB-Sub font settings must match.
    fontColor :: Core.Maybe BurnInFontColor,
    -- | When set to \'auto\' fontSize will scale depending on the size of the
    -- output. Giving a positive integer will specify the exact font size in
    -- points. All burn-in and DVB-Sub font settings must match.
    fontSize :: Core.Maybe Core.Text,
    -- | Specifies the color of the rectangle behind the captions. All burn-in
    -- and DVB-Sub font settings must match.
    backgroundColor :: Core.Maybe BurnInBackgroundColor,
    -- | Specifies the horizontal offset of the shadow relative to the captions
    -- in pixels. A value of -2 would result in a shadow offset 2 pixels to the
    -- left. All burn-in and DVB-Sub font settings must match.
    shadowXOffset :: Core.Maybe Core.Int,
    -- | External font file used for caption burn-in. File extension must be
    -- \'ttf\' or \'tte\'. Although the user can select output fonts for many
    -- different types of input captions, embedded, STL and teletext sources
    -- use a strict grid system. Using external fonts with these caption
    -- sources could cause unexpected display of proportional fonts. All
    -- burn-in and DVB-Sub font settings must match.
    font :: Core.Maybe InputLocation,
    -- | Specifies the vertical position of the caption relative to the top of
    -- the output in pixels. A value of 10 would result in the captions
    -- starting 10 pixels from the top of the output. If no explicit yPosition
    -- is provided, the caption will be positioned towards the bottom of the
    -- output. All burn-in and DVB-Sub font settings must match.
    yPosition :: Core.Maybe Core.Natural,
    -- | Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in
    -- and DVB-Sub font settings must match.
    fontResolution :: Core.Maybe Core.Natural,
    -- | Specifies font outline size in pixels. This option is not valid for
    -- source captions that are either 608\/embedded or teletext. These source
    -- settings are already pre-defined by the caption stream. All burn-in and
    -- DVB-Sub font settings must match.
    outlineSize :: Core.Maybe Core.Natural,
    -- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
    -- transparent. All burn-in and DVB-Sub font settings must match.
    fontOpacity :: Core.Maybe Core.Natural,
    -- | Specifies the vertical offset of the shadow relative to the captions in
    -- pixels. A value of -2 would result in a shadow offset 2 pixels above the
    -- text. All burn-in and DVB-Sub font settings must match.
    shadowYOffset :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BurnInDestinationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alignment', 'burnInDestinationSettings_alignment' - If no explicit xPosition or yPosition is provided, setting alignment to
-- centered will place the captions at the bottom center of the output.
-- Similarly, setting a left alignment will align captions to the bottom
-- left of the output. If x and y positions are given in conjunction with
-- the alignment parameter, the font will be justified (either left or
-- centered) relative to those coordinates. Selecting \"smart\"
-- justification will left-justify live subtitles and center-justify
-- pre-recorded subtitles. All burn-in and DVB-Sub font settings must
-- match.
--
-- 'shadowOpacity', 'burnInDestinationSettings_shadowOpacity' - Specifies the opacity of the shadow. 255 is opaque; 0 is transparent.
-- Leaving this parameter out is equivalent to setting it to 0
-- (transparent). All burn-in and DVB-Sub font settings must match.
--
-- 'shadowColor', 'burnInDestinationSettings_shadowColor' - Specifies the color of the shadow cast by the captions. All burn-in and
-- DVB-Sub font settings must match.
--
-- 'outlineColor', 'burnInDestinationSettings_outlineColor' - Specifies font outline color. This option is not valid for source
-- captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
--
-- 'teletextGridControl', 'burnInDestinationSettings_teletextGridControl' - Controls whether a fixed grid size will be used to generate the output
-- subtitles bitmap. Only applicable for Teletext inputs and
-- DVB-Sub\/Burn-in outputs.
--
-- 'backgroundOpacity', 'burnInDestinationSettings_backgroundOpacity' - Specifies the opacity of the background rectangle. 255 is opaque; 0 is
-- transparent. Leaving this parameter out is equivalent to setting it to 0
-- (transparent). All burn-in and DVB-Sub font settings must match.
--
-- 'xPosition', 'burnInDestinationSettings_xPosition' - Specifies the horizontal position of the caption relative to the left
-- side of the output in pixels. A value of 10 would result in the captions
-- starting 10 pixels from the left of the output. If no explicit xPosition
-- is provided, the horizontal caption position will be determined by the
-- alignment parameter. All burn-in and DVB-Sub font settings must match.
--
-- 'fontColor', 'burnInDestinationSettings_fontColor' - Specifies the color of the burned-in captions. This option is not valid
-- for source captions that are STL, 608\/embedded or teletext. These
-- source settings are already pre-defined by the caption stream. All
-- burn-in and DVB-Sub font settings must match.
--
-- 'fontSize', 'burnInDestinationSettings_fontSize' - When set to \'auto\' fontSize will scale depending on the size of the
-- output. Giving a positive integer will specify the exact font size in
-- points. All burn-in and DVB-Sub font settings must match.
--
-- 'backgroundColor', 'burnInDestinationSettings_backgroundColor' - Specifies the color of the rectangle behind the captions. All burn-in
-- and DVB-Sub font settings must match.
--
-- 'shadowXOffset', 'burnInDestinationSettings_shadowXOffset' - Specifies the horizontal offset of the shadow relative to the captions
-- in pixels. A value of -2 would result in a shadow offset 2 pixels to the
-- left. All burn-in and DVB-Sub font settings must match.
--
-- 'font', 'burnInDestinationSettings_font' - External font file used for caption burn-in. File extension must be
-- \'ttf\' or \'tte\'. Although the user can select output fonts for many
-- different types of input captions, embedded, STL and teletext sources
-- use a strict grid system. Using external fonts with these caption
-- sources could cause unexpected display of proportional fonts. All
-- burn-in and DVB-Sub font settings must match.
--
-- 'yPosition', 'burnInDestinationSettings_yPosition' - Specifies the vertical position of the caption relative to the top of
-- the output in pixels. A value of 10 would result in the captions
-- starting 10 pixels from the top of the output. If no explicit yPosition
-- is provided, the caption will be positioned towards the bottom of the
-- output. All burn-in and DVB-Sub font settings must match.
--
-- 'fontResolution', 'burnInDestinationSettings_fontResolution' - Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in
-- and DVB-Sub font settings must match.
--
-- 'outlineSize', 'burnInDestinationSettings_outlineSize' - Specifies font outline size in pixels. This option is not valid for
-- source captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
--
-- 'fontOpacity', 'burnInDestinationSettings_fontOpacity' - Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
-- transparent. All burn-in and DVB-Sub font settings must match.
--
-- 'shadowYOffset', 'burnInDestinationSettings_shadowYOffset' - Specifies the vertical offset of the shadow relative to the captions in
-- pixels. A value of -2 would result in a shadow offset 2 pixels above the
-- text. All burn-in and DVB-Sub font settings must match.
newBurnInDestinationSettings ::
  BurnInDestinationSettings
newBurnInDestinationSettings =
  BurnInDestinationSettings'
    { alignment =
        Core.Nothing,
      shadowOpacity = Core.Nothing,
      shadowColor = Core.Nothing,
      outlineColor = Core.Nothing,
      teletextGridControl = Core.Nothing,
      backgroundOpacity = Core.Nothing,
      xPosition = Core.Nothing,
      fontColor = Core.Nothing,
      fontSize = Core.Nothing,
      backgroundColor = Core.Nothing,
      shadowXOffset = Core.Nothing,
      font = Core.Nothing,
      yPosition = Core.Nothing,
      fontResolution = Core.Nothing,
      outlineSize = Core.Nothing,
      fontOpacity = Core.Nothing,
      shadowYOffset = Core.Nothing
    }

-- | If no explicit xPosition or yPosition is provided, setting alignment to
-- centered will place the captions at the bottom center of the output.
-- Similarly, setting a left alignment will align captions to the bottom
-- left of the output. If x and y positions are given in conjunction with
-- the alignment parameter, the font will be justified (either left or
-- centered) relative to those coordinates. Selecting \"smart\"
-- justification will left-justify live subtitles and center-justify
-- pre-recorded subtitles. All burn-in and DVB-Sub font settings must
-- match.
burnInDestinationSettings_alignment :: Lens.Lens' BurnInDestinationSettings (Core.Maybe BurnInAlignment)
burnInDestinationSettings_alignment = Lens.lens (\BurnInDestinationSettings' {alignment} -> alignment) (\s@BurnInDestinationSettings' {} a -> s {alignment = a} :: BurnInDestinationSettings)

-- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent.
-- Leaving this parameter out is equivalent to setting it to 0
-- (transparent). All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_shadowOpacity :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_shadowOpacity = Lens.lens (\BurnInDestinationSettings' {shadowOpacity} -> shadowOpacity) (\s@BurnInDestinationSettings' {} a -> s {shadowOpacity = a} :: BurnInDestinationSettings)

-- | Specifies the color of the shadow cast by the captions. All burn-in and
-- DVB-Sub font settings must match.
burnInDestinationSettings_shadowColor :: Lens.Lens' BurnInDestinationSettings (Core.Maybe BurnInShadowColor)
burnInDestinationSettings_shadowColor = Lens.lens (\BurnInDestinationSettings' {shadowColor} -> shadowColor) (\s@BurnInDestinationSettings' {} a -> s {shadowColor = a} :: BurnInDestinationSettings)

-- | Specifies font outline color. This option is not valid for source
-- captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
burnInDestinationSettings_outlineColor :: Lens.Lens' BurnInDestinationSettings (Core.Maybe BurnInOutlineColor)
burnInDestinationSettings_outlineColor = Lens.lens (\BurnInDestinationSettings' {outlineColor} -> outlineColor) (\s@BurnInDestinationSettings' {} a -> s {outlineColor = a} :: BurnInDestinationSettings)

-- | Controls whether a fixed grid size will be used to generate the output
-- subtitles bitmap. Only applicable for Teletext inputs and
-- DVB-Sub\/Burn-in outputs.
burnInDestinationSettings_teletextGridControl :: Lens.Lens' BurnInDestinationSettings (Core.Maybe BurnInTeletextGridControl)
burnInDestinationSettings_teletextGridControl = Lens.lens (\BurnInDestinationSettings' {teletextGridControl} -> teletextGridControl) (\s@BurnInDestinationSettings' {} a -> s {teletextGridControl = a} :: BurnInDestinationSettings)

-- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is
-- transparent. Leaving this parameter out is equivalent to setting it to 0
-- (transparent). All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_backgroundOpacity :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_backgroundOpacity = Lens.lens (\BurnInDestinationSettings' {backgroundOpacity} -> backgroundOpacity) (\s@BurnInDestinationSettings' {} a -> s {backgroundOpacity = a} :: BurnInDestinationSettings)

-- | Specifies the horizontal position of the caption relative to the left
-- side of the output in pixels. A value of 10 would result in the captions
-- starting 10 pixels from the left of the output. If no explicit xPosition
-- is provided, the horizontal caption position will be determined by the
-- alignment parameter. All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_xPosition :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_xPosition = Lens.lens (\BurnInDestinationSettings' {xPosition} -> xPosition) (\s@BurnInDestinationSettings' {} a -> s {xPosition = a} :: BurnInDestinationSettings)

-- | Specifies the color of the burned-in captions. This option is not valid
-- for source captions that are STL, 608\/embedded or teletext. These
-- source settings are already pre-defined by the caption stream. All
-- burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_fontColor :: Lens.Lens' BurnInDestinationSettings (Core.Maybe BurnInFontColor)
burnInDestinationSettings_fontColor = Lens.lens (\BurnInDestinationSettings' {fontColor} -> fontColor) (\s@BurnInDestinationSettings' {} a -> s {fontColor = a} :: BurnInDestinationSettings)

-- | When set to \'auto\' fontSize will scale depending on the size of the
-- output. Giving a positive integer will specify the exact font size in
-- points. All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_fontSize :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Text)
burnInDestinationSettings_fontSize = Lens.lens (\BurnInDestinationSettings' {fontSize} -> fontSize) (\s@BurnInDestinationSettings' {} a -> s {fontSize = a} :: BurnInDestinationSettings)

-- | Specifies the color of the rectangle behind the captions. All burn-in
-- and DVB-Sub font settings must match.
burnInDestinationSettings_backgroundColor :: Lens.Lens' BurnInDestinationSettings (Core.Maybe BurnInBackgroundColor)
burnInDestinationSettings_backgroundColor = Lens.lens (\BurnInDestinationSettings' {backgroundColor} -> backgroundColor) (\s@BurnInDestinationSettings' {} a -> s {backgroundColor = a} :: BurnInDestinationSettings)

-- | Specifies the horizontal offset of the shadow relative to the captions
-- in pixels. A value of -2 would result in a shadow offset 2 pixels to the
-- left. All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_shadowXOffset :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Int)
burnInDestinationSettings_shadowXOffset = Lens.lens (\BurnInDestinationSettings' {shadowXOffset} -> shadowXOffset) (\s@BurnInDestinationSettings' {} a -> s {shadowXOffset = a} :: BurnInDestinationSettings)

-- | External font file used for caption burn-in. File extension must be
-- \'ttf\' or \'tte\'. Although the user can select output fonts for many
-- different types of input captions, embedded, STL and teletext sources
-- use a strict grid system. Using external fonts with these caption
-- sources could cause unexpected display of proportional fonts. All
-- burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_font :: Lens.Lens' BurnInDestinationSettings (Core.Maybe InputLocation)
burnInDestinationSettings_font = Lens.lens (\BurnInDestinationSettings' {font} -> font) (\s@BurnInDestinationSettings' {} a -> s {font = a} :: BurnInDestinationSettings)

-- | Specifies the vertical position of the caption relative to the top of
-- the output in pixels. A value of 10 would result in the captions
-- starting 10 pixels from the top of the output. If no explicit yPosition
-- is provided, the caption will be positioned towards the bottom of the
-- output. All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_yPosition :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_yPosition = Lens.lens (\BurnInDestinationSettings' {yPosition} -> yPosition) (\s@BurnInDestinationSettings' {} a -> s {yPosition = a} :: BurnInDestinationSettings)

-- | Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in
-- and DVB-Sub font settings must match.
burnInDestinationSettings_fontResolution :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_fontResolution = Lens.lens (\BurnInDestinationSettings' {fontResolution} -> fontResolution) (\s@BurnInDestinationSettings' {} a -> s {fontResolution = a} :: BurnInDestinationSettings)

-- | Specifies font outline size in pixels. This option is not valid for
-- source captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
burnInDestinationSettings_outlineSize :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_outlineSize = Lens.lens (\BurnInDestinationSettings' {outlineSize} -> outlineSize) (\s@BurnInDestinationSettings' {} a -> s {outlineSize = a} :: BurnInDestinationSettings)

-- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
-- transparent. All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_fontOpacity :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Natural)
burnInDestinationSettings_fontOpacity = Lens.lens (\BurnInDestinationSettings' {fontOpacity} -> fontOpacity) (\s@BurnInDestinationSettings' {} a -> s {fontOpacity = a} :: BurnInDestinationSettings)

-- | Specifies the vertical offset of the shadow relative to the captions in
-- pixels. A value of -2 would result in a shadow offset 2 pixels above the
-- text. All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings_shadowYOffset :: Lens.Lens' BurnInDestinationSettings (Core.Maybe Core.Int)
burnInDestinationSettings_shadowYOffset = Lens.lens (\BurnInDestinationSettings' {shadowYOffset} -> shadowYOffset) (\s@BurnInDestinationSettings' {} a -> s {shadowYOffset = a} :: BurnInDestinationSettings)

instance Core.FromJSON BurnInDestinationSettings where
  parseJSON =
    Core.withObject
      "BurnInDestinationSettings"
      ( \x ->
          BurnInDestinationSettings'
            Core.<$> (x Core..:? "alignment")
            Core.<*> (x Core..:? "shadowOpacity")
            Core.<*> (x Core..:? "shadowColor")
            Core.<*> (x Core..:? "outlineColor")
            Core.<*> (x Core..:? "teletextGridControl")
            Core.<*> (x Core..:? "backgroundOpacity")
            Core.<*> (x Core..:? "xPosition")
            Core.<*> (x Core..:? "fontColor")
            Core.<*> (x Core..:? "fontSize")
            Core.<*> (x Core..:? "backgroundColor")
            Core.<*> (x Core..:? "shadowXOffset")
            Core.<*> (x Core..:? "font")
            Core.<*> (x Core..:? "yPosition")
            Core.<*> (x Core..:? "fontResolution")
            Core.<*> (x Core..:? "outlineSize")
            Core.<*> (x Core..:? "fontOpacity")
            Core.<*> (x Core..:? "shadowYOffset")
      )

instance Core.Hashable BurnInDestinationSettings

instance Core.NFData BurnInDestinationSettings

instance Core.ToJSON BurnInDestinationSettings where
  toJSON BurnInDestinationSettings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("alignment" Core..=) Core.<$> alignment,
            ("shadowOpacity" Core..=) Core.<$> shadowOpacity,
            ("shadowColor" Core..=) Core.<$> shadowColor,
            ("outlineColor" Core..=) Core.<$> outlineColor,
            ("teletextGridControl" Core..=)
              Core.<$> teletextGridControl,
            ("backgroundOpacity" Core..=)
              Core.<$> backgroundOpacity,
            ("xPosition" Core..=) Core.<$> xPosition,
            ("fontColor" Core..=) Core.<$> fontColor,
            ("fontSize" Core..=) Core.<$> fontSize,
            ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("shadowXOffset" Core..=) Core.<$> shadowXOffset,
            ("font" Core..=) Core.<$> font,
            ("yPosition" Core..=) Core.<$> yPosition,
            ("fontResolution" Core..=) Core.<$> fontResolution,
            ("outlineSize" Core..=) Core.<$> outlineSize,
            ("fontOpacity" Core..=) Core.<$> fontOpacity,
            ("shadowYOffset" Core..=) Core.<$> shadowYOffset
          ]
      )
