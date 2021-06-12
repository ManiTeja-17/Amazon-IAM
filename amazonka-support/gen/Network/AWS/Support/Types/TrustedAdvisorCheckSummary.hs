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
-- Module      : Network.AWS.Support.Types.TrustedAdvisorCheckSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.TrustedAdvisorCheckSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Support.Types.TrustedAdvisorCategorySpecificSummary
import Network.AWS.Support.Types.TrustedAdvisorResourcesSummary

-- | A summary of a Trusted Advisor check result, including the alert status,
-- last refresh, and number of resources examined.
--
-- /See:/ 'newTrustedAdvisorCheckSummary' smart constructor.
data TrustedAdvisorCheckSummary = TrustedAdvisorCheckSummary'
  { -- | Specifies whether the Trusted Advisor check has flagged resources.
    hasFlaggedResources :: Core.Maybe Core.Bool,
    -- | The unique identifier for the Trusted Advisor check.
    checkId :: Core.Text,
    -- | The time of the last refresh of the check.
    timestamp :: Core.Text,
    -- | The alert status of the check: \"ok\" (green), \"warning\" (yellow),
    -- \"error\" (red), or \"not_available\".
    status :: Core.Text,
    resourcesSummary :: TrustedAdvisorResourcesSummary,
    -- | Summary information that relates to the category of the check. Cost
    -- Optimizing is the only category that is currently supported.
    categorySpecificSummary :: TrustedAdvisorCategorySpecificSummary
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TrustedAdvisorCheckSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hasFlaggedResources', 'trustedAdvisorCheckSummary_hasFlaggedResources' - Specifies whether the Trusted Advisor check has flagged resources.
--
-- 'checkId', 'trustedAdvisorCheckSummary_checkId' - The unique identifier for the Trusted Advisor check.
--
-- 'timestamp', 'trustedAdvisorCheckSummary_timestamp' - The time of the last refresh of the check.
--
-- 'status', 'trustedAdvisorCheckSummary_status' - The alert status of the check: \"ok\" (green), \"warning\" (yellow),
-- \"error\" (red), or \"not_available\".
--
-- 'resourcesSummary', 'trustedAdvisorCheckSummary_resourcesSummary' - Undocumented member.
--
-- 'categorySpecificSummary', 'trustedAdvisorCheckSummary_categorySpecificSummary' - Summary information that relates to the category of the check. Cost
-- Optimizing is the only category that is currently supported.
newTrustedAdvisorCheckSummary ::
  -- | 'checkId'
  Core.Text ->
  -- | 'timestamp'
  Core.Text ->
  -- | 'status'
  Core.Text ->
  -- | 'resourcesSummary'
  TrustedAdvisorResourcesSummary ->
  -- | 'categorySpecificSummary'
  TrustedAdvisorCategorySpecificSummary ->
  TrustedAdvisorCheckSummary
newTrustedAdvisorCheckSummary
  pCheckId_
  pTimestamp_
  pStatus_
  pResourcesSummary_
  pCategorySpecificSummary_ =
    TrustedAdvisorCheckSummary'
      { hasFlaggedResources =
          Core.Nothing,
        checkId = pCheckId_,
        timestamp = pTimestamp_,
        status = pStatus_,
        resourcesSummary = pResourcesSummary_,
        categorySpecificSummary =
          pCategorySpecificSummary_
      }

-- | Specifies whether the Trusted Advisor check has flagged resources.
trustedAdvisorCheckSummary_hasFlaggedResources :: Lens.Lens' TrustedAdvisorCheckSummary (Core.Maybe Core.Bool)
trustedAdvisorCheckSummary_hasFlaggedResources = Lens.lens (\TrustedAdvisorCheckSummary' {hasFlaggedResources} -> hasFlaggedResources) (\s@TrustedAdvisorCheckSummary' {} a -> s {hasFlaggedResources = a} :: TrustedAdvisorCheckSummary)

-- | The unique identifier for the Trusted Advisor check.
trustedAdvisorCheckSummary_checkId :: Lens.Lens' TrustedAdvisorCheckSummary Core.Text
trustedAdvisorCheckSummary_checkId = Lens.lens (\TrustedAdvisorCheckSummary' {checkId} -> checkId) (\s@TrustedAdvisorCheckSummary' {} a -> s {checkId = a} :: TrustedAdvisorCheckSummary)

-- | The time of the last refresh of the check.
trustedAdvisorCheckSummary_timestamp :: Lens.Lens' TrustedAdvisorCheckSummary Core.Text
trustedAdvisorCheckSummary_timestamp = Lens.lens (\TrustedAdvisorCheckSummary' {timestamp} -> timestamp) (\s@TrustedAdvisorCheckSummary' {} a -> s {timestamp = a} :: TrustedAdvisorCheckSummary)

-- | The alert status of the check: \"ok\" (green), \"warning\" (yellow),
-- \"error\" (red), or \"not_available\".
trustedAdvisorCheckSummary_status :: Lens.Lens' TrustedAdvisorCheckSummary Core.Text
trustedAdvisorCheckSummary_status = Lens.lens (\TrustedAdvisorCheckSummary' {status} -> status) (\s@TrustedAdvisorCheckSummary' {} a -> s {status = a} :: TrustedAdvisorCheckSummary)

-- | Undocumented member.
trustedAdvisorCheckSummary_resourcesSummary :: Lens.Lens' TrustedAdvisorCheckSummary TrustedAdvisorResourcesSummary
trustedAdvisorCheckSummary_resourcesSummary = Lens.lens (\TrustedAdvisorCheckSummary' {resourcesSummary} -> resourcesSummary) (\s@TrustedAdvisorCheckSummary' {} a -> s {resourcesSummary = a} :: TrustedAdvisorCheckSummary)

-- | Summary information that relates to the category of the check. Cost
-- Optimizing is the only category that is currently supported.
trustedAdvisorCheckSummary_categorySpecificSummary :: Lens.Lens' TrustedAdvisorCheckSummary TrustedAdvisorCategorySpecificSummary
trustedAdvisorCheckSummary_categorySpecificSummary = Lens.lens (\TrustedAdvisorCheckSummary' {categorySpecificSummary} -> categorySpecificSummary) (\s@TrustedAdvisorCheckSummary' {} a -> s {categorySpecificSummary = a} :: TrustedAdvisorCheckSummary)

instance Core.FromJSON TrustedAdvisorCheckSummary where
  parseJSON =
    Core.withObject
      "TrustedAdvisorCheckSummary"
      ( \x ->
          TrustedAdvisorCheckSummary'
            Core.<$> (x Core..:? "hasFlaggedResources")
            Core.<*> (x Core..: "checkId")
            Core.<*> (x Core..: "timestamp")
            Core.<*> (x Core..: "status")
            Core.<*> (x Core..: "resourcesSummary")
            Core.<*> (x Core..: "categorySpecificSummary")
      )

instance Core.Hashable TrustedAdvisorCheckSummary

instance Core.NFData TrustedAdvisorCheckSummary
