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
-- Module      : Network.AWS.Pinpoint.Types.SegmentResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SegmentResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentGroupList
import Network.AWS.Pinpoint.Types.SegmentImportResource
import Network.AWS.Pinpoint.Types.SegmentType

-- | Provides information about the configuration, dimension, and other
-- settings for a segment.
--
-- /See:/ 'newSegmentResponse' smart constructor.
data SegmentResponse = SegmentResponse'
  { -- | The date and time when the segment was last modified.
    lastModifiedDate :: Core.Maybe Core.Text,
    -- | A list of one or more segment groups that apply to the segment. Each
    -- segment group consists of zero or more base segments and the dimensions
    -- that are applied to those base segments.
    segmentGroups :: Core.Maybe SegmentGroupList,
    -- | The version number of the segment.
    version :: Core.Maybe Core.Int,
    -- | The name of the segment.
    name :: Core.Maybe Core.Text,
    -- | A string-to-string map of key-value pairs that identifies the tags that
    -- are associated with the segment. Each tag consists of a required tag key
    -- and an associated tag value.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | The dimension settings for the segment.
    dimensions :: Core.Maybe SegmentDimensions,
    -- | The settings for the import job that\'s associated with the segment.
    importDefinition :: Core.Maybe SegmentImportResource,
    -- | The segment type. Valid values are:
    --
    -- -   DIMENSIONAL - A dynamic segment, which is a segment that uses
    --     selection criteria that you specify and is based on endpoint data
    --     that\'s reported by your app. Dynamic segments can change over time.
    --
    -- -   IMPORT - A static segment, which is a segment that uses selection
    --     criteria that you specify and is based on endpoint definitions that
    --     you import from a file. Imported segments are static; they don\'t
    --     change over time.
    segmentType :: SegmentType,
    -- | The date and time when the segment was created.
    creationDate :: Core.Text,
    -- | The unique identifier for the segment.
    id :: Core.Text,
    -- | The Amazon Resource Name (ARN) of the segment.
    arn :: Core.Text,
    -- | The unique identifier for the application that the segment is associated
    -- with.
    applicationId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SegmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDate', 'segmentResponse_lastModifiedDate' - The date and time when the segment was last modified.
--
-- 'segmentGroups', 'segmentResponse_segmentGroups' - A list of one or more segment groups that apply to the segment. Each
-- segment group consists of zero or more base segments and the dimensions
-- that are applied to those base segments.
--
-- 'version', 'segmentResponse_version' - The version number of the segment.
--
-- 'name', 'segmentResponse_name' - The name of the segment.
--
-- 'tags', 'segmentResponse_tags' - A string-to-string map of key-value pairs that identifies the tags that
-- are associated with the segment. Each tag consists of a required tag key
-- and an associated tag value.
--
-- 'dimensions', 'segmentResponse_dimensions' - The dimension settings for the segment.
--
-- 'importDefinition', 'segmentResponse_importDefinition' - The settings for the import job that\'s associated with the segment.
--
-- 'segmentType', 'segmentResponse_segmentType' - The segment type. Valid values are:
--
-- -   DIMENSIONAL - A dynamic segment, which is a segment that uses
--     selection criteria that you specify and is based on endpoint data
--     that\'s reported by your app. Dynamic segments can change over time.
--
-- -   IMPORT - A static segment, which is a segment that uses selection
--     criteria that you specify and is based on endpoint definitions that
--     you import from a file. Imported segments are static; they don\'t
--     change over time.
--
-- 'creationDate', 'segmentResponse_creationDate' - The date and time when the segment was created.
--
-- 'id', 'segmentResponse_id' - The unique identifier for the segment.
--
-- 'arn', 'segmentResponse_arn' - The Amazon Resource Name (ARN) of the segment.
--
-- 'applicationId', 'segmentResponse_applicationId' - The unique identifier for the application that the segment is associated
-- with.
newSegmentResponse ::
  -- | 'segmentType'
  SegmentType ->
  -- | 'creationDate'
  Core.Text ->
  -- | 'id'
  Core.Text ->
  -- | 'arn'
  Core.Text ->
  -- | 'applicationId'
  Core.Text ->
  SegmentResponse
newSegmentResponse
  pSegmentType_
  pCreationDate_
  pId_
  pArn_
  pApplicationId_ =
    SegmentResponse'
      { lastModifiedDate = Core.Nothing,
        segmentGroups = Core.Nothing,
        version = Core.Nothing,
        name = Core.Nothing,
        tags = Core.Nothing,
        dimensions = Core.Nothing,
        importDefinition = Core.Nothing,
        segmentType = pSegmentType_,
        creationDate = pCreationDate_,
        id = pId_,
        arn = pArn_,
        applicationId = pApplicationId_
      }

-- | The date and time when the segment was last modified.
segmentResponse_lastModifiedDate :: Lens.Lens' SegmentResponse (Core.Maybe Core.Text)
segmentResponse_lastModifiedDate = Lens.lens (\SegmentResponse' {lastModifiedDate} -> lastModifiedDate) (\s@SegmentResponse' {} a -> s {lastModifiedDate = a} :: SegmentResponse)

-- | A list of one or more segment groups that apply to the segment. Each
-- segment group consists of zero or more base segments and the dimensions
-- that are applied to those base segments.
segmentResponse_segmentGroups :: Lens.Lens' SegmentResponse (Core.Maybe SegmentGroupList)
segmentResponse_segmentGroups = Lens.lens (\SegmentResponse' {segmentGroups} -> segmentGroups) (\s@SegmentResponse' {} a -> s {segmentGroups = a} :: SegmentResponse)

-- | The version number of the segment.
segmentResponse_version :: Lens.Lens' SegmentResponse (Core.Maybe Core.Int)
segmentResponse_version = Lens.lens (\SegmentResponse' {version} -> version) (\s@SegmentResponse' {} a -> s {version = a} :: SegmentResponse)

-- | The name of the segment.
segmentResponse_name :: Lens.Lens' SegmentResponse (Core.Maybe Core.Text)
segmentResponse_name = Lens.lens (\SegmentResponse' {name} -> name) (\s@SegmentResponse' {} a -> s {name = a} :: SegmentResponse)

-- | A string-to-string map of key-value pairs that identifies the tags that
-- are associated with the segment. Each tag consists of a required tag key
-- and an associated tag value.
segmentResponse_tags :: Lens.Lens' SegmentResponse (Core.Maybe (Core.HashMap Core.Text Core.Text))
segmentResponse_tags = Lens.lens (\SegmentResponse' {tags} -> tags) (\s@SegmentResponse' {} a -> s {tags = a} :: SegmentResponse) Core.. Lens.mapping Lens._Coerce

-- | The dimension settings for the segment.
segmentResponse_dimensions :: Lens.Lens' SegmentResponse (Core.Maybe SegmentDimensions)
segmentResponse_dimensions = Lens.lens (\SegmentResponse' {dimensions} -> dimensions) (\s@SegmentResponse' {} a -> s {dimensions = a} :: SegmentResponse)

-- | The settings for the import job that\'s associated with the segment.
segmentResponse_importDefinition :: Lens.Lens' SegmentResponse (Core.Maybe SegmentImportResource)
segmentResponse_importDefinition = Lens.lens (\SegmentResponse' {importDefinition} -> importDefinition) (\s@SegmentResponse' {} a -> s {importDefinition = a} :: SegmentResponse)

-- | The segment type. Valid values are:
--
-- -   DIMENSIONAL - A dynamic segment, which is a segment that uses
--     selection criteria that you specify and is based on endpoint data
--     that\'s reported by your app. Dynamic segments can change over time.
--
-- -   IMPORT - A static segment, which is a segment that uses selection
--     criteria that you specify and is based on endpoint definitions that
--     you import from a file. Imported segments are static; they don\'t
--     change over time.
segmentResponse_segmentType :: Lens.Lens' SegmentResponse SegmentType
segmentResponse_segmentType = Lens.lens (\SegmentResponse' {segmentType} -> segmentType) (\s@SegmentResponse' {} a -> s {segmentType = a} :: SegmentResponse)

-- | The date and time when the segment was created.
segmentResponse_creationDate :: Lens.Lens' SegmentResponse Core.Text
segmentResponse_creationDate = Lens.lens (\SegmentResponse' {creationDate} -> creationDate) (\s@SegmentResponse' {} a -> s {creationDate = a} :: SegmentResponse)

-- | The unique identifier for the segment.
segmentResponse_id :: Lens.Lens' SegmentResponse Core.Text
segmentResponse_id = Lens.lens (\SegmentResponse' {id} -> id) (\s@SegmentResponse' {} a -> s {id = a} :: SegmentResponse)

-- | The Amazon Resource Name (ARN) of the segment.
segmentResponse_arn :: Lens.Lens' SegmentResponse Core.Text
segmentResponse_arn = Lens.lens (\SegmentResponse' {arn} -> arn) (\s@SegmentResponse' {} a -> s {arn = a} :: SegmentResponse)

-- | The unique identifier for the application that the segment is associated
-- with.
segmentResponse_applicationId :: Lens.Lens' SegmentResponse Core.Text
segmentResponse_applicationId = Lens.lens (\SegmentResponse' {applicationId} -> applicationId) (\s@SegmentResponse' {} a -> s {applicationId = a} :: SegmentResponse)

instance Core.FromJSON SegmentResponse where
  parseJSON =
    Core.withObject
      "SegmentResponse"
      ( \x ->
          SegmentResponse'
            Core.<$> (x Core..:? "LastModifiedDate")
            Core.<*> (x Core..:? "SegmentGroups")
            Core.<*> (x Core..:? "Version")
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (x Core..:? "Dimensions")
            Core.<*> (x Core..:? "ImportDefinition")
            Core.<*> (x Core..: "SegmentType")
            Core.<*> (x Core..: "CreationDate")
            Core.<*> (x Core..: "Id")
            Core.<*> (x Core..: "Arn")
            Core.<*> (x Core..: "ApplicationId")
      )

instance Core.Hashable SegmentResponse

instance Core.NFData SegmentResponse
