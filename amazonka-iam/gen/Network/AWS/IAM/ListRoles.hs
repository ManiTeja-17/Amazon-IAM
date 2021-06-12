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
-- Module      : Network.AWS.IAM.ListRoles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the IAM roles that have the specified path prefix. If there are
-- none, the operation returns an empty list. For more information about
-- roles, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html Working with roles>.
--
-- IAM resource-listing operations return a subset of the available
-- attributes for the resource. For example, this operation does not return
-- tags, even though they are an attribute of the returned object. To view
-- all of the information for a role, see GetRole.
--
-- You can paginate the results using the @MaxItems@ and @Marker@
-- parameters.
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListRoles
  ( -- * Creating a Request
    ListRoles (..),
    newListRoles,

    -- * Request Lenses
    listRoles_pathPrefix,
    listRoles_maxItems,
    listRoles_marker,

    -- * Destructuring the Response
    ListRolesResponse (..),
    newListRolesResponse,

    -- * Response Lenses
    listRolesResponse_isTruncated,
    listRolesResponse_marker,
    listRolesResponse_httpStatus,
    listRolesResponse_roles,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRoles' smart constructor.
data ListRoles = ListRoles'
  { -- | The path prefix for filtering the results. For example, the prefix
    -- @\/application_abc\/component_xyz\/@ gets all roles whose path starts
    -- with @\/application_abc\/component_xyz\/@.
    --
    -- This parameter is optional. If it is not included, it defaults to a
    -- slash (\/), listing all roles. This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of either a forward slash (\/) by itself or a string that
    -- must begin and end with forward slashes. In addition, it can contain any
    -- ASCII character from the ! (@\\u0021@) through the DEL character
    -- (@\\u007F@), including most punctuation characters, digits, and upper
    -- and lowercased letters.
    pathPrefix :: Core.Maybe Core.Text,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Core.Maybe Core.Natural,
    -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListRoles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pathPrefix', 'listRoles_pathPrefix' - The path prefix for filtering the results. For example, the prefix
-- @\/application_abc\/component_xyz\/@ gets all roles whose path starts
-- with @\/application_abc\/component_xyz\/@.
--
-- This parameter is optional. If it is not included, it defaults to a
-- slash (\/), listing all roles. This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of either a forward slash (\/) by itself or a string that
-- must begin and end with forward slashes. In addition, it can contain any
-- ASCII character from the ! (@\\u0021@) through the DEL character
-- (@\\u007F@), including most punctuation characters, digits, and upper
-- and lowercased letters.
--
-- 'maxItems', 'listRoles_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'marker', 'listRoles_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
newListRoles ::
  ListRoles
newListRoles =
  ListRoles'
    { pathPrefix = Core.Nothing,
      maxItems = Core.Nothing,
      marker = Core.Nothing
    }

-- | The path prefix for filtering the results. For example, the prefix
-- @\/application_abc\/component_xyz\/@ gets all roles whose path starts
-- with @\/application_abc\/component_xyz\/@.
--
-- This parameter is optional. If it is not included, it defaults to a
-- slash (\/), listing all roles. This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of either a forward slash (\/) by itself or a string that
-- must begin and end with forward slashes. In addition, it can contain any
-- ASCII character from the ! (@\\u0021@) through the DEL character
-- (@\\u007F@), including most punctuation characters, digits, and upper
-- and lowercased letters.
listRoles_pathPrefix :: Lens.Lens' ListRoles (Core.Maybe Core.Text)
listRoles_pathPrefix = Lens.lens (\ListRoles' {pathPrefix} -> pathPrefix) (\s@ListRoles' {} a -> s {pathPrefix = a} :: ListRoles)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
listRoles_maxItems :: Lens.Lens' ListRoles (Core.Maybe Core.Natural)
listRoles_maxItems = Lens.lens (\ListRoles' {maxItems} -> maxItems) (\s@ListRoles' {} a -> s {maxItems = a} :: ListRoles)

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
listRoles_marker :: Lens.Lens' ListRoles (Core.Maybe Core.Text)
listRoles_marker = Lens.lens (\ListRoles' {marker} -> marker) (\s@ListRoles' {} a -> s {marker = a} :: ListRoles)

instance Core.AWSPager ListRoles where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRolesResponse_isTruncated Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.isNothing
        ( rs
            Lens.^? listRolesResponse_marker Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listRoles_marker
          Lens..~ rs Lens.^? listRolesResponse_marker Core.. Lens._Just

instance Core.AWSRequest ListRoles where
  type AWSResponse ListRoles = ListRolesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListRolesResult"
      ( \s h x ->
          ListRolesResponse'
            Core.<$> (x Core..@? "IsTruncated")
            Core.<*> (x Core..@? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
            Core.<*> ( x Core..@? "Roles" Core..!@ Core.mempty
                         Core.>>= Core.parseXMLList "member"
                     )
      )

instance Core.Hashable ListRoles

instance Core.NFData ListRoles

instance Core.ToHeaders ListRoles where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ListRoles where
  toPath = Core.const "/"

instance Core.ToQuery ListRoles where
  toQuery ListRoles' {..} =
    Core.mconcat
      [ "Action" Core.=: ("ListRoles" :: Core.ByteString),
        "Version" Core.=: ("2010-05-08" :: Core.ByteString),
        "PathPrefix" Core.=: pathPrefix,
        "MaxItems" Core.=: maxItems,
        "Marker" Core.=: marker
      ]

-- | Contains the response to a successful ListRoles request.
--
-- /See:/ 'newListRolesResponse' smart constructor.
data ListRolesResponse = ListRolesResponse'
  { -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Core.Maybe Core.Bool,
    -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A list of roles.
    roles :: [Role]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListRolesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isTruncated', 'listRolesResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'marker', 'listRolesResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'httpStatus', 'listRolesResponse_httpStatus' - The response's http status code.
--
-- 'roles', 'listRolesResponse_roles' - A list of roles.
newListRolesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListRolesResponse
newListRolesResponse pHttpStatus_ =
  ListRolesResponse'
    { isTruncated = Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_,
      roles = Core.mempty
    }

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
listRolesResponse_isTruncated :: Lens.Lens' ListRolesResponse (Core.Maybe Core.Bool)
listRolesResponse_isTruncated = Lens.lens (\ListRolesResponse' {isTruncated} -> isTruncated) (\s@ListRolesResponse' {} a -> s {isTruncated = a} :: ListRolesResponse)

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
listRolesResponse_marker :: Lens.Lens' ListRolesResponse (Core.Maybe Core.Text)
listRolesResponse_marker = Lens.lens (\ListRolesResponse' {marker} -> marker) (\s@ListRolesResponse' {} a -> s {marker = a} :: ListRolesResponse)

-- | The response's http status code.
listRolesResponse_httpStatus :: Lens.Lens' ListRolesResponse Core.Int
listRolesResponse_httpStatus = Lens.lens (\ListRolesResponse' {httpStatus} -> httpStatus) (\s@ListRolesResponse' {} a -> s {httpStatus = a} :: ListRolesResponse)

-- | A list of roles.
listRolesResponse_roles :: Lens.Lens' ListRolesResponse [Role]
listRolesResponse_roles = Lens.lens (\ListRolesResponse' {roles} -> roles) (\s@ListRolesResponse' {} a -> s {roles = a} :: ListRolesResponse) Core.. Lens._Coerce

instance Core.NFData ListRolesResponse
