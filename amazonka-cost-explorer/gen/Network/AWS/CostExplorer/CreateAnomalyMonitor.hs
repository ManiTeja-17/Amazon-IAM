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
-- Module      : Network.AWS.CostExplorer.CreateAnomalyMonitor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cost anomaly detection monitor with the requested type and
-- monitor specification.
module Network.AWS.CostExplorer.CreateAnomalyMonitor
  ( -- * Creating a Request
    CreateAnomalyMonitor (..),
    newCreateAnomalyMonitor,

    -- * Request Lenses
    createAnomalyMonitor_anomalyMonitor,

    -- * Destructuring the Response
    CreateAnomalyMonitorResponse (..),
    newCreateAnomalyMonitorResponse,

    -- * Response Lenses
    createAnomalyMonitorResponse_httpStatus,
    createAnomalyMonitorResponse_monitorArn,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CostExplorer.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAnomalyMonitor' smart constructor.
data CreateAnomalyMonitor = CreateAnomalyMonitor'
  { -- | The cost anomaly detection monitor object that you want to create.
    anomalyMonitor :: AnomalyMonitor
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateAnomalyMonitor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyMonitor', 'createAnomalyMonitor_anomalyMonitor' - The cost anomaly detection monitor object that you want to create.
newCreateAnomalyMonitor ::
  -- | 'anomalyMonitor'
  AnomalyMonitor ->
  CreateAnomalyMonitor
newCreateAnomalyMonitor pAnomalyMonitor_ =
  CreateAnomalyMonitor'
    { anomalyMonitor =
        pAnomalyMonitor_
    }

-- | The cost anomaly detection monitor object that you want to create.
createAnomalyMonitor_anomalyMonitor :: Lens.Lens' CreateAnomalyMonitor AnomalyMonitor
createAnomalyMonitor_anomalyMonitor = Lens.lens (\CreateAnomalyMonitor' {anomalyMonitor} -> anomalyMonitor) (\s@CreateAnomalyMonitor' {} a -> s {anomalyMonitor = a} :: CreateAnomalyMonitor)

instance Core.AWSRequest CreateAnomalyMonitor where
  type
    AWSResponse CreateAnomalyMonitor =
      CreateAnomalyMonitorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAnomalyMonitorResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..:> "MonitorArn")
      )

instance Core.Hashable CreateAnomalyMonitor

instance Core.NFData CreateAnomalyMonitor

instance Core.ToHeaders CreateAnomalyMonitor where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSInsightsIndexService.CreateAnomalyMonitor" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateAnomalyMonitor where
  toJSON CreateAnomalyMonitor' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("AnomalyMonitor" Core..= anomalyMonitor)
          ]
      )

instance Core.ToPath CreateAnomalyMonitor where
  toPath = Core.const "/"

instance Core.ToQuery CreateAnomalyMonitor where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateAnomalyMonitorResponse' smart constructor.
data CreateAnomalyMonitorResponse = CreateAnomalyMonitorResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | The unique identifier of your newly created cost anomaly detection
    -- monitor.
    monitorArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateAnomalyMonitorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createAnomalyMonitorResponse_httpStatus' - The response's http status code.
--
-- 'monitorArn', 'createAnomalyMonitorResponse_monitorArn' - The unique identifier of your newly created cost anomaly detection
-- monitor.
newCreateAnomalyMonitorResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'monitorArn'
  Core.Text ->
  CreateAnomalyMonitorResponse
newCreateAnomalyMonitorResponse
  pHttpStatus_
  pMonitorArn_ =
    CreateAnomalyMonitorResponse'
      { httpStatus =
          pHttpStatus_,
        monitorArn = pMonitorArn_
      }

-- | The response's http status code.
createAnomalyMonitorResponse_httpStatus :: Lens.Lens' CreateAnomalyMonitorResponse Core.Int
createAnomalyMonitorResponse_httpStatus = Lens.lens (\CreateAnomalyMonitorResponse' {httpStatus} -> httpStatus) (\s@CreateAnomalyMonitorResponse' {} a -> s {httpStatus = a} :: CreateAnomalyMonitorResponse)

-- | The unique identifier of your newly created cost anomaly detection
-- monitor.
createAnomalyMonitorResponse_monitorArn :: Lens.Lens' CreateAnomalyMonitorResponse Core.Text
createAnomalyMonitorResponse_monitorArn = Lens.lens (\CreateAnomalyMonitorResponse' {monitorArn} -> monitorArn) (\s@CreateAnomalyMonitorResponse' {} a -> s {monitorArn = a} :: CreateAnomalyMonitorResponse)

instance Core.NFData CreateAnomalyMonitorResponse
