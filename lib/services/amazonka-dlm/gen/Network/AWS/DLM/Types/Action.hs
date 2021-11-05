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
-- Module      : Network.AWS.DLM.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DLM.Types.Action where

import qualified Network.AWS.Core as Core
import Network.AWS.DLM.Types.CrossRegionCopyAction
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies an action for an event-based policy.
--
-- /See:/ 'newAction' smart constructor.
data Action = Action'
  { -- | A descriptive name for the action.
    name :: Prelude.Text,
    -- | The rule for copying shared snapshots across Regions.
    crossRegionCopy :: [CrossRegionCopyAction]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Action' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'action_name' - A descriptive name for the action.
--
-- 'crossRegionCopy', 'action_crossRegionCopy' - The rule for copying shared snapshots across Regions.
newAction ::
  -- | 'name'
  Prelude.Text ->
  Action
newAction pName_ =
  Action'
    { name = pName_,
      crossRegionCopy = Prelude.mempty
    }

-- | A descriptive name for the action.
action_name :: Lens.Lens' Action Prelude.Text
action_name = Lens.lens (\Action' {name} -> name) (\s@Action' {} a -> s {name = a} :: Action)

-- | The rule for copying shared snapshots across Regions.
action_crossRegionCopy :: Lens.Lens' Action [CrossRegionCopyAction]
action_crossRegionCopy = Lens.lens (\Action' {crossRegionCopy} -> crossRegionCopy) (\s@Action' {} a -> s {crossRegionCopy = a} :: Action) Prelude.. Lens.coerced

instance Core.FromJSON Action where
  parseJSON =
    Core.withObject
      "Action"
      ( \x ->
          Action'
            Prelude.<$> (x Core..: "Name")
            Prelude.<*> ( x Core..:? "CrossRegionCopy"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable Action

instance Prelude.NFData Action

instance Core.ToJSON Action where
  toJSON Action' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("CrossRegionCopy" Core..= crossRegionCopy)
          ]
      )