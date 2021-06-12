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
-- Module      : Network.AWS.ElasticSearch.Types.DomainPackageDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DomainPackageDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types.DomainPackageStatus
import Network.AWS.ElasticSearch.Types.ErrorDetails
import Network.AWS.ElasticSearch.Types.PackageType
import qualified Network.AWS.Lens as Lens

-- | Information on a package that is associated with a domain.
--
-- /See:/ 'newDomainPackageDetails' smart constructor.
data DomainPackageDetails = DomainPackageDetails'
  { -- | State of the association. Values are
    -- ASSOCIATING\/ASSOCIATION_FAILED\/ACTIVE\/DISSOCIATING\/DISSOCIATION_FAILED.
    domainPackageStatus :: Core.Maybe DomainPackageStatus,
    packageVersion :: Core.Maybe Core.Text,
    -- | User specified name of the package.
    packageName :: Core.Maybe Core.Text,
    -- | Timestamp of the most-recent update to the association status.
    lastUpdated :: Core.Maybe Core.POSIX,
    -- | Internal ID of the package.
    packageID :: Core.Maybe Core.Text,
    -- | Name of the domain you\'ve associated a package with.
    domainName :: Core.Maybe Core.Text,
    -- | The relative path on Amazon ES nodes, which can be used as synonym_path
    -- when the package is synonym file.
    referencePath :: Core.Maybe Core.Text,
    -- | Currently supports only TXT-DICTIONARY.
    packageType :: Core.Maybe PackageType,
    -- | Additional information if the package is in an error state. Null
    -- otherwise.
    errorDetails :: Core.Maybe ErrorDetails
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DomainPackageDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainPackageStatus', 'domainPackageDetails_domainPackageStatus' - State of the association. Values are
-- ASSOCIATING\/ASSOCIATION_FAILED\/ACTIVE\/DISSOCIATING\/DISSOCIATION_FAILED.
--
-- 'packageVersion', 'domainPackageDetails_packageVersion' - Undocumented member.
--
-- 'packageName', 'domainPackageDetails_packageName' - User specified name of the package.
--
-- 'lastUpdated', 'domainPackageDetails_lastUpdated' - Timestamp of the most-recent update to the association status.
--
-- 'packageID', 'domainPackageDetails_packageID' - Internal ID of the package.
--
-- 'domainName', 'domainPackageDetails_domainName' - Name of the domain you\'ve associated a package with.
--
-- 'referencePath', 'domainPackageDetails_referencePath' - The relative path on Amazon ES nodes, which can be used as synonym_path
-- when the package is synonym file.
--
-- 'packageType', 'domainPackageDetails_packageType' - Currently supports only TXT-DICTIONARY.
--
-- 'errorDetails', 'domainPackageDetails_errorDetails' - Additional information if the package is in an error state. Null
-- otherwise.
newDomainPackageDetails ::
  DomainPackageDetails
newDomainPackageDetails =
  DomainPackageDetails'
    { domainPackageStatus =
        Core.Nothing,
      packageVersion = Core.Nothing,
      packageName = Core.Nothing,
      lastUpdated = Core.Nothing,
      packageID = Core.Nothing,
      domainName = Core.Nothing,
      referencePath = Core.Nothing,
      packageType = Core.Nothing,
      errorDetails = Core.Nothing
    }

-- | State of the association. Values are
-- ASSOCIATING\/ASSOCIATION_FAILED\/ACTIVE\/DISSOCIATING\/DISSOCIATION_FAILED.
domainPackageDetails_domainPackageStatus :: Lens.Lens' DomainPackageDetails (Core.Maybe DomainPackageStatus)
domainPackageDetails_domainPackageStatus = Lens.lens (\DomainPackageDetails' {domainPackageStatus} -> domainPackageStatus) (\s@DomainPackageDetails' {} a -> s {domainPackageStatus = a} :: DomainPackageDetails)

-- | Undocumented member.
domainPackageDetails_packageVersion :: Lens.Lens' DomainPackageDetails (Core.Maybe Core.Text)
domainPackageDetails_packageVersion = Lens.lens (\DomainPackageDetails' {packageVersion} -> packageVersion) (\s@DomainPackageDetails' {} a -> s {packageVersion = a} :: DomainPackageDetails)

-- | User specified name of the package.
domainPackageDetails_packageName :: Lens.Lens' DomainPackageDetails (Core.Maybe Core.Text)
domainPackageDetails_packageName = Lens.lens (\DomainPackageDetails' {packageName} -> packageName) (\s@DomainPackageDetails' {} a -> s {packageName = a} :: DomainPackageDetails)

-- | Timestamp of the most-recent update to the association status.
domainPackageDetails_lastUpdated :: Lens.Lens' DomainPackageDetails (Core.Maybe Core.UTCTime)
domainPackageDetails_lastUpdated = Lens.lens (\DomainPackageDetails' {lastUpdated} -> lastUpdated) (\s@DomainPackageDetails' {} a -> s {lastUpdated = a} :: DomainPackageDetails) Core.. Lens.mapping Core._Time

-- | Internal ID of the package.
domainPackageDetails_packageID :: Lens.Lens' DomainPackageDetails (Core.Maybe Core.Text)
domainPackageDetails_packageID = Lens.lens (\DomainPackageDetails' {packageID} -> packageID) (\s@DomainPackageDetails' {} a -> s {packageID = a} :: DomainPackageDetails)

-- | Name of the domain you\'ve associated a package with.
domainPackageDetails_domainName :: Lens.Lens' DomainPackageDetails (Core.Maybe Core.Text)
domainPackageDetails_domainName = Lens.lens (\DomainPackageDetails' {domainName} -> domainName) (\s@DomainPackageDetails' {} a -> s {domainName = a} :: DomainPackageDetails)

-- | The relative path on Amazon ES nodes, which can be used as synonym_path
-- when the package is synonym file.
domainPackageDetails_referencePath :: Lens.Lens' DomainPackageDetails (Core.Maybe Core.Text)
domainPackageDetails_referencePath = Lens.lens (\DomainPackageDetails' {referencePath} -> referencePath) (\s@DomainPackageDetails' {} a -> s {referencePath = a} :: DomainPackageDetails)

-- | Currently supports only TXT-DICTIONARY.
domainPackageDetails_packageType :: Lens.Lens' DomainPackageDetails (Core.Maybe PackageType)
domainPackageDetails_packageType = Lens.lens (\DomainPackageDetails' {packageType} -> packageType) (\s@DomainPackageDetails' {} a -> s {packageType = a} :: DomainPackageDetails)

-- | Additional information if the package is in an error state. Null
-- otherwise.
domainPackageDetails_errorDetails :: Lens.Lens' DomainPackageDetails (Core.Maybe ErrorDetails)
domainPackageDetails_errorDetails = Lens.lens (\DomainPackageDetails' {errorDetails} -> errorDetails) (\s@DomainPackageDetails' {} a -> s {errorDetails = a} :: DomainPackageDetails)

instance Core.FromJSON DomainPackageDetails where
  parseJSON =
    Core.withObject
      "DomainPackageDetails"
      ( \x ->
          DomainPackageDetails'
            Core.<$> (x Core..:? "DomainPackageStatus")
            Core.<*> (x Core..:? "PackageVersion")
            Core.<*> (x Core..:? "PackageName")
            Core.<*> (x Core..:? "LastUpdated")
            Core.<*> (x Core..:? "PackageID")
            Core.<*> (x Core..:? "DomainName")
            Core.<*> (x Core..:? "ReferencePath")
            Core.<*> (x Core..:? "PackageType")
            Core.<*> (x Core..:? "ErrorDetails")
      )

instance Core.Hashable DomainPackageDetails

instance Core.NFData DomainPackageDetails
