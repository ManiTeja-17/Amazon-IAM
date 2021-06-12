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
-- Module      : Network.AWS.Budgets.Types.ActionThreshold
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionThreshold where

import Network.AWS.Budgets.Types.ThresholdType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The trigger threshold of the action.
--
-- /See:/ 'newActionThreshold' smart constructor.
data ActionThreshold = ActionThreshold'
  { actionThresholdValue :: Core.Double,
    actionThresholdType :: ThresholdType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ActionThreshold' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionThresholdValue', 'actionThreshold_actionThresholdValue' - Undocumented member.
--
-- 'actionThresholdType', 'actionThreshold_actionThresholdType' - Undocumented member.
newActionThreshold ::
  -- | 'actionThresholdValue'
  Core.Double ->
  -- | 'actionThresholdType'
  ThresholdType ->
  ActionThreshold
newActionThreshold
  pActionThresholdValue_
  pActionThresholdType_ =
    ActionThreshold'
      { actionThresholdValue =
          pActionThresholdValue_,
        actionThresholdType = pActionThresholdType_
      }

-- | Undocumented member.
actionThreshold_actionThresholdValue :: Lens.Lens' ActionThreshold Core.Double
actionThreshold_actionThresholdValue = Lens.lens (\ActionThreshold' {actionThresholdValue} -> actionThresholdValue) (\s@ActionThreshold' {} a -> s {actionThresholdValue = a} :: ActionThreshold)

-- | Undocumented member.
actionThreshold_actionThresholdType :: Lens.Lens' ActionThreshold ThresholdType
actionThreshold_actionThresholdType = Lens.lens (\ActionThreshold' {actionThresholdType} -> actionThresholdType) (\s@ActionThreshold' {} a -> s {actionThresholdType = a} :: ActionThreshold)

instance Core.FromJSON ActionThreshold where
  parseJSON =
    Core.withObject
      "ActionThreshold"
      ( \x ->
          ActionThreshold'
            Core.<$> (x Core..: "ActionThresholdValue")
            Core.<*> (x Core..: "ActionThresholdType")
      )

instance Core.Hashable ActionThreshold

instance Core.NFData ActionThreshold

instance Core.ToJSON ActionThreshold where
  toJSON ActionThreshold' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "ActionThresholdValue"
                  Core..= actionThresholdValue
              ),
            Core.Just
              ("ActionThresholdType" Core..= actionThresholdType)
          ]
      )
