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
-- Module      : Network.AWS.EMR.Types.HadoopJarStepConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.HadoopJarStepConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.EMR.Types.KeyValue
import qualified Network.AWS.Lens as Lens

-- | A job flow step consisting of a JAR file whose main function will be
-- executed. The main function submits a job for Hadoop to execute and
-- waits for the job to finish or fail.
--
-- /See:/ 'newHadoopJarStepConfig' smart constructor.
data HadoopJarStepConfig = HadoopJarStepConfig'
  { -- | A list of command line arguments passed to the JAR file\'s main function
    -- when executed.
    args :: Core.Maybe [Core.Text],
    -- | A list of Java properties that are set when the step runs. You can use
    -- these properties to pass key-value pairs to your main function.
    properties :: Core.Maybe [KeyValue],
    -- | The name of the main class in the specified Java file. If not specified,
    -- the JAR file should specify a Main-Class in its manifest file.
    mainClass :: Core.Maybe Core.Text,
    -- | A path to a JAR file run during the step.
    jar :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'HadoopJarStepConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'args', 'hadoopJarStepConfig_args' - A list of command line arguments passed to the JAR file\'s main function
-- when executed.
--
-- 'properties', 'hadoopJarStepConfig_properties' - A list of Java properties that are set when the step runs. You can use
-- these properties to pass key-value pairs to your main function.
--
-- 'mainClass', 'hadoopJarStepConfig_mainClass' - The name of the main class in the specified Java file. If not specified,
-- the JAR file should specify a Main-Class in its manifest file.
--
-- 'jar', 'hadoopJarStepConfig_jar' - A path to a JAR file run during the step.
newHadoopJarStepConfig ::
  -- | 'jar'
  Core.Text ->
  HadoopJarStepConfig
newHadoopJarStepConfig pJar_ =
  HadoopJarStepConfig'
    { args = Core.Nothing,
      properties = Core.Nothing,
      mainClass = Core.Nothing,
      jar = pJar_
    }

-- | A list of command line arguments passed to the JAR file\'s main function
-- when executed.
hadoopJarStepConfig_args :: Lens.Lens' HadoopJarStepConfig (Core.Maybe [Core.Text])
hadoopJarStepConfig_args = Lens.lens (\HadoopJarStepConfig' {args} -> args) (\s@HadoopJarStepConfig' {} a -> s {args = a} :: HadoopJarStepConfig) Core.. Lens.mapping Lens._Coerce

-- | A list of Java properties that are set when the step runs. You can use
-- these properties to pass key-value pairs to your main function.
hadoopJarStepConfig_properties :: Lens.Lens' HadoopJarStepConfig (Core.Maybe [KeyValue])
hadoopJarStepConfig_properties = Lens.lens (\HadoopJarStepConfig' {properties} -> properties) (\s@HadoopJarStepConfig' {} a -> s {properties = a} :: HadoopJarStepConfig) Core.. Lens.mapping Lens._Coerce

-- | The name of the main class in the specified Java file. If not specified,
-- the JAR file should specify a Main-Class in its manifest file.
hadoopJarStepConfig_mainClass :: Lens.Lens' HadoopJarStepConfig (Core.Maybe Core.Text)
hadoopJarStepConfig_mainClass = Lens.lens (\HadoopJarStepConfig' {mainClass} -> mainClass) (\s@HadoopJarStepConfig' {} a -> s {mainClass = a} :: HadoopJarStepConfig)

-- | A path to a JAR file run during the step.
hadoopJarStepConfig_jar :: Lens.Lens' HadoopJarStepConfig Core.Text
hadoopJarStepConfig_jar = Lens.lens (\HadoopJarStepConfig' {jar} -> jar) (\s@HadoopJarStepConfig' {} a -> s {jar = a} :: HadoopJarStepConfig)

instance Core.Hashable HadoopJarStepConfig

instance Core.NFData HadoopJarStepConfig

instance Core.ToJSON HadoopJarStepConfig where
  toJSON HadoopJarStepConfig' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Args" Core..=) Core.<$> args,
            ("Properties" Core..=) Core.<$> properties,
            ("MainClass" Core..=) Core.<$> mainClass,
            Core.Just ("Jar" Core..= jar)
          ]
      )
