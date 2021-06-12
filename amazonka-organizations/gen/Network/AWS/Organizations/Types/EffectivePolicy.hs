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
-- Module      : Network.AWS.Organizations.Types.EffectivePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.EffectivePolicy where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Organizations.Types.EffectivePolicyType

-- | Contains rules to be applied to the affected accounts. The effective
-- policy is the aggregation of any policies the account inherits, plus any
-- policy directly attached to the account.
--
-- /See:/ 'newEffectivePolicy' smart constructor.
data EffectivePolicy = EffectivePolicy'
  { -- | The account ID of the policy target.
    targetId :: Core.Maybe Core.Text,
    -- | The text content of the policy.
    policyContent :: Core.Maybe Core.Text,
    -- | The policy type.
    policyType :: Core.Maybe EffectivePolicyType,
    -- | The time of the last update to this policy.
    lastUpdatedTimestamp :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EffectivePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetId', 'effectivePolicy_targetId' - The account ID of the policy target.
--
-- 'policyContent', 'effectivePolicy_policyContent' - The text content of the policy.
--
-- 'policyType', 'effectivePolicy_policyType' - The policy type.
--
-- 'lastUpdatedTimestamp', 'effectivePolicy_lastUpdatedTimestamp' - The time of the last update to this policy.
newEffectivePolicy ::
  EffectivePolicy
newEffectivePolicy =
  EffectivePolicy'
    { targetId = Core.Nothing,
      policyContent = Core.Nothing,
      policyType = Core.Nothing,
      lastUpdatedTimestamp = Core.Nothing
    }

-- | The account ID of the policy target.
effectivePolicy_targetId :: Lens.Lens' EffectivePolicy (Core.Maybe Core.Text)
effectivePolicy_targetId = Lens.lens (\EffectivePolicy' {targetId} -> targetId) (\s@EffectivePolicy' {} a -> s {targetId = a} :: EffectivePolicy)

-- | The text content of the policy.
effectivePolicy_policyContent :: Lens.Lens' EffectivePolicy (Core.Maybe Core.Text)
effectivePolicy_policyContent = Lens.lens (\EffectivePolicy' {policyContent} -> policyContent) (\s@EffectivePolicy' {} a -> s {policyContent = a} :: EffectivePolicy)

-- | The policy type.
effectivePolicy_policyType :: Lens.Lens' EffectivePolicy (Core.Maybe EffectivePolicyType)
effectivePolicy_policyType = Lens.lens (\EffectivePolicy' {policyType} -> policyType) (\s@EffectivePolicy' {} a -> s {policyType = a} :: EffectivePolicy)

-- | The time of the last update to this policy.
effectivePolicy_lastUpdatedTimestamp :: Lens.Lens' EffectivePolicy (Core.Maybe Core.UTCTime)
effectivePolicy_lastUpdatedTimestamp = Lens.lens (\EffectivePolicy' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@EffectivePolicy' {} a -> s {lastUpdatedTimestamp = a} :: EffectivePolicy) Core.. Lens.mapping Core._Time

instance Core.FromJSON EffectivePolicy where
  parseJSON =
    Core.withObject
      "EffectivePolicy"
      ( \x ->
          EffectivePolicy'
            Core.<$> (x Core..:? "TargetId")
            Core.<*> (x Core..:? "PolicyContent")
            Core.<*> (x Core..:? "PolicyType")
            Core.<*> (x Core..:? "LastUpdatedTimestamp")
      )

instance Core.Hashable EffectivePolicy

instance Core.NFData EffectivePolicy
