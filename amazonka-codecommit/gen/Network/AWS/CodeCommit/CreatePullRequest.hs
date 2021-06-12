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
-- Module      : Network.AWS.CodeCommit.CreatePullRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pull request in the specified repository.
module Network.AWS.CodeCommit.CreatePullRequest
  ( -- * Creating a Request
    CreatePullRequest (..),
    newCreatePullRequest,

    -- * Request Lenses
    createPullRequest_description,
    createPullRequest_clientRequestToken,
    createPullRequest_title,
    createPullRequest_targets,

    -- * Destructuring the Response
    CreatePullRequestResponse (..),
    newCreatePullRequestResponse,

    -- * Response Lenses
    createPullRequestResponse_httpStatus,
    createPullRequestResponse_pullRequest,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreatePullRequest' smart constructor.
data CreatePullRequest = CreatePullRequest'
  { -- | A description of the pull request.
    description :: Core.Maybe Core.Text,
    -- | A unique, client-generated idempotency token that, when provided in a
    -- request, ensures the request cannot be repeated with a changed
    -- parameter. If a request is received with the same parameters and a token
    -- is included, the request returns information about the initial request
    -- that used that token.
    --
    -- The AWS SDKs prepopulate client request tokens. If you are using an AWS
    -- SDK, an idempotency token is created for you.
    clientRequestToken :: Core.Maybe Core.Text,
    -- | The title of the pull request. This title is used to identify the pull
    -- request to other users in the repository.
    title :: Core.Text,
    -- | The targets for the pull request, including the source of the code to be
    -- reviewed (the source branch) and the destination where the creator of
    -- the pull request intends the code to be merged after the pull request is
    -- closed (the destination branch).
    targets :: [Target]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreatePullRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createPullRequest_description' - A description of the pull request.
--
-- 'clientRequestToken', 'createPullRequest_clientRequestToken' - A unique, client-generated idempotency token that, when provided in a
-- request, ensures the request cannot be repeated with a changed
-- parameter. If a request is received with the same parameters and a token
-- is included, the request returns information about the initial request
-- that used that token.
--
-- The AWS SDKs prepopulate client request tokens. If you are using an AWS
-- SDK, an idempotency token is created for you.
--
-- 'title', 'createPullRequest_title' - The title of the pull request. This title is used to identify the pull
-- request to other users in the repository.
--
-- 'targets', 'createPullRequest_targets' - The targets for the pull request, including the source of the code to be
-- reviewed (the source branch) and the destination where the creator of
-- the pull request intends the code to be merged after the pull request is
-- closed (the destination branch).
newCreatePullRequest ::
  -- | 'title'
  Core.Text ->
  CreatePullRequest
newCreatePullRequest pTitle_ =
  CreatePullRequest'
    { description = Core.Nothing,
      clientRequestToken = Core.Nothing,
      title = pTitle_,
      targets = Core.mempty
    }

-- | A description of the pull request.
createPullRequest_description :: Lens.Lens' CreatePullRequest (Core.Maybe Core.Text)
createPullRequest_description = Lens.lens (\CreatePullRequest' {description} -> description) (\s@CreatePullRequest' {} a -> s {description = a} :: CreatePullRequest)

-- | A unique, client-generated idempotency token that, when provided in a
-- request, ensures the request cannot be repeated with a changed
-- parameter. If a request is received with the same parameters and a token
-- is included, the request returns information about the initial request
-- that used that token.
--
-- The AWS SDKs prepopulate client request tokens. If you are using an AWS
-- SDK, an idempotency token is created for you.
createPullRequest_clientRequestToken :: Lens.Lens' CreatePullRequest (Core.Maybe Core.Text)
createPullRequest_clientRequestToken = Lens.lens (\CreatePullRequest' {clientRequestToken} -> clientRequestToken) (\s@CreatePullRequest' {} a -> s {clientRequestToken = a} :: CreatePullRequest)

-- | The title of the pull request. This title is used to identify the pull
-- request to other users in the repository.
createPullRequest_title :: Lens.Lens' CreatePullRequest Core.Text
createPullRequest_title = Lens.lens (\CreatePullRequest' {title} -> title) (\s@CreatePullRequest' {} a -> s {title = a} :: CreatePullRequest)

-- | The targets for the pull request, including the source of the code to be
-- reviewed (the source branch) and the destination where the creator of
-- the pull request intends the code to be merged after the pull request is
-- closed (the destination branch).
createPullRequest_targets :: Lens.Lens' CreatePullRequest [Target]
createPullRequest_targets = Lens.lens (\CreatePullRequest' {targets} -> targets) (\s@CreatePullRequest' {} a -> s {targets = a} :: CreatePullRequest) Core.. Lens._Coerce

instance Core.AWSRequest CreatePullRequest where
  type
    AWSResponse CreatePullRequest =
      CreatePullRequestResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreatePullRequestResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..:> "pullRequest")
      )

instance Core.Hashable CreatePullRequest

instance Core.NFData CreatePullRequest

instance Core.ToHeaders CreatePullRequest where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeCommit_20150413.CreatePullRequest" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreatePullRequest where
  toJSON CreatePullRequest' {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("clientRequestToken" Core..=)
              Core.<$> clientRequestToken,
            Core.Just ("title" Core..= title),
            Core.Just ("targets" Core..= targets)
          ]
      )

instance Core.ToPath CreatePullRequest where
  toPath = Core.const "/"

instance Core.ToQuery CreatePullRequest where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreatePullRequestResponse' smart constructor.
data CreatePullRequestResponse = CreatePullRequestResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | Information about the newly created pull request.
    pullRequest :: PullRequest
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreatePullRequestResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createPullRequestResponse_httpStatus' - The response's http status code.
--
-- 'pullRequest', 'createPullRequestResponse_pullRequest' - Information about the newly created pull request.
newCreatePullRequestResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'pullRequest'
  PullRequest ->
  CreatePullRequestResponse
newCreatePullRequestResponse
  pHttpStatus_
  pPullRequest_ =
    CreatePullRequestResponse'
      { httpStatus =
          pHttpStatus_,
        pullRequest = pPullRequest_
      }

-- | The response's http status code.
createPullRequestResponse_httpStatus :: Lens.Lens' CreatePullRequestResponse Core.Int
createPullRequestResponse_httpStatus = Lens.lens (\CreatePullRequestResponse' {httpStatus} -> httpStatus) (\s@CreatePullRequestResponse' {} a -> s {httpStatus = a} :: CreatePullRequestResponse)

-- | Information about the newly created pull request.
createPullRequestResponse_pullRequest :: Lens.Lens' CreatePullRequestResponse PullRequest
createPullRequestResponse_pullRequest = Lens.lens (\CreatePullRequestResponse' {pullRequest} -> pullRequest) (\s@CreatePullRequestResponse' {} a -> s {pullRequest = a} :: CreatePullRequestResponse)

instance Core.NFData CreatePullRequestResponse
