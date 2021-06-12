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
-- Module      : Network.AWS.Config.Types.ConfigRuleComplianceSummaryFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigRuleComplianceSummaryFilters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Filters the results based on the account IDs and regions.
--
-- /See:/ 'newConfigRuleComplianceSummaryFilters' smart constructor.
data ConfigRuleComplianceSummaryFilters = ConfigRuleComplianceSummaryFilters'
  { -- | The 12-digit account ID of the source account.
    accountId :: Core.Maybe Core.Text,
    -- | The source region where the data is aggregated.
    awsRegion :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ConfigRuleComplianceSummaryFilters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'configRuleComplianceSummaryFilters_accountId' - The 12-digit account ID of the source account.
--
-- 'awsRegion', 'configRuleComplianceSummaryFilters_awsRegion' - The source region where the data is aggregated.
newConfigRuleComplianceSummaryFilters ::
  ConfigRuleComplianceSummaryFilters
newConfigRuleComplianceSummaryFilters =
  ConfigRuleComplianceSummaryFilters'
    { accountId =
        Core.Nothing,
      awsRegion = Core.Nothing
    }

-- | The 12-digit account ID of the source account.
configRuleComplianceSummaryFilters_accountId :: Lens.Lens' ConfigRuleComplianceSummaryFilters (Core.Maybe Core.Text)
configRuleComplianceSummaryFilters_accountId = Lens.lens (\ConfigRuleComplianceSummaryFilters' {accountId} -> accountId) (\s@ConfigRuleComplianceSummaryFilters' {} a -> s {accountId = a} :: ConfigRuleComplianceSummaryFilters)

-- | The source region where the data is aggregated.
configRuleComplianceSummaryFilters_awsRegion :: Lens.Lens' ConfigRuleComplianceSummaryFilters (Core.Maybe Core.Text)
configRuleComplianceSummaryFilters_awsRegion = Lens.lens (\ConfigRuleComplianceSummaryFilters' {awsRegion} -> awsRegion) (\s@ConfigRuleComplianceSummaryFilters' {} a -> s {awsRegion = a} :: ConfigRuleComplianceSummaryFilters)

instance
  Core.Hashable
    ConfigRuleComplianceSummaryFilters

instance
  Core.NFData
    ConfigRuleComplianceSummaryFilters

instance
  Core.ToJSON
    ConfigRuleComplianceSummaryFilters
  where
  toJSON ConfigRuleComplianceSummaryFilters' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AccountId" Core..=) Core.<$> accountId,
            ("AwsRegion" Core..=) Core.<$> awsRegion
          ]
      )
