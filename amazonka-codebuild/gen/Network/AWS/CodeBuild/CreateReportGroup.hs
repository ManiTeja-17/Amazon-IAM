{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.CreateReportGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a report group. A report group contains a collection of reports.
module Network.AWS.CodeBuild.CreateReportGroup
  ( -- * Creating a Request
    CreateReportGroup (..),
    newCreateReportGroup,

    -- * Request Lenses
    createReportGroup_tags,
    createReportGroup_name,
    createReportGroup_type,
    createReportGroup_exportConfig,

    -- * Destructuring the Response
    CreateReportGroupResponse (..),
    newCreateReportGroupResponse,

    -- * Response Lenses
    createReportGroupResponse_reportGroup,
    createReportGroupResponse_httpStatus,
  )
where

import Network.AWS.CodeBuild.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateReportGroup' smart constructor.
data CreateReportGroup = CreateReportGroup'
  { -- | A list of tag key and value pairs associated with this report group.
    --
    -- These tags are available for use by AWS services that support AWS
    -- CodeBuild report group tags.
    tags :: Core.Maybe [Tag],
    -- | The name of the report group.
    name :: Core.Text,
    -- | The type of report group.
    type' :: ReportType,
    -- | A @ReportExportConfig@ object that contains information about where the
    -- report group test results are exported.
    exportConfig :: ReportExportConfig
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateReportGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createReportGroup_tags' - A list of tag key and value pairs associated with this report group.
--
-- These tags are available for use by AWS services that support AWS
-- CodeBuild report group tags.
--
-- 'name', 'createReportGroup_name' - The name of the report group.
--
-- 'type'', 'createReportGroup_type' - The type of report group.
--
-- 'exportConfig', 'createReportGroup_exportConfig' - A @ReportExportConfig@ object that contains information about where the
-- report group test results are exported.
newCreateReportGroup ::
  -- | 'name'
  Core.Text ->
  -- | 'type''
  ReportType ->
  -- | 'exportConfig'
  ReportExportConfig ->
  CreateReportGroup
newCreateReportGroup pName_ pType_ pExportConfig_ =
  CreateReportGroup'
    { tags = Core.Nothing,
      name = pName_,
      type' = pType_,
      exportConfig = pExportConfig_
    }

-- | A list of tag key and value pairs associated with this report group.
--
-- These tags are available for use by AWS services that support AWS
-- CodeBuild report group tags.
createReportGroup_tags :: Lens.Lens' CreateReportGroup (Core.Maybe [Tag])
createReportGroup_tags = Lens.lens (\CreateReportGroup' {tags} -> tags) (\s@CreateReportGroup' {} a -> s {tags = a} :: CreateReportGroup) Core.. Lens.mapping Lens._Coerce

-- | The name of the report group.
createReportGroup_name :: Lens.Lens' CreateReportGroup Core.Text
createReportGroup_name = Lens.lens (\CreateReportGroup' {name} -> name) (\s@CreateReportGroup' {} a -> s {name = a} :: CreateReportGroup)

-- | The type of report group.
createReportGroup_type :: Lens.Lens' CreateReportGroup ReportType
createReportGroup_type = Lens.lens (\CreateReportGroup' {type'} -> type') (\s@CreateReportGroup' {} a -> s {type' = a} :: CreateReportGroup)

-- | A @ReportExportConfig@ object that contains information about where the
-- report group test results are exported.
createReportGroup_exportConfig :: Lens.Lens' CreateReportGroup ReportExportConfig
createReportGroup_exportConfig = Lens.lens (\CreateReportGroup' {exportConfig} -> exportConfig) (\s@CreateReportGroup' {} a -> s {exportConfig = a} :: CreateReportGroup)

instance Core.AWSRequest CreateReportGroup where
  type
    AWSResponse CreateReportGroup =
      CreateReportGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateReportGroupResponse'
            Core.<$> (x Core..?> "reportGroup")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateReportGroup

instance Core.NFData CreateReportGroup

instance Core.ToHeaders CreateReportGroup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeBuild_20161006.CreateReportGroup" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateReportGroup where
  toJSON CreateReportGroup' {..} =
    Core.object
      ( Core.catMaybes
          [ ("tags" Core..=) Core.<$> tags,
            Core.Just ("name" Core..= name),
            Core.Just ("type" Core..= type'),
            Core.Just ("exportConfig" Core..= exportConfig)
          ]
      )

instance Core.ToPath CreateReportGroup where
  toPath = Core.const "/"

instance Core.ToQuery CreateReportGroup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateReportGroupResponse' smart constructor.
data CreateReportGroupResponse = CreateReportGroupResponse'
  { -- | Information about the report group that was created.
    reportGroup :: Core.Maybe ReportGroup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateReportGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reportGroup', 'createReportGroupResponse_reportGroup' - Information about the report group that was created.
--
-- 'httpStatus', 'createReportGroupResponse_httpStatus' - The response's http status code.
newCreateReportGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateReportGroupResponse
newCreateReportGroupResponse pHttpStatus_ =
  CreateReportGroupResponse'
    { reportGroup =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the report group that was created.
createReportGroupResponse_reportGroup :: Lens.Lens' CreateReportGroupResponse (Core.Maybe ReportGroup)
createReportGroupResponse_reportGroup = Lens.lens (\CreateReportGroupResponse' {reportGroup} -> reportGroup) (\s@CreateReportGroupResponse' {} a -> s {reportGroup = a} :: CreateReportGroupResponse)

-- | The response's http status code.
createReportGroupResponse_httpStatus :: Lens.Lens' CreateReportGroupResponse Core.Int
createReportGroupResponse_httpStatus = Lens.lens (\CreateReportGroupResponse' {httpStatus} -> httpStatus) (\s@CreateReportGroupResponse' {} a -> s {httpStatus = a} :: CreateReportGroupResponse)

instance Core.NFData CreateReportGroupResponse
