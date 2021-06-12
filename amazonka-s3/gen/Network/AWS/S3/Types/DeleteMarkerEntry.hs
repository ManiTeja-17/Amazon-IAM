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
-- Module      : Network.AWS.S3.Types.DeleteMarkerEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.DeleteMarkerEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Owner

-- | Information about the delete marker.
--
-- /See:/ 'newDeleteMarkerEntry' smart constructor.
data DeleteMarkerEntry = DeleteMarkerEntry'
  { -- | The object key.
    key :: Core.Maybe ObjectKey,
    -- | Specifies whether the object is (true) or is not (false) the latest
    -- version of an object.
    isLatest :: Core.Maybe Core.Bool,
    -- | Version ID of an object.
    versionId :: Core.Maybe ObjectVersionId,
    -- | The account that created the delete marker.>
    owner :: Core.Maybe Owner,
    -- | Date and time the object was last modified.
    lastModified :: Core.Maybe Core.ISO8601
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteMarkerEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'deleteMarkerEntry_key' - The object key.
--
-- 'isLatest', 'deleteMarkerEntry_isLatest' - Specifies whether the object is (true) or is not (false) the latest
-- version of an object.
--
-- 'versionId', 'deleteMarkerEntry_versionId' - Version ID of an object.
--
-- 'owner', 'deleteMarkerEntry_owner' - The account that created the delete marker.>
--
-- 'lastModified', 'deleteMarkerEntry_lastModified' - Date and time the object was last modified.
newDeleteMarkerEntry ::
  DeleteMarkerEntry
newDeleteMarkerEntry =
  DeleteMarkerEntry'
    { key = Core.Nothing,
      isLatest = Core.Nothing,
      versionId = Core.Nothing,
      owner = Core.Nothing,
      lastModified = Core.Nothing
    }

-- | The object key.
deleteMarkerEntry_key :: Lens.Lens' DeleteMarkerEntry (Core.Maybe ObjectKey)
deleteMarkerEntry_key = Lens.lens (\DeleteMarkerEntry' {key} -> key) (\s@DeleteMarkerEntry' {} a -> s {key = a} :: DeleteMarkerEntry)

-- | Specifies whether the object is (true) or is not (false) the latest
-- version of an object.
deleteMarkerEntry_isLatest :: Lens.Lens' DeleteMarkerEntry (Core.Maybe Core.Bool)
deleteMarkerEntry_isLatest = Lens.lens (\DeleteMarkerEntry' {isLatest} -> isLatest) (\s@DeleteMarkerEntry' {} a -> s {isLatest = a} :: DeleteMarkerEntry)

-- | Version ID of an object.
deleteMarkerEntry_versionId :: Lens.Lens' DeleteMarkerEntry (Core.Maybe ObjectVersionId)
deleteMarkerEntry_versionId = Lens.lens (\DeleteMarkerEntry' {versionId} -> versionId) (\s@DeleteMarkerEntry' {} a -> s {versionId = a} :: DeleteMarkerEntry)

-- | The account that created the delete marker.>
deleteMarkerEntry_owner :: Lens.Lens' DeleteMarkerEntry (Core.Maybe Owner)
deleteMarkerEntry_owner = Lens.lens (\DeleteMarkerEntry' {owner} -> owner) (\s@DeleteMarkerEntry' {} a -> s {owner = a} :: DeleteMarkerEntry)

-- | Date and time the object was last modified.
deleteMarkerEntry_lastModified :: Lens.Lens' DeleteMarkerEntry (Core.Maybe Core.UTCTime)
deleteMarkerEntry_lastModified = Lens.lens (\DeleteMarkerEntry' {lastModified} -> lastModified) (\s@DeleteMarkerEntry' {} a -> s {lastModified = a} :: DeleteMarkerEntry) Core.. Lens.mapping Core._Time

instance Core.FromXML DeleteMarkerEntry where
  parseXML x =
    DeleteMarkerEntry'
      Core.<$> (x Core..@? "Key")
      Core.<*> (x Core..@? "IsLatest")
      Core.<*> (x Core..@? "VersionId")
      Core.<*> (x Core..@? "Owner")
      Core.<*> (x Core..@? "LastModified")

instance Core.Hashable DeleteMarkerEntry

instance Core.NFData DeleteMarkerEntry
