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
-- Module      : Network.AWS.CloudWatch.PutAnomalyDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an anomaly detection model for a CloudWatch metric. You can use
-- the model to display a band of expected normal values when the metric is
-- graphed.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html CloudWatch Anomaly Detection>.
module Network.AWS.CloudWatch.PutAnomalyDetector
  ( -- * Creating a Request
    PutAnomalyDetector (..),
    newPutAnomalyDetector,

    -- * Request Lenses
    putAnomalyDetector_configuration,
    putAnomalyDetector_dimensions,
    putAnomalyDetector_namespace,
    putAnomalyDetector_metricName,
    putAnomalyDetector_stat,

    -- * Destructuring the Response
    PutAnomalyDetectorResponse (..),
    newPutAnomalyDetectorResponse,

    -- * Response Lenses
    putAnomalyDetectorResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutAnomalyDetector' smart constructor.
data PutAnomalyDetector = PutAnomalyDetector'
  { -- | The configuration specifies details about how the anomaly detection
    -- model is to be trained, including time ranges to exclude when training
    -- and updating the model. You can specify as many as 10 time ranges.
    --
    -- The configuration can also include the time zone to use for the metric.
    configuration :: Core.Maybe AnomalyDetectorConfiguration,
    -- | The metric dimensions to create the anomaly detection model for.
    dimensions :: Core.Maybe [Dimension],
    -- | The namespace of the metric to create the anomaly detection model for.
    namespace :: Core.Text,
    -- | The name of the metric to create the anomaly detection model for.
    metricName :: Core.Text,
    -- | The statistic to use for the metric and the anomaly detection model.
    stat :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutAnomalyDetector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configuration', 'putAnomalyDetector_configuration' - The configuration specifies details about how the anomaly detection
-- model is to be trained, including time ranges to exclude when training
-- and updating the model. You can specify as many as 10 time ranges.
--
-- The configuration can also include the time zone to use for the metric.
--
-- 'dimensions', 'putAnomalyDetector_dimensions' - The metric dimensions to create the anomaly detection model for.
--
-- 'namespace', 'putAnomalyDetector_namespace' - The namespace of the metric to create the anomaly detection model for.
--
-- 'metricName', 'putAnomalyDetector_metricName' - The name of the metric to create the anomaly detection model for.
--
-- 'stat', 'putAnomalyDetector_stat' - The statistic to use for the metric and the anomaly detection model.
newPutAnomalyDetector ::
  -- | 'namespace'
  Core.Text ->
  -- | 'metricName'
  Core.Text ->
  -- | 'stat'
  Core.Text ->
  PutAnomalyDetector
newPutAnomalyDetector pNamespace_ pMetricName_ pStat_ =
  PutAnomalyDetector'
    { configuration = Core.Nothing,
      dimensions = Core.Nothing,
      namespace = pNamespace_,
      metricName = pMetricName_,
      stat = pStat_
    }

-- | The configuration specifies details about how the anomaly detection
-- model is to be trained, including time ranges to exclude when training
-- and updating the model. You can specify as many as 10 time ranges.
--
-- The configuration can also include the time zone to use for the metric.
putAnomalyDetector_configuration :: Lens.Lens' PutAnomalyDetector (Core.Maybe AnomalyDetectorConfiguration)
putAnomalyDetector_configuration = Lens.lens (\PutAnomalyDetector' {configuration} -> configuration) (\s@PutAnomalyDetector' {} a -> s {configuration = a} :: PutAnomalyDetector)

-- | The metric dimensions to create the anomaly detection model for.
putAnomalyDetector_dimensions :: Lens.Lens' PutAnomalyDetector (Core.Maybe [Dimension])
putAnomalyDetector_dimensions = Lens.lens (\PutAnomalyDetector' {dimensions} -> dimensions) (\s@PutAnomalyDetector' {} a -> s {dimensions = a} :: PutAnomalyDetector) Core.. Lens.mapping Lens._Coerce

-- | The namespace of the metric to create the anomaly detection model for.
putAnomalyDetector_namespace :: Lens.Lens' PutAnomalyDetector Core.Text
putAnomalyDetector_namespace = Lens.lens (\PutAnomalyDetector' {namespace} -> namespace) (\s@PutAnomalyDetector' {} a -> s {namespace = a} :: PutAnomalyDetector)

-- | The name of the metric to create the anomaly detection model for.
putAnomalyDetector_metricName :: Lens.Lens' PutAnomalyDetector Core.Text
putAnomalyDetector_metricName = Lens.lens (\PutAnomalyDetector' {metricName} -> metricName) (\s@PutAnomalyDetector' {} a -> s {metricName = a} :: PutAnomalyDetector)

-- | The statistic to use for the metric and the anomaly detection model.
putAnomalyDetector_stat :: Lens.Lens' PutAnomalyDetector Core.Text
putAnomalyDetector_stat = Lens.lens (\PutAnomalyDetector' {stat} -> stat) (\s@PutAnomalyDetector' {} a -> s {stat = a} :: PutAnomalyDetector)

instance Core.AWSRequest PutAnomalyDetector where
  type
    AWSResponse PutAnomalyDetector =
      PutAnomalyDetectorResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "PutAnomalyDetectorResult"
      ( \s h x ->
          PutAnomalyDetectorResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable PutAnomalyDetector

instance Core.NFData PutAnomalyDetector

instance Core.ToHeaders PutAnomalyDetector where
  toHeaders = Core.const Core.mempty

instance Core.ToPath PutAnomalyDetector where
  toPath = Core.const "/"

instance Core.ToQuery PutAnomalyDetector where
  toQuery PutAnomalyDetector' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("PutAnomalyDetector" :: Core.ByteString),
        "Version" Core.=: ("2010-08-01" :: Core.ByteString),
        "Configuration" Core.=: configuration,
        "Dimensions"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> dimensions),
        "Namespace" Core.=: namespace,
        "MetricName" Core.=: metricName,
        "Stat" Core.=: stat
      ]

-- | /See:/ 'newPutAnomalyDetectorResponse' smart constructor.
data PutAnomalyDetectorResponse = PutAnomalyDetectorResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutAnomalyDetectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putAnomalyDetectorResponse_httpStatus' - The response's http status code.
newPutAnomalyDetectorResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PutAnomalyDetectorResponse
newPutAnomalyDetectorResponse pHttpStatus_ =
  PutAnomalyDetectorResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
putAnomalyDetectorResponse_httpStatus :: Lens.Lens' PutAnomalyDetectorResponse Core.Int
putAnomalyDetectorResponse_httpStatus = Lens.lens (\PutAnomalyDetectorResponse' {httpStatus} -> httpStatus) (\s@PutAnomalyDetectorResponse' {} a -> s {httpStatus = a} :: PutAnomalyDetectorResponse)

instance Core.NFData PutAnomalyDetectorResponse
