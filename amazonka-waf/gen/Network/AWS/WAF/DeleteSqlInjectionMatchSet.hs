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
-- Module      : Network.AWS.WAF.DeleteSqlInjectionMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Permanently deletes a SqlInjectionMatchSet. You can\'t delete a
-- @SqlInjectionMatchSet@ if it\'s still used in any @Rules@ or if it still
-- contains any SqlInjectionMatchTuple objects.
--
-- If you just want to remove a @SqlInjectionMatchSet@ from a @Rule@, use
-- UpdateRule.
--
-- To permanently delete a @SqlInjectionMatchSet@ from AWS WAF, perform the
-- following steps:
--
-- 1.  Update the @SqlInjectionMatchSet@ to remove filters, if any. For
--     more information, see UpdateSqlInjectionMatchSet.
--
-- 2.  Use GetChangeToken to get the change token that you provide in the
--     @ChangeToken@ parameter of a @DeleteSqlInjectionMatchSet@ request.
--
-- 3.  Submit a @DeleteSqlInjectionMatchSet@ request.
module Network.AWS.WAF.DeleteSqlInjectionMatchSet
  ( -- * Creating a Request
    DeleteSqlInjectionMatchSet (..),
    newDeleteSqlInjectionMatchSet,

    -- * Request Lenses
    deleteSqlInjectionMatchSet_sqlInjectionMatchSetId,
    deleteSqlInjectionMatchSet_changeToken,

    -- * Destructuring the Response
    DeleteSqlInjectionMatchSetResponse (..),
    newDeleteSqlInjectionMatchSetResponse,

    -- * Response Lenses
    deleteSqlInjectionMatchSetResponse_changeToken,
    deleteSqlInjectionMatchSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WAF.Types

-- | A request to delete a SqlInjectionMatchSet from AWS WAF.
--
-- /See:/ 'newDeleteSqlInjectionMatchSet' smart constructor.
data DeleteSqlInjectionMatchSet = DeleteSqlInjectionMatchSet'
  { -- | The @SqlInjectionMatchSetId@ of the SqlInjectionMatchSet that you want
    -- to delete. @SqlInjectionMatchSetId@ is returned by
    -- CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    sqlInjectionMatchSetId :: Core.Text,
    -- | The value returned by the most recent call to GetChangeToken.
    changeToken :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteSqlInjectionMatchSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sqlInjectionMatchSetId', 'deleteSqlInjectionMatchSet_sqlInjectionMatchSetId' - The @SqlInjectionMatchSetId@ of the SqlInjectionMatchSet that you want
-- to delete. @SqlInjectionMatchSetId@ is returned by
-- CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
--
-- 'changeToken', 'deleteSqlInjectionMatchSet_changeToken' - The value returned by the most recent call to GetChangeToken.
newDeleteSqlInjectionMatchSet ::
  -- | 'sqlInjectionMatchSetId'
  Core.Text ->
  -- | 'changeToken'
  Core.Text ->
  DeleteSqlInjectionMatchSet
newDeleteSqlInjectionMatchSet
  pSqlInjectionMatchSetId_
  pChangeToken_ =
    DeleteSqlInjectionMatchSet'
      { sqlInjectionMatchSetId =
          pSqlInjectionMatchSetId_,
        changeToken = pChangeToken_
      }

-- | The @SqlInjectionMatchSetId@ of the SqlInjectionMatchSet that you want
-- to delete. @SqlInjectionMatchSetId@ is returned by
-- CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
deleteSqlInjectionMatchSet_sqlInjectionMatchSetId :: Lens.Lens' DeleteSqlInjectionMatchSet Core.Text
deleteSqlInjectionMatchSet_sqlInjectionMatchSetId = Lens.lens (\DeleteSqlInjectionMatchSet' {sqlInjectionMatchSetId} -> sqlInjectionMatchSetId) (\s@DeleteSqlInjectionMatchSet' {} a -> s {sqlInjectionMatchSetId = a} :: DeleteSqlInjectionMatchSet)

-- | The value returned by the most recent call to GetChangeToken.
deleteSqlInjectionMatchSet_changeToken :: Lens.Lens' DeleteSqlInjectionMatchSet Core.Text
deleteSqlInjectionMatchSet_changeToken = Lens.lens (\DeleteSqlInjectionMatchSet' {changeToken} -> changeToken) (\s@DeleteSqlInjectionMatchSet' {} a -> s {changeToken = a} :: DeleteSqlInjectionMatchSet)

instance Core.AWSRequest DeleteSqlInjectionMatchSet where
  type
    AWSResponse DeleteSqlInjectionMatchSet =
      DeleteSqlInjectionMatchSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteSqlInjectionMatchSetResponse'
            Core.<$> (x Core..?> "ChangeToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteSqlInjectionMatchSet

instance Core.NFData DeleteSqlInjectionMatchSet

instance Core.ToHeaders DeleteSqlInjectionMatchSet where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSWAF_20150824.DeleteSqlInjectionMatchSet" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteSqlInjectionMatchSet where
  toJSON DeleteSqlInjectionMatchSet' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "SqlInjectionMatchSetId"
                  Core..= sqlInjectionMatchSetId
              ),
            Core.Just ("ChangeToken" Core..= changeToken)
          ]
      )

instance Core.ToPath DeleteSqlInjectionMatchSet where
  toPath = Core.const "/"

instance Core.ToQuery DeleteSqlInjectionMatchSet where
  toQuery = Core.const Core.mempty

-- | The response to a request to delete a SqlInjectionMatchSet from AWS WAF.
--
-- /See:/ 'newDeleteSqlInjectionMatchSetResponse' smart constructor.
data DeleteSqlInjectionMatchSetResponse = DeleteSqlInjectionMatchSetResponse'
  { -- | The @ChangeToken@ that you used to submit the
    -- @DeleteSqlInjectionMatchSet@ request. You can also use this value to
    -- query the status of the request. For more information, see
    -- GetChangeTokenStatus.
    changeToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteSqlInjectionMatchSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'changeToken', 'deleteSqlInjectionMatchSetResponse_changeToken' - The @ChangeToken@ that you used to submit the
-- @DeleteSqlInjectionMatchSet@ request. You can also use this value to
-- query the status of the request. For more information, see
-- GetChangeTokenStatus.
--
-- 'httpStatus', 'deleteSqlInjectionMatchSetResponse_httpStatus' - The response's http status code.
newDeleteSqlInjectionMatchSetResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteSqlInjectionMatchSetResponse
newDeleteSqlInjectionMatchSetResponse pHttpStatus_ =
  DeleteSqlInjectionMatchSetResponse'
    { changeToken =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @ChangeToken@ that you used to submit the
-- @DeleteSqlInjectionMatchSet@ request. You can also use this value to
-- query the status of the request. For more information, see
-- GetChangeTokenStatus.
deleteSqlInjectionMatchSetResponse_changeToken :: Lens.Lens' DeleteSqlInjectionMatchSetResponse (Core.Maybe Core.Text)
deleteSqlInjectionMatchSetResponse_changeToken = Lens.lens (\DeleteSqlInjectionMatchSetResponse' {changeToken} -> changeToken) (\s@DeleteSqlInjectionMatchSetResponse' {} a -> s {changeToken = a} :: DeleteSqlInjectionMatchSetResponse)

-- | The response's http status code.
deleteSqlInjectionMatchSetResponse_httpStatus :: Lens.Lens' DeleteSqlInjectionMatchSetResponse Core.Int
deleteSqlInjectionMatchSetResponse_httpStatus = Lens.lens (\DeleteSqlInjectionMatchSetResponse' {httpStatus} -> httpStatus) (\s@DeleteSqlInjectionMatchSetResponse' {} a -> s {httpStatus = a} :: DeleteSqlInjectionMatchSetResponse)

instance
  Core.NFData
    DeleteSqlInjectionMatchSetResponse
