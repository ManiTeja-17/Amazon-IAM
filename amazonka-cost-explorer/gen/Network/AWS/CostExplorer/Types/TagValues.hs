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
-- Module      : Network.AWS.CostExplorer.Types.TagValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.TagValues where

import qualified Network.AWS.Core as Core
import Network.AWS.CostExplorer.Types.MatchOption
import qualified Network.AWS.Lens as Lens

-- | The values that are available for a tag.
--
-- If @Values@ and @Key@ are not specified, the @ABSENT@ @MatchOption@ is
-- applied to all tags. That is, filtering on resources with no tags.
--
-- If @Values@ is provided and @Key@ is not specified, the @ABSENT@
-- @MatchOption@ is applied to the tag @Key@ only. That is, filtering on
-- resources without the given tag key.
--
-- /See:/ 'newTagValues' smart constructor.
data TagValues = TagValues'
  { -- | The key for the tag.
    key :: Core.Maybe Core.Text,
    -- | The specific value of the tag.
    values :: Core.Maybe [Core.Text],
    -- | The match options that you can use to filter your results.
    -- @MatchOptions@ is only applicable for actions related to Cost Category.
    -- The default values for @MatchOptions@ are @EQUALS@ and @CASE_SENSITIVE@.
    matchOptions :: Core.Maybe [MatchOption]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TagValues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tagValues_key' - The key for the tag.
--
-- 'values', 'tagValues_values' - The specific value of the tag.
--
-- 'matchOptions', 'tagValues_matchOptions' - The match options that you can use to filter your results.
-- @MatchOptions@ is only applicable for actions related to Cost Category.
-- The default values for @MatchOptions@ are @EQUALS@ and @CASE_SENSITIVE@.
newTagValues ::
  TagValues
newTagValues =
  TagValues'
    { key = Core.Nothing,
      values = Core.Nothing,
      matchOptions = Core.Nothing
    }

-- | The key for the tag.
tagValues_key :: Lens.Lens' TagValues (Core.Maybe Core.Text)
tagValues_key = Lens.lens (\TagValues' {key} -> key) (\s@TagValues' {} a -> s {key = a} :: TagValues)

-- | The specific value of the tag.
tagValues_values :: Lens.Lens' TagValues (Core.Maybe [Core.Text])
tagValues_values = Lens.lens (\TagValues' {values} -> values) (\s@TagValues' {} a -> s {values = a} :: TagValues) Core.. Lens.mapping Lens._Coerce

-- | The match options that you can use to filter your results.
-- @MatchOptions@ is only applicable for actions related to Cost Category.
-- The default values for @MatchOptions@ are @EQUALS@ and @CASE_SENSITIVE@.
tagValues_matchOptions :: Lens.Lens' TagValues (Core.Maybe [MatchOption])
tagValues_matchOptions = Lens.lens (\TagValues' {matchOptions} -> matchOptions) (\s@TagValues' {} a -> s {matchOptions = a} :: TagValues) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON TagValues where
  parseJSON =
    Core.withObject
      "TagValues"
      ( \x ->
          TagValues'
            Core.<$> (x Core..:? "Key")
            Core.<*> (x Core..:? "Values" Core..!= Core.mempty)
            Core.<*> (x Core..:? "MatchOptions" Core..!= Core.mempty)
      )

instance Core.Hashable TagValues

instance Core.NFData TagValues

instance Core.ToJSON TagValues where
  toJSON TagValues' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Key" Core..=) Core.<$> key,
            ("Values" Core..=) Core.<$> values,
            ("MatchOptions" Core..=) Core.<$> matchOptions
          ]
      )
