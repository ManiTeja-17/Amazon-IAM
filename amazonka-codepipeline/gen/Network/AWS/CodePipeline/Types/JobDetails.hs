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
-- Module      : Network.AWS.CodePipeline.Types.JobDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.JobDetails where

import Network.AWS.CodePipeline.Types.JobData
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents information about the details of a job.
--
-- /See:/ 'newJobDetails' smart constructor.
data JobDetails = JobDetails'
  { -- | The AWS account ID associated with the job.
    accountId :: Core.Maybe Core.Text,
    -- | Represents other information about a job required for a job worker to
    -- complete the job.
    data' :: Core.Maybe JobData,
    -- | The unique system-generated ID of the job.
    id :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'JobDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'jobDetails_accountId' - The AWS account ID associated with the job.
--
-- 'data'', 'jobDetails_data' - Represents other information about a job required for a job worker to
-- complete the job.
--
-- 'id', 'jobDetails_id' - The unique system-generated ID of the job.
newJobDetails ::
  JobDetails
newJobDetails =
  JobDetails'
    { accountId = Core.Nothing,
      data' = Core.Nothing,
      id = Core.Nothing
    }

-- | The AWS account ID associated with the job.
jobDetails_accountId :: Lens.Lens' JobDetails (Core.Maybe Core.Text)
jobDetails_accountId = Lens.lens (\JobDetails' {accountId} -> accountId) (\s@JobDetails' {} a -> s {accountId = a} :: JobDetails)

-- | Represents other information about a job required for a job worker to
-- complete the job.
jobDetails_data :: Lens.Lens' JobDetails (Core.Maybe JobData)
jobDetails_data = Lens.lens (\JobDetails' {data'} -> data') (\s@JobDetails' {} a -> s {data' = a} :: JobDetails)

-- | The unique system-generated ID of the job.
jobDetails_id :: Lens.Lens' JobDetails (Core.Maybe Core.Text)
jobDetails_id = Lens.lens (\JobDetails' {id} -> id) (\s@JobDetails' {} a -> s {id = a} :: JobDetails)

instance Core.FromJSON JobDetails where
  parseJSON =
    Core.withObject
      "JobDetails"
      ( \x ->
          JobDetails'
            Core.<$> (x Core..:? "accountId")
            Core.<*> (x Core..:? "data")
            Core.<*> (x Core..:? "id")
      )

instance Core.Hashable JobDetails

instance Core.NFData JobDetails
