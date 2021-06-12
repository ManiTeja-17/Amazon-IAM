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
-- Module      : Network.AWS.CloudWatchLogs.Types.MetricTransformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.MetricTransformation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Indicates how to transform ingested log events to metric data in a
-- CloudWatch metric.
--
-- /See:/ 'newMetricTransformation' smart constructor.
data MetricTransformation = MetricTransformation'
  { -- | (Optional) The value to emit when a filter pattern does not match a log
    -- event. This value can be null.
    defaultValue :: Core.Maybe Core.Double,
    -- | The name of the CloudWatch metric.
    metricName :: Core.Text,
    -- | A custom namespace to contain your metric in CloudWatch. Use namespaces
    -- to group together metrics that are similar. For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace Namespaces>.
    metricNamespace :: Core.Text,
    -- | The value to publish to the CloudWatch metric when a filter pattern
    -- matches a log event.
    metricValue :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MetricTransformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultValue', 'metricTransformation_defaultValue' - (Optional) The value to emit when a filter pattern does not match a log
-- event. This value can be null.
--
-- 'metricName', 'metricTransformation_metricName' - The name of the CloudWatch metric.
--
-- 'metricNamespace', 'metricTransformation_metricNamespace' - A custom namespace to contain your metric in CloudWatch. Use namespaces
-- to group together metrics that are similar. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace Namespaces>.
--
-- 'metricValue', 'metricTransformation_metricValue' - The value to publish to the CloudWatch metric when a filter pattern
-- matches a log event.
newMetricTransformation ::
  -- | 'metricName'
  Core.Text ->
  -- | 'metricNamespace'
  Core.Text ->
  -- | 'metricValue'
  Core.Text ->
  MetricTransformation
newMetricTransformation
  pMetricName_
  pMetricNamespace_
  pMetricValue_ =
    MetricTransformation'
      { defaultValue = Core.Nothing,
        metricName = pMetricName_,
        metricNamespace = pMetricNamespace_,
        metricValue = pMetricValue_
      }

-- | (Optional) The value to emit when a filter pattern does not match a log
-- event. This value can be null.
metricTransformation_defaultValue :: Lens.Lens' MetricTransformation (Core.Maybe Core.Double)
metricTransformation_defaultValue = Lens.lens (\MetricTransformation' {defaultValue} -> defaultValue) (\s@MetricTransformation' {} a -> s {defaultValue = a} :: MetricTransformation)

-- | The name of the CloudWatch metric.
metricTransformation_metricName :: Lens.Lens' MetricTransformation Core.Text
metricTransformation_metricName = Lens.lens (\MetricTransformation' {metricName} -> metricName) (\s@MetricTransformation' {} a -> s {metricName = a} :: MetricTransformation)

-- | A custom namespace to contain your metric in CloudWatch. Use namespaces
-- to group together metrics that are similar. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace Namespaces>.
metricTransformation_metricNamespace :: Lens.Lens' MetricTransformation Core.Text
metricTransformation_metricNamespace = Lens.lens (\MetricTransformation' {metricNamespace} -> metricNamespace) (\s@MetricTransformation' {} a -> s {metricNamespace = a} :: MetricTransformation)

-- | The value to publish to the CloudWatch metric when a filter pattern
-- matches a log event.
metricTransformation_metricValue :: Lens.Lens' MetricTransformation Core.Text
metricTransformation_metricValue = Lens.lens (\MetricTransformation' {metricValue} -> metricValue) (\s@MetricTransformation' {} a -> s {metricValue = a} :: MetricTransformation)

instance Core.FromJSON MetricTransformation where
  parseJSON =
    Core.withObject
      "MetricTransformation"
      ( \x ->
          MetricTransformation'
            Core.<$> (x Core..:? "defaultValue")
            Core.<*> (x Core..: "metricName")
            Core.<*> (x Core..: "metricNamespace")
            Core.<*> (x Core..: "metricValue")
      )

instance Core.Hashable MetricTransformation

instance Core.NFData MetricTransformation

instance Core.ToJSON MetricTransformation where
  toJSON MetricTransformation' {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultValue" Core..=) Core.<$> defaultValue,
            Core.Just ("metricName" Core..= metricName),
            Core.Just
              ("metricNamespace" Core..= metricNamespace),
            Core.Just ("metricValue" Core..= metricValue)
          ]
      )
