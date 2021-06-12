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
-- Module      : Network.AWS.SageMaker.Types.DatasetDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DatasetDefinition where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.AthenaDatasetDefinition
import Network.AWS.SageMaker.Types.DataDistributionType
import Network.AWS.SageMaker.Types.InputMode
import Network.AWS.SageMaker.Types.RedshiftDatasetDefinition

-- | Configuration for Dataset Definition inputs. The Dataset Definition
-- input must specify exactly one of either @AthenaDatasetDefinition@ or
-- @RedshiftDatasetDefinition@ types.
--
-- /See:/ 'newDatasetDefinition' smart constructor.
data DatasetDefinition = DatasetDefinition'
  { redshiftDatasetDefinition :: Core.Maybe RedshiftDatasetDefinition,
    athenaDatasetDefinition :: Core.Maybe AthenaDatasetDefinition,
    -- | The local path where you want Amazon SageMaker to download the Dataset
    -- Definition inputs to run a processing job. @LocalPath@ is an absolute
    -- path to the input data. This is a required parameter when @AppManaged@
    -- is @False@ (default).
    localPath :: Core.Maybe Core.Text,
    -- | Whether to use @File@ or @Pipe@ input mode. In @File@ (default) mode,
    -- Amazon SageMaker copies the data from the input source onto the local
    -- Amazon Elastic Block Store (Amazon EBS) volumes before starting your
    -- training algorithm. This is the most commonly used input mode. In @Pipe@
    -- mode, Amazon SageMaker streams input data from the source directly to
    -- your algorithm without using the EBS volume.
    inputMode :: Core.Maybe InputMode,
    -- | Whether the generated dataset is @FullyReplicated@ or @ShardedByS3Key@
    -- (default).
    dataDistributionType :: Core.Maybe DataDistributionType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DatasetDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'redshiftDatasetDefinition', 'datasetDefinition_redshiftDatasetDefinition' - Undocumented member.
--
-- 'athenaDatasetDefinition', 'datasetDefinition_athenaDatasetDefinition' - Undocumented member.
--
-- 'localPath', 'datasetDefinition_localPath' - The local path where you want Amazon SageMaker to download the Dataset
-- Definition inputs to run a processing job. @LocalPath@ is an absolute
-- path to the input data. This is a required parameter when @AppManaged@
-- is @False@ (default).
--
-- 'inputMode', 'datasetDefinition_inputMode' - Whether to use @File@ or @Pipe@ input mode. In @File@ (default) mode,
-- Amazon SageMaker copies the data from the input source onto the local
-- Amazon Elastic Block Store (Amazon EBS) volumes before starting your
-- training algorithm. This is the most commonly used input mode. In @Pipe@
-- mode, Amazon SageMaker streams input data from the source directly to
-- your algorithm without using the EBS volume.
--
-- 'dataDistributionType', 'datasetDefinition_dataDistributionType' - Whether the generated dataset is @FullyReplicated@ or @ShardedByS3Key@
-- (default).
newDatasetDefinition ::
  DatasetDefinition
newDatasetDefinition =
  DatasetDefinition'
    { redshiftDatasetDefinition =
        Core.Nothing,
      athenaDatasetDefinition = Core.Nothing,
      localPath = Core.Nothing,
      inputMode = Core.Nothing,
      dataDistributionType = Core.Nothing
    }

-- | Undocumented member.
datasetDefinition_redshiftDatasetDefinition :: Lens.Lens' DatasetDefinition (Core.Maybe RedshiftDatasetDefinition)
datasetDefinition_redshiftDatasetDefinition = Lens.lens (\DatasetDefinition' {redshiftDatasetDefinition} -> redshiftDatasetDefinition) (\s@DatasetDefinition' {} a -> s {redshiftDatasetDefinition = a} :: DatasetDefinition)

-- | Undocumented member.
datasetDefinition_athenaDatasetDefinition :: Lens.Lens' DatasetDefinition (Core.Maybe AthenaDatasetDefinition)
datasetDefinition_athenaDatasetDefinition = Lens.lens (\DatasetDefinition' {athenaDatasetDefinition} -> athenaDatasetDefinition) (\s@DatasetDefinition' {} a -> s {athenaDatasetDefinition = a} :: DatasetDefinition)

-- | The local path where you want Amazon SageMaker to download the Dataset
-- Definition inputs to run a processing job. @LocalPath@ is an absolute
-- path to the input data. This is a required parameter when @AppManaged@
-- is @False@ (default).
datasetDefinition_localPath :: Lens.Lens' DatasetDefinition (Core.Maybe Core.Text)
datasetDefinition_localPath = Lens.lens (\DatasetDefinition' {localPath} -> localPath) (\s@DatasetDefinition' {} a -> s {localPath = a} :: DatasetDefinition)

-- | Whether to use @File@ or @Pipe@ input mode. In @File@ (default) mode,
-- Amazon SageMaker copies the data from the input source onto the local
-- Amazon Elastic Block Store (Amazon EBS) volumes before starting your
-- training algorithm. This is the most commonly used input mode. In @Pipe@
-- mode, Amazon SageMaker streams input data from the source directly to
-- your algorithm without using the EBS volume.
datasetDefinition_inputMode :: Lens.Lens' DatasetDefinition (Core.Maybe InputMode)
datasetDefinition_inputMode = Lens.lens (\DatasetDefinition' {inputMode} -> inputMode) (\s@DatasetDefinition' {} a -> s {inputMode = a} :: DatasetDefinition)

-- | Whether the generated dataset is @FullyReplicated@ or @ShardedByS3Key@
-- (default).
datasetDefinition_dataDistributionType :: Lens.Lens' DatasetDefinition (Core.Maybe DataDistributionType)
datasetDefinition_dataDistributionType = Lens.lens (\DatasetDefinition' {dataDistributionType} -> dataDistributionType) (\s@DatasetDefinition' {} a -> s {dataDistributionType = a} :: DatasetDefinition)

instance Core.FromJSON DatasetDefinition where
  parseJSON =
    Core.withObject
      "DatasetDefinition"
      ( \x ->
          DatasetDefinition'
            Core.<$> (x Core..:? "RedshiftDatasetDefinition")
            Core.<*> (x Core..:? "AthenaDatasetDefinition")
            Core.<*> (x Core..:? "LocalPath")
            Core.<*> (x Core..:? "InputMode")
            Core.<*> (x Core..:? "DataDistributionType")
      )

instance Core.Hashable DatasetDefinition

instance Core.NFData DatasetDefinition

instance Core.ToJSON DatasetDefinition where
  toJSON DatasetDefinition' {..} =
    Core.object
      ( Core.catMaybes
          [ ("RedshiftDatasetDefinition" Core..=)
              Core.<$> redshiftDatasetDefinition,
            ("AthenaDatasetDefinition" Core..=)
              Core.<$> athenaDatasetDefinition,
            ("LocalPath" Core..=) Core.<$> localPath,
            ("InputMode" Core..=) Core.<$> inputMode,
            ("DataDistributionType" Core..=)
              Core.<$> dataDistributionType
          ]
      )
