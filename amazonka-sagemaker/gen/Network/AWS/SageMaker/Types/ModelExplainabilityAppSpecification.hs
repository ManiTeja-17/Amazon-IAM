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
-- Module      : Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Docker container image configuration object for the model explainability
-- job.
--
-- /See:/ 'newModelExplainabilityAppSpecification' smart constructor.
data ModelExplainabilityAppSpecification = ModelExplainabilityAppSpecification'
  { -- | Sets the environment variables in the Docker container.
    environment :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | The container image to be run by the model explainability job.
    imageUri :: Core.Text,
    -- | JSON formatted S3 file that defines explainability parameters. For more
    -- information on this JSON configuration file, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters>.
    configUri :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ModelExplainabilityAppSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environment', 'modelExplainabilityAppSpecification_environment' - Sets the environment variables in the Docker container.
--
-- 'imageUri', 'modelExplainabilityAppSpecification_imageUri' - The container image to be run by the model explainability job.
--
-- 'configUri', 'modelExplainabilityAppSpecification_configUri' - JSON formatted S3 file that defines explainability parameters. For more
-- information on this JSON configuration file, see
-- <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters>.
newModelExplainabilityAppSpecification ::
  -- | 'imageUri'
  Core.Text ->
  -- | 'configUri'
  Core.Text ->
  ModelExplainabilityAppSpecification
newModelExplainabilityAppSpecification
  pImageUri_
  pConfigUri_ =
    ModelExplainabilityAppSpecification'
      { environment =
          Core.Nothing,
        imageUri = pImageUri_,
        configUri = pConfigUri_
      }

-- | Sets the environment variables in the Docker container.
modelExplainabilityAppSpecification_environment :: Lens.Lens' ModelExplainabilityAppSpecification (Core.Maybe (Core.HashMap Core.Text Core.Text))
modelExplainabilityAppSpecification_environment = Lens.lens (\ModelExplainabilityAppSpecification' {environment} -> environment) (\s@ModelExplainabilityAppSpecification' {} a -> s {environment = a} :: ModelExplainabilityAppSpecification) Core.. Lens.mapping Lens._Coerce

-- | The container image to be run by the model explainability job.
modelExplainabilityAppSpecification_imageUri :: Lens.Lens' ModelExplainabilityAppSpecification Core.Text
modelExplainabilityAppSpecification_imageUri = Lens.lens (\ModelExplainabilityAppSpecification' {imageUri} -> imageUri) (\s@ModelExplainabilityAppSpecification' {} a -> s {imageUri = a} :: ModelExplainabilityAppSpecification)

-- | JSON formatted S3 file that defines explainability parameters. For more
-- information on this JSON configuration file, see
-- <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters>.
modelExplainabilityAppSpecification_configUri :: Lens.Lens' ModelExplainabilityAppSpecification Core.Text
modelExplainabilityAppSpecification_configUri = Lens.lens (\ModelExplainabilityAppSpecification' {configUri} -> configUri) (\s@ModelExplainabilityAppSpecification' {} a -> s {configUri = a} :: ModelExplainabilityAppSpecification)

instance
  Core.FromJSON
    ModelExplainabilityAppSpecification
  where
  parseJSON =
    Core.withObject
      "ModelExplainabilityAppSpecification"
      ( \x ->
          ModelExplainabilityAppSpecification'
            Core.<$> (x Core..:? "Environment" Core..!= Core.mempty)
            Core.<*> (x Core..: "ImageUri")
            Core.<*> (x Core..: "ConfigUri")
      )

instance
  Core.Hashable
    ModelExplainabilityAppSpecification

instance
  Core.NFData
    ModelExplainabilityAppSpecification

instance
  Core.ToJSON
    ModelExplainabilityAppSpecification
  where
  toJSON ModelExplainabilityAppSpecification' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Environment" Core..=) Core.<$> environment,
            Core.Just ("ImageUri" Core..= imageUri),
            Core.Just ("ConfigUri" Core..= configUri)
          ]
      )
