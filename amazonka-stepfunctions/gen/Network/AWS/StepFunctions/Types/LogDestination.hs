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
-- Module      : Network.AWS.StepFunctions.Types.LogDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LogDestination where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.StepFunctions.Types.CloudWatchLogsLogGroup

-- |
--
-- /See:/ 'newLogDestination' smart constructor.
data LogDestination = LogDestination'
  { -- | An object describing a CloudWatch log group. For more information, see
    -- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html AWS::Logs::LogGroup>
    -- in the AWS CloudFormation User Guide.
    cloudWatchLogsLogGroup :: Core.Maybe CloudWatchLogsLogGroup
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LogDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchLogsLogGroup', 'logDestination_cloudWatchLogsLogGroup' - An object describing a CloudWatch log group. For more information, see
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html AWS::Logs::LogGroup>
-- in the AWS CloudFormation User Guide.
newLogDestination ::
  LogDestination
newLogDestination =
  LogDestination'
    { cloudWatchLogsLogGroup =
        Core.Nothing
    }

-- | An object describing a CloudWatch log group. For more information, see
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html AWS::Logs::LogGroup>
-- in the AWS CloudFormation User Guide.
logDestination_cloudWatchLogsLogGroup :: Lens.Lens' LogDestination (Core.Maybe CloudWatchLogsLogGroup)
logDestination_cloudWatchLogsLogGroup = Lens.lens (\LogDestination' {cloudWatchLogsLogGroup} -> cloudWatchLogsLogGroup) (\s@LogDestination' {} a -> s {cloudWatchLogsLogGroup = a} :: LogDestination)

instance Core.FromJSON LogDestination where
  parseJSON =
    Core.withObject
      "LogDestination"
      ( \x ->
          LogDestination'
            Core.<$> (x Core..:? "cloudWatchLogsLogGroup")
      )

instance Core.Hashable LogDestination

instance Core.NFData LogDestination

instance Core.ToJSON LogDestination where
  toJSON LogDestination' {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudWatchLogsLogGroup" Core..=)
              Core.<$> cloudWatchLogsLogGroup
          ]
      )
