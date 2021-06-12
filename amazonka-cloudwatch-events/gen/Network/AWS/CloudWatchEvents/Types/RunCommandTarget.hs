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
-- Module      : Network.AWS.CloudWatchEvents.Types.RunCommandTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.RunCommandTarget where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Information about the EC2 instances that are to be sent the command,
-- specified as key-value pairs. Each @RunCommandTarget@ block can include
-- only one key, but this key may specify multiple values.
--
-- /See:/ 'newRunCommandTarget' smart constructor.
data RunCommandTarget = RunCommandTarget'
  { -- | Can be either @tag:@ /tag-key/ or @InstanceIds@.
    key :: Core.Text,
    -- | If @Key@ is @tag:@ /tag-key/, @Values@ is a list of tag values. If @Key@
    -- is @InstanceIds@, @Values@ is a list of Amazon EC2 instance IDs.
    values :: Core.NonEmpty Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RunCommandTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'runCommandTarget_key' - Can be either @tag:@ /tag-key/ or @InstanceIds@.
--
-- 'values', 'runCommandTarget_values' - If @Key@ is @tag:@ /tag-key/, @Values@ is a list of tag values. If @Key@
-- is @InstanceIds@, @Values@ is a list of Amazon EC2 instance IDs.
newRunCommandTarget ::
  -- | 'key'
  Core.Text ->
  -- | 'values'
  Core.NonEmpty Core.Text ->
  RunCommandTarget
newRunCommandTarget pKey_ pValues_ =
  RunCommandTarget'
    { key = pKey_,
      values = Lens._Coerce Lens.# pValues_
    }

-- | Can be either @tag:@ /tag-key/ or @InstanceIds@.
runCommandTarget_key :: Lens.Lens' RunCommandTarget Core.Text
runCommandTarget_key = Lens.lens (\RunCommandTarget' {key} -> key) (\s@RunCommandTarget' {} a -> s {key = a} :: RunCommandTarget)

-- | If @Key@ is @tag:@ /tag-key/, @Values@ is a list of tag values. If @Key@
-- is @InstanceIds@, @Values@ is a list of Amazon EC2 instance IDs.
runCommandTarget_values :: Lens.Lens' RunCommandTarget (Core.NonEmpty Core.Text)
runCommandTarget_values = Lens.lens (\RunCommandTarget' {values} -> values) (\s@RunCommandTarget' {} a -> s {values = a} :: RunCommandTarget) Core.. Lens._Coerce

instance Core.FromJSON RunCommandTarget where
  parseJSON =
    Core.withObject
      "RunCommandTarget"
      ( \x ->
          RunCommandTarget'
            Core.<$> (x Core..: "Key") Core.<*> (x Core..: "Values")
      )

instance Core.Hashable RunCommandTarget

instance Core.NFData RunCommandTarget

instance Core.ToJSON RunCommandTarget where
  toJSON RunCommandTarget' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Key" Core..= key),
            Core.Just ("Values" Core..= values)
          ]
      )
