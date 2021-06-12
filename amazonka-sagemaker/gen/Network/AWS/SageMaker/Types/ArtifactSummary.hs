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
-- Module      : Network.AWS.SageMaker.Types.ArtifactSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ArtifactSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.ArtifactSource

-- | Lists a summary of the properties of an artifact. An artifact represents
-- a URI addressable object or data. Some examples are a dataset and a
-- model.
--
-- /See:/ 'newArtifactSummary' smart constructor.
data ArtifactSummary = ArtifactSummary'
  { -- | When the artifact was created.
    creationTime :: Core.Maybe Core.POSIX,
    -- | The name of the artifact.
    artifactName :: Core.Maybe Core.Text,
    -- | The type of the artifact.
    artifactType :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) of the artifact.
    artifactArn :: Core.Maybe Core.Text,
    -- | The source of the artifact.
    source :: Core.Maybe ArtifactSource,
    -- | When the artifact was last modified.
    lastModifiedTime :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ArtifactSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'artifactSummary_creationTime' - When the artifact was created.
--
-- 'artifactName', 'artifactSummary_artifactName' - The name of the artifact.
--
-- 'artifactType', 'artifactSummary_artifactType' - The type of the artifact.
--
-- 'artifactArn', 'artifactSummary_artifactArn' - The Amazon Resource Name (ARN) of the artifact.
--
-- 'source', 'artifactSummary_source' - The source of the artifact.
--
-- 'lastModifiedTime', 'artifactSummary_lastModifiedTime' - When the artifact was last modified.
newArtifactSummary ::
  ArtifactSummary
newArtifactSummary =
  ArtifactSummary'
    { creationTime = Core.Nothing,
      artifactName = Core.Nothing,
      artifactType = Core.Nothing,
      artifactArn = Core.Nothing,
      source = Core.Nothing,
      lastModifiedTime = Core.Nothing
    }

-- | When the artifact was created.
artifactSummary_creationTime :: Lens.Lens' ArtifactSummary (Core.Maybe Core.UTCTime)
artifactSummary_creationTime = Lens.lens (\ArtifactSummary' {creationTime} -> creationTime) (\s@ArtifactSummary' {} a -> s {creationTime = a} :: ArtifactSummary) Core.. Lens.mapping Core._Time

-- | The name of the artifact.
artifactSummary_artifactName :: Lens.Lens' ArtifactSummary (Core.Maybe Core.Text)
artifactSummary_artifactName = Lens.lens (\ArtifactSummary' {artifactName} -> artifactName) (\s@ArtifactSummary' {} a -> s {artifactName = a} :: ArtifactSummary)

-- | The type of the artifact.
artifactSummary_artifactType :: Lens.Lens' ArtifactSummary (Core.Maybe Core.Text)
artifactSummary_artifactType = Lens.lens (\ArtifactSummary' {artifactType} -> artifactType) (\s@ArtifactSummary' {} a -> s {artifactType = a} :: ArtifactSummary)

-- | The Amazon Resource Name (ARN) of the artifact.
artifactSummary_artifactArn :: Lens.Lens' ArtifactSummary (Core.Maybe Core.Text)
artifactSummary_artifactArn = Lens.lens (\ArtifactSummary' {artifactArn} -> artifactArn) (\s@ArtifactSummary' {} a -> s {artifactArn = a} :: ArtifactSummary)

-- | The source of the artifact.
artifactSummary_source :: Lens.Lens' ArtifactSummary (Core.Maybe ArtifactSource)
artifactSummary_source = Lens.lens (\ArtifactSummary' {source} -> source) (\s@ArtifactSummary' {} a -> s {source = a} :: ArtifactSummary)

-- | When the artifact was last modified.
artifactSummary_lastModifiedTime :: Lens.Lens' ArtifactSummary (Core.Maybe Core.UTCTime)
artifactSummary_lastModifiedTime = Lens.lens (\ArtifactSummary' {lastModifiedTime} -> lastModifiedTime) (\s@ArtifactSummary' {} a -> s {lastModifiedTime = a} :: ArtifactSummary) Core.. Lens.mapping Core._Time

instance Core.FromJSON ArtifactSummary where
  parseJSON =
    Core.withObject
      "ArtifactSummary"
      ( \x ->
          ArtifactSummary'
            Core.<$> (x Core..:? "CreationTime")
            Core.<*> (x Core..:? "ArtifactName")
            Core.<*> (x Core..:? "ArtifactType")
            Core.<*> (x Core..:? "ArtifactArn")
            Core.<*> (x Core..:? "Source")
            Core.<*> (x Core..:? "LastModifiedTime")
      )

instance Core.Hashable ArtifactSummary

instance Core.NFData ArtifactSummary
