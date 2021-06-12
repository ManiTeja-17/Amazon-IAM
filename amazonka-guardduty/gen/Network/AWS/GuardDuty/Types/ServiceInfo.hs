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
-- Module      : Network.AWS.GuardDuty.Types.ServiceInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.ServiceInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types.Action
import Network.AWS.GuardDuty.Types.Evidence
import qualified Network.AWS.Lens as Lens

-- | Contains additional information about the generated finding.
--
-- /See:/ 'newServiceInfo' smart constructor.
data ServiceInfo = ServiceInfo'
  { -- | The resource role information for this finding.
    resourceRole :: Core.Maybe Core.Text,
    -- | Indicates whether this finding is archived.
    archived :: Core.Maybe Core.Bool,
    -- | The first-seen timestamp of the activity that prompted GuardDuty to
    -- generate this finding.
    eventFirstSeen :: Core.Maybe Core.Text,
    -- | The last-seen timestamp of the activity that prompted GuardDuty to
    -- generate this finding.
    eventLastSeen :: Core.Maybe Core.Text,
    -- | The name of the AWS service (GuardDuty) that generated a finding.
    serviceName :: Core.Maybe Core.Text,
    -- | The detector ID for the GuardDuty service.
    detectorId :: Core.Maybe Core.Text,
    -- | Information about the activity that is described in a finding.
    action :: Core.Maybe Action,
    -- | An evidence object associated with the service.
    evidence :: Core.Maybe Evidence,
    -- | The total count of the occurrences of this finding type.
    count :: Core.Maybe Core.Int,
    -- | Feedback that was submitted about the finding.
    userFeedback :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ServiceInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceRole', 'serviceInfo_resourceRole' - The resource role information for this finding.
--
-- 'archived', 'serviceInfo_archived' - Indicates whether this finding is archived.
--
-- 'eventFirstSeen', 'serviceInfo_eventFirstSeen' - The first-seen timestamp of the activity that prompted GuardDuty to
-- generate this finding.
--
-- 'eventLastSeen', 'serviceInfo_eventLastSeen' - The last-seen timestamp of the activity that prompted GuardDuty to
-- generate this finding.
--
-- 'serviceName', 'serviceInfo_serviceName' - The name of the AWS service (GuardDuty) that generated a finding.
--
-- 'detectorId', 'serviceInfo_detectorId' - The detector ID for the GuardDuty service.
--
-- 'action', 'serviceInfo_action' - Information about the activity that is described in a finding.
--
-- 'evidence', 'serviceInfo_evidence' - An evidence object associated with the service.
--
-- 'count', 'serviceInfo_count' - The total count of the occurrences of this finding type.
--
-- 'userFeedback', 'serviceInfo_userFeedback' - Feedback that was submitted about the finding.
newServiceInfo ::
  ServiceInfo
newServiceInfo =
  ServiceInfo'
    { resourceRole = Core.Nothing,
      archived = Core.Nothing,
      eventFirstSeen = Core.Nothing,
      eventLastSeen = Core.Nothing,
      serviceName = Core.Nothing,
      detectorId = Core.Nothing,
      action = Core.Nothing,
      evidence = Core.Nothing,
      count = Core.Nothing,
      userFeedback = Core.Nothing
    }

-- | The resource role information for this finding.
serviceInfo_resourceRole :: Lens.Lens' ServiceInfo (Core.Maybe Core.Text)
serviceInfo_resourceRole = Lens.lens (\ServiceInfo' {resourceRole} -> resourceRole) (\s@ServiceInfo' {} a -> s {resourceRole = a} :: ServiceInfo)

-- | Indicates whether this finding is archived.
serviceInfo_archived :: Lens.Lens' ServiceInfo (Core.Maybe Core.Bool)
serviceInfo_archived = Lens.lens (\ServiceInfo' {archived} -> archived) (\s@ServiceInfo' {} a -> s {archived = a} :: ServiceInfo)

-- | The first-seen timestamp of the activity that prompted GuardDuty to
-- generate this finding.
serviceInfo_eventFirstSeen :: Lens.Lens' ServiceInfo (Core.Maybe Core.Text)
serviceInfo_eventFirstSeen = Lens.lens (\ServiceInfo' {eventFirstSeen} -> eventFirstSeen) (\s@ServiceInfo' {} a -> s {eventFirstSeen = a} :: ServiceInfo)

-- | The last-seen timestamp of the activity that prompted GuardDuty to
-- generate this finding.
serviceInfo_eventLastSeen :: Lens.Lens' ServiceInfo (Core.Maybe Core.Text)
serviceInfo_eventLastSeen = Lens.lens (\ServiceInfo' {eventLastSeen} -> eventLastSeen) (\s@ServiceInfo' {} a -> s {eventLastSeen = a} :: ServiceInfo)

-- | The name of the AWS service (GuardDuty) that generated a finding.
serviceInfo_serviceName :: Lens.Lens' ServiceInfo (Core.Maybe Core.Text)
serviceInfo_serviceName = Lens.lens (\ServiceInfo' {serviceName} -> serviceName) (\s@ServiceInfo' {} a -> s {serviceName = a} :: ServiceInfo)

-- | The detector ID for the GuardDuty service.
serviceInfo_detectorId :: Lens.Lens' ServiceInfo (Core.Maybe Core.Text)
serviceInfo_detectorId = Lens.lens (\ServiceInfo' {detectorId} -> detectorId) (\s@ServiceInfo' {} a -> s {detectorId = a} :: ServiceInfo)

-- | Information about the activity that is described in a finding.
serviceInfo_action :: Lens.Lens' ServiceInfo (Core.Maybe Action)
serviceInfo_action = Lens.lens (\ServiceInfo' {action} -> action) (\s@ServiceInfo' {} a -> s {action = a} :: ServiceInfo)

-- | An evidence object associated with the service.
serviceInfo_evidence :: Lens.Lens' ServiceInfo (Core.Maybe Evidence)
serviceInfo_evidence = Lens.lens (\ServiceInfo' {evidence} -> evidence) (\s@ServiceInfo' {} a -> s {evidence = a} :: ServiceInfo)

-- | The total count of the occurrences of this finding type.
serviceInfo_count :: Lens.Lens' ServiceInfo (Core.Maybe Core.Int)
serviceInfo_count = Lens.lens (\ServiceInfo' {count} -> count) (\s@ServiceInfo' {} a -> s {count = a} :: ServiceInfo)

-- | Feedback that was submitted about the finding.
serviceInfo_userFeedback :: Lens.Lens' ServiceInfo (Core.Maybe Core.Text)
serviceInfo_userFeedback = Lens.lens (\ServiceInfo' {userFeedback} -> userFeedback) (\s@ServiceInfo' {} a -> s {userFeedback = a} :: ServiceInfo)

instance Core.FromJSON ServiceInfo where
  parseJSON =
    Core.withObject
      "ServiceInfo"
      ( \x ->
          ServiceInfo'
            Core.<$> (x Core..:? "resourceRole")
            Core.<*> (x Core..:? "archived")
            Core.<*> (x Core..:? "eventFirstSeen")
            Core.<*> (x Core..:? "eventLastSeen")
            Core.<*> (x Core..:? "serviceName")
            Core.<*> (x Core..:? "detectorId")
            Core.<*> (x Core..:? "action")
            Core.<*> (x Core..:? "evidence")
            Core.<*> (x Core..:? "count")
            Core.<*> (x Core..:? "userFeedback")
      )

instance Core.Hashable ServiceInfo

instance Core.NFData ServiceInfo
