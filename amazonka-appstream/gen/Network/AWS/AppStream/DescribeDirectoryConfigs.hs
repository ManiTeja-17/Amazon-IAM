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
-- Module      : Network.AWS.AppStream.DescribeDirectoryConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified Directory Config
-- objects for AppStream 2.0, if the names for these objects are provided.
-- Otherwise, all Directory Config objects in the account are described.
-- These objects include the configuration information required to join
-- fleets and image builders to Microsoft Active Directory domains.
--
-- Although the response syntax in this topic includes the account
-- password, this password is not returned in the actual response.
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeDirectoryConfigs
  ( -- * Creating a Request
    DescribeDirectoryConfigs (..),
    newDescribeDirectoryConfigs,

    -- * Request Lenses
    describeDirectoryConfigs_nextToken,
    describeDirectoryConfigs_maxResults,
    describeDirectoryConfigs_directoryNames,

    -- * Destructuring the Response
    DescribeDirectoryConfigsResponse (..),
    newDescribeDirectoryConfigsResponse,

    -- * Response Lenses
    describeDirectoryConfigsResponse_nextToken,
    describeDirectoryConfigsResponse_directoryConfigs,
    describeDirectoryConfigsResponse_httpStatus,
  )
where

import Network.AWS.AppStream.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDirectoryConfigs' smart constructor.
data DescribeDirectoryConfigs = DescribeDirectoryConfigs'
  { -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If this value is null, it retrieves the first page.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum size of each page of results.
    maxResults :: Core.Maybe Core.Int,
    -- | The directory names.
    directoryNames :: Core.Maybe [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDirectoryConfigs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectoryConfigs_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
--
-- 'maxResults', 'describeDirectoryConfigs_maxResults' - The maximum size of each page of results.
--
-- 'directoryNames', 'describeDirectoryConfigs_directoryNames' - The directory names.
newDescribeDirectoryConfigs ::
  DescribeDirectoryConfigs
newDescribeDirectoryConfigs =
  DescribeDirectoryConfigs'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      directoryNames = Core.Nothing
    }

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
describeDirectoryConfigs_nextToken :: Lens.Lens' DescribeDirectoryConfigs (Core.Maybe Core.Text)
describeDirectoryConfigs_nextToken = Lens.lens (\DescribeDirectoryConfigs' {nextToken} -> nextToken) (\s@DescribeDirectoryConfigs' {} a -> s {nextToken = a} :: DescribeDirectoryConfigs)

-- | The maximum size of each page of results.
describeDirectoryConfigs_maxResults :: Lens.Lens' DescribeDirectoryConfigs (Core.Maybe Core.Int)
describeDirectoryConfigs_maxResults = Lens.lens (\DescribeDirectoryConfigs' {maxResults} -> maxResults) (\s@DescribeDirectoryConfigs' {} a -> s {maxResults = a} :: DescribeDirectoryConfigs)

-- | The directory names.
describeDirectoryConfigs_directoryNames :: Lens.Lens' DescribeDirectoryConfigs (Core.Maybe [Core.Text])
describeDirectoryConfigs_directoryNames = Lens.lens (\DescribeDirectoryConfigs' {directoryNames} -> directoryNames) (\s@DescribeDirectoryConfigs' {} a -> s {directoryNames = a} :: DescribeDirectoryConfigs) Core.. Lens.mapping Lens._Coerce

instance Core.AWSPager DescribeDirectoryConfigs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDirectoryConfigsResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDirectoryConfigsResponse_directoryConfigs
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeDirectoryConfigs_nextToken
          Lens..~ rs
          Lens.^? describeDirectoryConfigsResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest DescribeDirectoryConfigs where
  type
    AWSResponse DescribeDirectoryConfigs =
      DescribeDirectoryConfigsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDirectoryConfigsResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "DirectoryConfigs" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeDirectoryConfigs

instance Core.NFData DescribeDirectoryConfigs

instance Core.ToHeaders DescribeDirectoryConfigs where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PhotonAdminProxyService.DescribeDirectoryConfigs" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeDirectoryConfigs where
  toJSON DescribeDirectoryConfigs' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("DirectoryNames" Core..=) Core.<$> directoryNames
          ]
      )

instance Core.ToPath DescribeDirectoryConfigs where
  toPath = Core.const "/"

instance Core.ToQuery DescribeDirectoryConfigs where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeDirectoryConfigsResponse' smart constructor.
data DescribeDirectoryConfigsResponse = DescribeDirectoryConfigsResponse'
  { -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If there are no more pages, this value is null.
    nextToken :: Core.Maybe Core.Text,
    -- | Information about the directory configurations. Note that although the
    -- response syntax in this topic includes the account password, this
    -- password is not returned in the actual response.
    directoryConfigs :: Core.Maybe [DirectoryConfig],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDirectoryConfigsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectoryConfigsResponse_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
--
-- 'directoryConfigs', 'describeDirectoryConfigsResponse_directoryConfigs' - Information about the directory configurations. Note that although the
-- response syntax in this topic includes the account password, this
-- password is not returned in the actual response.
--
-- 'httpStatus', 'describeDirectoryConfigsResponse_httpStatus' - The response's http status code.
newDescribeDirectoryConfigsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeDirectoryConfigsResponse
newDescribeDirectoryConfigsResponse pHttpStatus_ =
  DescribeDirectoryConfigsResponse'
    { nextToken =
        Core.Nothing,
      directoryConfigs = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
describeDirectoryConfigsResponse_nextToken :: Lens.Lens' DescribeDirectoryConfigsResponse (Core.Maybe Core.Text)
describeDirectoryConfigsResponse_nextToken = Lens.lens (\DescribeDirectoryConfigsResponse' {nextToken} -> nextToken) (\s@DescribeDirectoryConfigsResponse' {} a -> s {nextToken = a} :: DescribeDirectoryConfigsResponse)

-- | Information about the directory configurations. Note that although the
-- response syntax in this topic includes the account password, this
-- password is not returned in the actual response.
describeDirectoryConfigsResponse_directoryConfigs :: Lens.Lens' DescribeDirectoryConfigsResponse (Core.Maybe [DirectoryConfig])
describeDirectoryConfigsResponse_directoryConfigs = Lens.lens (\DescribeDirectoryConfigsResponse' {directoryConfigs} -> directoryConfigs) (\s@DescribeDirectoryConfigsResponse' {} a -> s {directoryConfigs = a} :: DescribeDirectoryConfigsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeDirectoryConfigsResponse_httpStatus :: Lens.Lens' DescribeDirectoryConfigsResponse Core.Int
describeDirectoryConfigsResponse_httpStatus = Lens.lens (\DescribeDirectoryConfigsResponse' {httpStatus} -> httpStatus) (\s@DescribeDirectoryConfigsResponse' {} a -> s {httpStatus = a} :: DescribeDirectoryConfigsResponse)

instance Core.NFData DescribeDirectoryConfigsResponse
