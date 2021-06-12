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
-- Module      : Network.AWS.CodeBuild.BatchGetProjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more build projects.
module Network.AWS.CodeBuild.BatchGetProjects
  ( -- * Creating a Request
    BatchGetProjects (..),
    newBatchGetProjects,

    -- * Request Lenses
    batchGetProjects_names,

    -- * Destructuring the Response
    BatchGetProjectsResponse (..),
    newBatchGetProjectsResponse,

    -- * Response Lenses
    batchGetProjectsResponse_projects,
    batchGetProjectsResponse_projectsNotFound,
    batchGetProjectsResponse_httpStatus,
  )
where

import Network.AWS.CodeBuild.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchGetProjects' smart constructor.
data BatchGetProjects = BatchGetProjects'
  { -- | The names or ARNs of the build projects. To get information about a
    -- project shared with your AWS account, its ARN must be specified. You
    -- cannot specify a shared project using its name.
    names :: Core.NonEmpty Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchGetProjects' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'names', 'batchGetProjects_names' - The names or ARNs of the build projects. To get information about a
-- project shared with your AWS account, its ARN must be specified. You
-- cannot specify a shared project using its name.
newBatchGetProjects ::
  -- | 'names'
  Core.NonEmpty Core.Text ->
  BatchGetProjects
newBatchGetProjects pNames_ =
  BatchGetProjects'
    { names =
        Lens._Coerce Lens.# pNames_
    }

-- | The names or ARNs of the build projects. To get information about a
-- project shared with your AWS account, its ARN must be specified. You
-- cannot specify a shared project using its name.
batchGetProjects_names :: Lens.Lens' BatchGetProjects (Core.NonEmpty Core.Text)
batchGetProjects_names = Lens.lens (\BatchGetProjects' {names} -> names) (\s@BatchGetProjects' {} a -> s {names = a} :: BatchGetProjects) Core.. Lens._Coerce

instance Core.AWSRequest BatchGetProjects where
  type
    AWSResponse BatchGetProjects =
      BatchGetProjectsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetProjectsResponse'
            Core.<$> (x Core..?> "projects" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "projectsNotFound")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable BatchGetProjects

instance Core.NFData BatchGetProjects

instance Core.ToHeaders BatchGetProjects where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeBuild_20161006.BatchGetProjects" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON BatchGetProjects where
  toJSON BatchGetProjects' {..} =
    Core.object
      (Core.catMaybes [Core.Just ("names" Core..= names)])

instance Core.ToPath BatchGetProjects where
  toPath = Core.const "/"

instance Core.ToQuery BatchGetProjects where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newBatchGetProjectsResponse' smart constructor.
data BatchGetProjectsResponse = BatchGetProjectsResponse'
  { -- | Information about the requested build projects.
    projects :: Core.Maybe [Project],
    -- | The names of build projects for which information could not be found.
    projectsNotFound :: Core.Maybe (Core.NonEmpty Core.Text),
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchGetProjectsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projects', 'batchGetProjectsResponse_projects' - Information about the requested build projects.
--
-- 'projectsNotFound', 'batchGetProjectsResponse_projectsNotFound' - The names of build projects for which information could not be found.
--
-- 'httpStatus', 'batchGetProjectsResponse_httpStatus' - The response's http status code.
newBatchGetProjectsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  BatchGetProjectsResponse
newBatchGetProjectsResponse pHttpStatus_ =
  BatchGetProjectsResponse'
    { projects = Core.Nothing,
      projectsNotFound = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the requested build projects.
batchGetProjectsResponse_projects :: Lens.Lens' BatchGetProjectsResponse (Core.Maybe [Project])
batchGetProjectsResponse_projects = Lens.lens (\BatchGetProjectsResponse' {projects} -> projects) (\s@BatchGetProjectsResponse' {} a -> s {projects = a} :: BatchGetProjectsResponse) Core.. Lens.mapping Lens._Coerce

-- | The names of build projects for which information could not be found.
batchGetProjectsResponse_projectsNotFound :: Lens.Lens' BatchGetProjectsResponse (Core.Maybe (Core.NonEmpty Core.Text))
batchGetProjectsResponse_projectsNotFound = Lens.lens (\BatchGetProjectsResponse' {projectsNotFound} -> projectsNotFound) (\s@BatchGetProjectsResponse' {} a -> s {projectsNotFound = a} :: BatchGetProjectsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
batchGetProjectsResponse_httpStatus :: Lens.Lens' BatchGetProjectsResponse Core.Int
batchGetProjectsResponse_httpStatus = Lens.lens (\BatchGetProjectsResponse' {httpStatus} -> httpStatus) (\s@BatchGetProjectsResponse' {} a -> s {httpStatus = a} :: BatchGetProjectsResponse)

instance Core.NFData BatchGetProjectsResponse
