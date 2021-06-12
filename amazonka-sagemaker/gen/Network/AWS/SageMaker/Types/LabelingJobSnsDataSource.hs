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
-- Module      : Network.AWS.SageMaker.Types.LabelingJobSnsDataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelingJobSnsDataSource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | An Amazon SNS data source used for streaming labeling jobs.
--
-- /See:/ 'newLabelingJobSnsDataSource' smart constructor.
data LabelingJobSnsDataSource = LabelingJobSnsDataSource'
  { -- | The Amazon SNS input topic Amazon Resource Name (ARN). Specify the ARN
    -- of the input topic you will use to send new data objects to a streaming
    -- labeling job.
    --
    -- If you specify an input topic for @SnsTopicArn@ in @InputConfig@, you
    -- must specify a value for @SnsTopicArn@ in @OutputConfig@.
    snsTopicArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LabelingJobSnsDataSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snsTopicArn', 'labelingJobSnsDataSource_snsTopicArn' - The Amazon SNS input topic Amazon Resource Name (ARN). Specify the ARN
-- of the input topic you will use to send new data objects to a streaming
-- labeling job.
--
-- If you specify an input topic for @SnsTopicArn@ in @InputConfig@, you
-- must specify a value for @SnsTopicArn@ in @OutputConfig@.
newLabelingJobSnsDataSource ::
  -- | 'snsTopicArn'
  Core.Text ->
  LabelingJobSnsDataSource
newLabelingJobSnsDataSource pSnsTopicArn_ =
  LabelingJobSnsDataSource'
    { snsTopicArn =
        pSnsTopicArn_
    }

-- | The Amazon SNS input topic Amazon Resource Name (ARN). Specify the ARN
-- of the input topic you will use to send new data objects to a streaming
-- labeling job.
--
-- If you specify an input topic for @SnsTopicArn@ in @InputConfig@, you
-- must specify a value for @SnsTopicArn@ in @OutputConfig@.
labelingJobSnsDataSource_snsTopicArn :: Lens.Lens' LabelingJobSnsDataSource Core.Text
labelingJobSnsDataSource_snsTopicArn = Lens.lens (\LabelingJobSnsDataSource' {snsTopicArn} -> snsTopicArn) (\s@LabelingJobSnsDataSource' {} a -> s {snsTopicArn = a} :: LabelingJobSnsDataSource)

instance Core.FromJSON LabelingJobSnsDataSource where
  parseJSON =
    Core.withObject
      "LabelingJobSnsDataSource"
      ( \x ->
          LabelingJobSnsDataSource'
            Core.<$> (x Core..: "SnsTopicArn")
      )

instance Core.Hashable LabelingJobSnsDataSource

instance Core.NFData LabelingJobSnsDataSource

instance Core.ToJSON LabelingJobSnsDataSource where
  toJSON LabelingJobSnsDataSource' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("SnsTopicArn" Core..= snsTopicArn)]
      )
