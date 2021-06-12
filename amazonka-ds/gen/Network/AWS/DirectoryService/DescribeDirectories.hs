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
-- Module      : Network.AWS.DirectoryService.DescribeDirectories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the directories that belong to this account.
--
-- You can retrieve information about specific directories by passing the
-- directory identifiers in the @DirectoryIds@ parameter. Otherwise, all
-- directories that belong to the current account are returned.
--
-- This operation supports pagination with the use of the @NextToken@
-- request and response parameters. If more results are available, the
-- @DescribeDirectoriesResult.NextToken@ member contains a token that you
-- pass in the next call to DescribeDirectories to retrieve the next set of
-- items.
--
-- You can also specify a maximum number of return results with the @Limit@
-- parameter.
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeDirectories
  ( -- * Creating a Request
    DescribeDirectories (..),
    newDescribeDirectories,

    -- * Request Lenses
    describeDirectories_nextToken,
    describeDirectories_directoryIds,
    describeDirectories_limit,

    -- * Destructuring the Response
    DescribeDirectoriesResponse (..),
    newDescribeDirectoriesResponse,

    -- * Response Lenses
    describeDirectoriesResponse_nextToken,
    describeDirectoriesResponse_directoryDescriptions,
    describeDirectoriesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectoryService.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the inputs for the DescribeDirectories operation.
--
-- /See:/ 'newDescribeDirectories' smart constructor.
data DescribeDirectories = DescribeDirectories'
  { -- | The @DescribeDirectoriesResult.NextToken@ value from a previous call to
    -- DescribeDirectories. Pass null if this is the first call.
    nextToken :: Core.Maybe Core.Text,
    -- | A list of identifiers of the directories for which to obtain the
    -- information. If this member is null, all directories that belong to the
    -- current account are returned.
    --
    -- An empty list results in an @InvalidParameterException@ being thrown.
    directoryIds :: Core.Maybe [Core.Text],
    -- | The maximum number of items to return. If this value is zero, the
    -- maximum number of items is specified by the limitations of the
    -- operation.
    limit :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDirectories' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectories_nextToken' - The @DescribeDirectoriesResult.NextToken@ value from a previous call to
-- DescribeDirectories. Pass null if this is the first call.
--
-- 'directoryIds', 'describeDirectories_directoryIds' - A list of identifiers of the directories for which to obtain the
-- information. If this member is null, all directories that belong to the
-- current account are returned.
--
-- An empty list results in an @InvalidParameterException@ being thrown.
--
-- 'limit', 'describeDirectories_limit' - The maximum number of items to return. If this value is zero, the
-- maximum number of items is specified by the limitations of the
-- operation.
newDescribeDirectories ::
  DescribeDirectories
newDescribeDirectories =
  DescribeDirectories'
    { nextToken = Core.Nothing,
      directoryIds = Core.Nothing,
      limit = Core.Nothing
    }

-- | The @DescribeDirectoriesResult.NextToken@ value from a previous call to
-- DescribeDirectories. Pass null if this is the first call.
describeDirectories_nextToken :: Lens.Lens' DescribeDirectories (Core.Maybe Core.Text)
describeDirectories_nextToken = Lens.lens (\DescribeDirectories' {nextToken} -> nextToken) (\s@DescribeDirectories' {} a -> s {nextToken = a} :: DescribeDirectories)

-- | A list of identifiers of the directories for which to obtain the
-- information. If this member is null, all directories that belong to the
-- current account are returned.
--
-- An empty list results in an @InvalidParameterException@ being thrown.
describeDirectories_directoryIds :: Lens.Lens' DescribeDirectories (Core.Maybe [Core.Text])
describeDirectories_directoryIds = Lens.lens (\DescribeDirectories' {directoryIds} -> directoryIds) (\s@DescribeDirectories' {} a -> s {directoryIds = a} :: DescribeDirectories) Core.. Lens.mapping Lens._Coerce

-- | The maximum number of items to return. If this value is zero, the
-- maximum number of items is specified by the limitations of the
-- operation.
describeDirectories_limit :: Lens.Lens' DescribeDirectories (Core.Maybe Core.Natural)
describeDirectories_limit = Lens.lens (\DescribeDirectories' {limit} -> limit) (\s@DescribeDirectories' {} a -> s {limit = a} :: DescribeDirectories)

instance Core.AWSPager DescribeDirectories where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDirectoriesResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDirectoriesResponse_directoryDescriptions
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeDirectories_nextToken
          Lens..~ rs
          Lens.^? describeDirectoriesResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest DescribeDirectories where
  type
    AWSResponse DescribeDirectories =
      DescribeDirectoriesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDirectoriesResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> ( x Core..?> "DirectoryDescriptions"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeDirectories

instance Core.NFData DescribeDirectories

instance Core.ToHeaders DescribeDirectories where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.DescribeDirectories" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeDirectories where
  toJSON DescribeDirectories' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("DirectoryIds" Core..=) Core.<$> directoryIds,
            ("Limit" Core..=) Core.<$> limit
          ]
      )

instance Core.ToPath DescribeDirectories where
  toPath = Core.const "/"

instance Core.ToQuery DescribeDirectories where
  toQuery = Core.const Core.mempty

-- | Contains the results of the DescribeDirectories operation.
--
-- /See:/ 'newDescribeDirectoriesResponse' smart constructor.
data DescribeDirectoriesResponse = DescribeDirectoriesResponse'
  { -- | If not null, more results are available. Pass this value for the
    -- @NextToken@ parameter in a subsequent call to DescribeDirectories to
    -- retrieve the next set of items.
    nextToken :: Core.Maybe Core.Text,
    -- | The list of DirectoryDescription objects that were retrieved.
    --
    -- It is possible that this list contains less than the number of items
    -- specified in the @Limit@ member of the request. This occurs if there are
    -- less than the requested number of items left to retrieve, or if the
    -- limitations of the operation have been exceeded.
    directoryDescriptions :: Core.Maybe [DirectoryDescription],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDirectoriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectoriesResponse_nextToken' - If not null, more results are available. Pass this value for the
-- @NextToken@ parameter in a subsequent call to DescribeDirectories to
-- retrieve the next set of items.
--
-- 'directoryDescriptions', 'describeDirectoriesResponse_directoryDescriptions' - The list of DirectoryDescription objects that were retrieved.
--
-- It is possible that this list contains less than the number of items
-- specified in the @Limit@ member of the request. This occurs if there are
-- less than the requested number of items left to retrieve, or if the
-- limitations of the operation have been exceeded.
--
-- 'httpStatus', 'describeDirectoriesResponse_httpStatus' - The response's http status code.
newDescribeDirectoriesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeDirectoriesResponse
newDescribeDirectoriesResponse pHttpStatus_ =
  DescribeDirectoriesResponse'
    { nextToken =
        Core.Nothing,
      directoryDescriptions = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If not null, more results are available. Pass this value for the
-- @NextToken@ parameter in a subsequent call to DescribeDirectories to
-- retrieve the next set of items.
describeDirectoriesResponse_nextToken :: Lens.Lens' DescribeDirectoriesResponse (Core.Maybe Core.Text)
describeDirectoriesResponse_nextToken = Lens.lens (\DescribeDirectoriesResponse' {nextToken} -> nextToken) (\s@DescribeDirectoriesResponse' {} a -> s {nextToken = a} :: DescribeDirectoriesResponse)

-- | The list of DirectoryDescription objects that were retrieved.
--
-- It is possible that this list contains less than the number of items
-- specified in the @Limit@ member of the request. This occurs if there are
-- less than the requested number of items left to retrieve, or if the
-- limitations of the operation have been exceeded.
describeDirectoriesResponse_directoryDescriptions :: Lens.Lens' DescribeDirectoriesResponse (Core.Maybe [DirectoryDescription])
describeDirectoriesResponse_directoryDescriptions = Lens.lens (\DescribeDirectoriesResponse' {directoryDescriptions} -> directoryDescriptions) (\s@DescribeDirectoriesResponse' {} a -> s {directoryDescriptions = a} :: DescribeDirectoriesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeDirectoriesResponse_httpStatus :: Lens.Lens' DescribeDirectoriesResponse Core.Int
describeDirectoriesResponse_httpStatus = Lens.lens (\DescribeDirectoriesResponse' {httpStatus} -> httpStatus) (\s@DescribeDirectoriesResponse' {} a -> s {httpStatus = a} :: DescribeDirectoriesResponse)

instance Core.NFData DescribeDirectoriesResponse
