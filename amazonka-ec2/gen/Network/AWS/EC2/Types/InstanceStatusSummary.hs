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
-- Module      : Network.AWS.EC2.Types.InstanceStatusSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStatusSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceStatusDetails
import Network.AWS.EC2.Types.SummaryStatus
import qualified Network.AWS.Lens as Lens

-- | Describes the status of an instance.
--
-- /See:/ 'newInstanceStatusSummary' smart constructor.
data InstanceStatusSummary = InstanceStatusSummary'
  { -- | The system instance health or application instance health.
    details :: Core.Maybe [InstanceStatusDetails],
    -- | The status.
    status :: SummaryStatus
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InstanceStatusSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'details', 'instanceStatusSummary_details' - The system instance health or application instance health.
--
-- 'status', 'instanceStatusSummary_status' - The status.
newInstanceStatusSummary ::
  -- | 'status'
  SummaryStatus ->
  InstanceStatusSummary
newInstanceStatusSummary pStatus_ =
  InstanceStatusSummary'
    { details = Core.Nothing,
      status = pStatus_
    }

-- | The system instance health or application instance health.
instanceStatusSummary_details :: Lens.Lens' InstanceStatusSummary (Core.Maybe [InstanceStatusDetails])
instanceStatusSummary_details = Lens.lens (\InstanceStatusSummary' {details} -> details) (\s@InstanceStatusSummary' {} a -> s {details = a} :: InstanceStatusSummary) Core.. Lens.mapping Lens._Coerce

-- | The status.
instanceStatusSummary_status :: Lens.Lens' InstanceStatusSummary SummaryStatus
instanceStatusSummary_status = Lens.lens (\InstanceStatusSummary' {status} -> status) (\s@InstanceStatusSummary' {} a -> s {status = a} :: InstanceStatusSummary)

instance Core.FromXML InstanceStatusSummary where
  parseXML x =
    InstanceStatusSummary'
      Core.<$> ( x Core..@? "details" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )
      Core.<*> (x Core..@ "status")

instance Core.Hashable InstanceStatusSummary

instance Core.NFData InstanceStatusSummary
