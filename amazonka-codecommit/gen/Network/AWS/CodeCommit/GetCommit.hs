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
-- Module      : Network.AWS.CodeCommit.GetCommit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a commit, including commit message and
-- committer information.
module Network.AWS.CodeCommit.GetCommit
  ( -- * Creating a Request
    GetCommit (..),
    newGetCommit,

    -- * Request Lenses
    getCommit_repositoryName,
    getCommit_commitId,

    -- * Destructuring the Response
    GetCommitResponse (..),
    newGetCommitResponse,

    -- * Response Lenses
    getCommitResponse_httpStatus,
    getCommitResponse_commit,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a get commit operation.
--
-- /See:/ 'newGetCommit' smart constructor.
data GetCommit = GetCommit'
  { -- | The name of the repository to which the commit was made.
    repositoryName :: Core.Text,
    -- | The commit ID. Commit IDs are the full SHA ID of the commit.
    commitId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetCommit' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryName', 'getCommit_repositoryName' - The name of the repository to which the commit was made.
--
-- 'commitId', 'getCommit_commitId' - The commit ID. Commit IDs are the full SHA ID of the commit.
newGetCommit ::
  -- | 'repositoryName'
  Core.Text ->
  -- | 'commitId'
  Core.Text ->
  GetCommit
newGetCommit pRepositoryName_ pCommitId_ =
  GetCommit'
    { repositoryName = pRepositoryName_,
      commitId = pCommitId_
    }

-- | The name of the repository to which the commit was made.
getCommit_repositoryName :: Lens.Lens' GetCommit Core.Text
getCommit_repositoryName = Lens.lens (\GetCommit' {repositoryName} -> repositoryName) (\s@GetCommit' {} a -> s {repositoryName = a} :: GetCommit)

-- | The commit ID. Commit IDs are the full SHA ID of the commit.
getCommit_commitId :: Lens.Lens' GetCommit Core.Text
getCommit_commitId = Lens.lens (\GetCommit' {commitId} -> commitId) (\s@GetCommit' {} a -> s {commitId = a} :: GetCommit)

instance Core.AWSRequest GetCommit where
  type AWSResponse GetCommit = GetCommitResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCommitResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..:> "commit")
      )

instance Core.Hashable GetCommit

instance Core.NFData GetCommit

instance Core.ToHeaders GetCommit where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("CodeCommit_20150413.GetCommit" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetCommit where
  toJSON GetCommit' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("repositoryName" Core..= repositoryName),
            Core.Just ("commitId" Core..= commitId)
          ]
      )

instance Core.ToPath GetCommit where
  toPath = Core.const "/"

instance Core.ToQuery GetCommit where
  toQuery = Core.const Core.mempty

-- | Represents the output of a get commit operation.
--
-- /See:/ 'newGetCommitResponse' smart constructor.
data GetCommitResponse = GetCommitResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A commit data type object that contains information about the specified
    -- commit.
    commit :: Commit
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetCommitResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getCommitResponse_httpStatus' - The response's http status code.
--
-- 'commit', 'getCommitResponse_commit' - A commit data type object that contains information about the specified
-- commit.
newGetCommitResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'commit'
  Commit ->
  GetCommitResponse
newGetCommitResponse pHttpStatus_ pCommit_ =
  GetCommitResponse'
    { httpStatus = pHttpStatus_,
      commit = pCommit_
    }

-- | The response's http status code.
getCommitResponse_httpStatus :: Lens.Lens' GetCommitResponse Core.Int
getCommitResponse_httpStatus = Lens.lens (\GetCommitResponse' {httpStatus} -> httpStatus) (\s@GetCommitResponse' {} a -> s {httpStatus = a} :: GetCommitResponse)

-- | A commit data type object that contains information about the specified
-- commit.
getCommitResponse_commit :: Lens.Lens' GetCommitResponse Commit
getCommitResponse_commit = Lens.lens (\GetCommitResponse' {commit} -> commit) (\s@GetCommitResponse' {} a -> s {commit = a} :: GetCommitResponse)

instance Core.NFData GetCommitResponse
