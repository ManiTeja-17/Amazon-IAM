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
-- Module      : Network.AWS.WorkDocs.DeleteComment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified comment from the document version.
module Network.AWS.WorkDocs.DeleteComment
  ( -- * Creating a Request
    DeleteComment (..),
    newDeleteComment,

    -- * Request Lenses
    deleteComment_authenticationToken,
    deleteComment_documentId,
    deleteComment_versionId,
    deleteComment_commentId,

    -- * Destructuring the Response
    DeleteCommentResponse (..),
    newDeleteCommentResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'newDeleteComment' smart constructor.
data DeleteComment = DeleteComment'
  { -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The ID of the document.
    documentId :: Core.Text,
    -- | The ID of the document version.
    versionId :: Core.Text,
    -- | The ID of the comment.
    commentId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteComment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticationToken', 'deleteComment_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'documentId', 'deleteComment_documentId' - The ID of the document.
--
-- 'versionId', 'deleteComment_versionId' - The ID of the document version.
--
-- 'commentId', 'deleteComment_commentId' - The ID of the comment.
newDeleteComment ::
  -- | 'documentId'
  Core.Text ->
  -- | 'versionId'
  Core.Text ->
  -- | 'commentId'
  Core.Text ->
  DeleteComment
newDeleteComment pDocumentId_ pVersionId_ pCommentId_ =
  DeleteComment'
    { authenticationToken = Core.Nothing,
      documentId = pDocumentId_,
      versionId = pVersionId_,
      commentId = pCommentId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
deleteComment_authenticationToken :: Lens.Lens' DeleteComment (Core.Maybe Core.Text)
deleteComment_authenticationToken = Lens.lens (\DeleteComment' {authenticationToken} -> authenticationToken) (\s@DeleteComment' {} a -> s {authenticationToken = a} :: DeleteComment) Core.. Lens.mapping Core._Sensitive

-- | The ID of the document.
deleteComment_documentId :: Lens.Lens' DeleteComment Core.Text
deleteComment_documentId = Lens.lens (\DeleteComment' {documentId} -> documentId) (\s@DeleteComment' {} a -> s {documentId = a} :: DeleteComment)

-- | The ID of the document version.
deleteComment_versionId :: Lens.Lens' DeleteComment Core.Text
deleteComment_versionId = Lens.lens (\DeleteComment' {versionId} -> versionId) (\s@DeleteComment' {} a -> s {versionId = a} :: DeleteComment)

-- | The ID of the comment.
deleteComment_commentId :: Lens.Lens' DeleteComment Core.Text
deleteComment_commentId = Lens.lens (\DeleteComment' {commentId} -> commentId) (\s@DeleteComment' {} a -> s {commentId = a} :: DeleteComment)

instance Core.AWSRequest DeleteComment where
  type
    AWSResponse DeleteComment =
      DeleteCommentResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteCommentResponse'

instance Core.Hashable DeleteComment

instance Core.NFData DeleteComment

instance Core.ToHeaders DeleteComment where
  toHeaders DeleteComment' {..} =
    Core.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
      ]

instance Core.ToPath DeleteComment where
  toPath DeleteComment' {..} =
    Core.mconcat
      [ "/api/v1/documents/",
        Core.toBS documentId,
        "/versions/",
        Core.toBS versionId,
        "/comment/",
        Core.toBS commentId
      ]

instance Core.ToQuery DeleteComment where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteCommentResponse' smart constructor.
data DeleteCommentResponse = DeleteCommentResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteCommentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteCommentResponse ::
  DeleteCommentResponse
newDeleteCommentResponse = DeleteCommentResponse'

instance Core.NFData DeleteCommentResponse
