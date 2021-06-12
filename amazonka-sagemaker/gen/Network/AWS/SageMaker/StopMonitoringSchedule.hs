{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.StopMonitoringSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a previously started monitoring schedule.
module Network.AWS.SageMaker.StopMonitoringSchedule
  ( -- * Creating a Request
    StopMonitoringSchedule (..),
    newStopMonitoringSchedule,

    -- * Request Lenses
    stopMonitoringSchedule_monitoringScheduleName,

    -- * Destructuring the Response
    StopMonitoringScheduleResponse (..),
    newStopMonitoringScheduleResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newStopMonitoringSchedule' smart constructor.
data StopMonitoringSchedule = StopMonitoringSchedule'
  { -- | The name of the schedule to stop.
    monitoringScheduleName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StopMonitoringSchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'monitoringScheduleName', 'stopMonitoringSchedule_monitoringScheduleName' - The name of the schedule to stop.
newStopMonitoringSchedule ::
  -- | 'monitoringScheduleName'
  Core.Text ->
  StopMonitoringSchedule
newStopMonitoringSchedule pMonitoringScheduleName_ =
  StopMonitoringSchedule'
    { monitoringScheduleName =
        pMonitoringScheduleName_
    }

-- | The name of the schedule to stop.
stopMonitoringSchedule_monitoringScheduleName :: Lens.Lens' StopMonitoringSchedule Core.Text
stopMonitoringSchedule_monitoringScheduleName = Lens.lens (\StopMonitoringSchedule' {monitoringScheduleName} -> monitoringScheduleName) (\s@StopMonitoringSchedule' {} a -> s {monitoringScheduleName = a} :: StopMonitoringSchedule)

instance Core.AWSRequest StopMonitoringSchedule where
  type
    AWSResponse StopMonitoringSchedule =
      StopMonitoringScheduleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      StopMonitoringScheduleResponse'

instance Core.Hashable StopMonitoringSchedule

instance Core.NFData StopMonitoringSchedule

instance Core.ToHeaders StopMonitoringSchedule where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.StopMonitoringSchedule" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON StopMonitoringSchedule where
  toJSON StopMonitoringSchedule' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "MonitoringScheduleName"
                  Core..= monitoringScheduleName
              )
          ]
      )

instance Core.ToPath StopMonitoringSchedule where
  toPath = Core.const "/"

instance Core.ToQuery StopMonitoringSchedule where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newStopMonitoringScheduleResponse' smart constructor.
data StopMonitoringScheduleResponse = StopMonitoringScheduleResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StopMonitoringScheduleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStopMonitoringScheduleResponse ::
  StopMonitoringScheduleResponse
newStopMonitoringScheduleResponse =
  StopMonitoringScheduleResponse'

instance Core.NFData StopMonitoringScheduleResponse
