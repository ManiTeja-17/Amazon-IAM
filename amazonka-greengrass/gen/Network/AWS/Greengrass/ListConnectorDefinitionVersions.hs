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
-- Module      : Network.AWS.Greengrass.ListConnectorDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a connector definition, which are containers for
-- connectors. Connectors run on the Greengrass core and contain built-in
-- integration with local infrastructure, device protocols, AWS, and other
-- cloud services.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListConnectorDefinitionVersions
  ( -- * Creating a Request
    ListConnectorDefinitionVersions (..),
    newListConnectorDefinitionVersions,

    -- * Request Lenses
    listConnectorDefinitionVersions_nextToken,
    listConnectorDefinitionVersions_maxResults,
    listConnectorDefinitionVersions_connectorDefinitionId,

    -- * Destructuring the Response
    ListConnectorDefinitionVersionsResponse (..),
    newListConnectorDefinitionVersionsResponse,

    -- * Response Lenses
    listConnectorDefinitionVersionsResponse_nextToken,
    listConnectorDefinitionVersionsResponse_versions,
    listConnectorDefinitionVersionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Greengrass.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListConnectorDefinitionVersions' smart constructor.
data ListConnectorDefinitionVersions = ListConnectorDefinitionVersions'
  { -- | The token for the next set of results, or \'\'null\'\' if there are no
    -- additional results.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Core.Maybe Core.Text,
    -- | The ID of the connector definition.
    connectorDefinitionId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListConnectorDefinitionVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnectorDefinitionVersions_nextToken' - The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
--
-- 'maxResults', 'listConnectorDefinitionVersions_maxResults' - The maximum number of results to be returned per request.
--
-- 'connectorDefinitionId', 'listConnectorDefinitionVersions_connectorDefinitionId' - The ID of the connector definition.
newListConnectorDefinitionVersions ::
  -- | 'connectorDefinitionId'
  Core.Text ->
  ListConnectorDefinitionVersions
newListConnectorDefinitionVersions
  pConnectorDefinitionId_ =
    ListConnectorDefinitionVersions'
      { nextToken =
          Core.Nothing,
        maxResults = Core.Nothing,
        connectorDefinitionId =
          pConnectorDefinitionId_
      }

-- | The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
listConnectorDefinitionVersions_nextToken :: Lens.Lens' ListConnectorDefinitionVersions (Core.Maybe Core.Text)
listConnectorDefinitionVersions_nextToken = Lens.lens (\ListConnectorDefinitionVersions' {nextToken} -> nextToken) (\s@ListConnectorDefinitionVersions' {} a -> s {nextToken = a} :: ListConnectorDefinitionVersions)

-- | The maximum number of results to be returned per request.
listConnectorDefinitionVersions_maxResults :: Lens.Lens' ListConnectorDefinitionVersions (Core.Maybe Core.Text)
listConnectorDefinitionVersions_maxResults = Lens.lens (\ListConnectorDefinitionVersions' {maxResults} -> maxResults) (\s@ListConnectorDefinitionVersions' {} a -> s {maxResults = a} :: ListConnectorDefinitionVersions)

-- | The ID of the connector definition.
listConnectorDefinitionVersions_connectorDefinitionId :: Lens.Lens' ListConnectorDefinitionVersions Core.Text
listConnectorDefinitionVersions_connectorDefinitionId = Lens.lens (\ListConnectorDefinitionVersions' {connectorDefinitionId} -> connectorDefinitionId) (\s@ListConnectorDefinitionVersions' {} a -> s {connectorDefinitionId = a} :: ListConnectorDefinitionVersions)

instance
  Core.AWSPager
    ListConnectorDefinitionVersions
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listConnectorDefinitionVersionsResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listConnectorDefinitionVersionsResponse_versions
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listConnectorDefinitionVersions_nextToken
          Lens..~ rs
          Lens.^? listConnectorDefinitionVersionsResponse_nextToken
            Core.. Lens._Just

instance
  Core.AWSRequest
    ListConnectorDefinitionVersions
  where
  type
    AWSResponse ListConnectorDefinitionVersions =
      ListConnectorDefinitionVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListConnectorDefinitionVersionsResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "Versions" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    ListConnectorDefinitionVersions

instance Core.NFData ListConnectorDefinitionVersions

instance
  Core.ToHeaders
    ListConnectorDefinitionVersions
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath ListConnectorDefinitionVersions where
  toPath ListConnectorDefinitionVersions' {..} =
    Core.mconcat
      [ "/greengrass/definition/connectors/",
        Core.toBS connectorDefinitionId,
        "/versions"
      ]

instance Core.ToQuery ListConnectorDefinitionVersions where
  toQuery ListConnectorDefinitionVersions' {..} =
    Core.mconcat
      [ "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListConnectorDefinitionVersionsResponse' smart constructor.
data ListConnectorDefinitionVersionsResponse = ListConnectorDefinitionVersionsResponse'
  { -- | The token for the next set of results, or \'\'null\'\' if there are no
    -- additional results.
    nextToken :: Core.Maybe Core.Text,
    -- | Information about a version.
    versions :: Core.Maybe [VersionInformation],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListConnectorDefinitionVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnectorDefinitionVersionsResponse_nextToken' - The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
--
-- 'versions', 'listConnectorDefinitionVersionsResponse_versions' - Information about a version.
--
-- 'httpStatus', 'listConnectorDefinitionVersionsResponse_httpStatus' - The response's http status code.
newListConnectorDefinitionVersionsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListConnectorDefinitionVersionsResponse
newListConnectorDefinitionVersionsResponse
  pHttpStatus_ =
    ListConnectorDefinitionVersionsResponse'
      { nextToken =
          Core.Nothing,
        versions = Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
listConnectorDefinitionVersionsResponse_nextToken :: Lens.Lens' ListConnectorDefinitionVersionsResponse (Core.Maybe Core.Text)
listConnectorDefinitionVersionsResponse_nextToken = Lens.lens (\ListConnectorDefinitionVersionsResponse' {nextToken} -> nextToken) (\s@ListConnectorDefinitionVersionsResponse' {} a -> s {nextToken = a} :: ListConnectorDefinitionVersionsResponse)

-- | Information about a version.
listConnectorDefinitionVersionsResponse_versions :: Lens.Lens' ListConnectorDefinitionVersionsResponse (Core.Maybe [VersionInformation])
listConnectorDefinitionVersionsResponse_versions = Lens.lens (\ListConnectorDefinitionVersionsResponse' {versions} -> versions) (\s@ListConnectorDefinitionVersionsResponse' {} a -> s {versions = a} :: ListConnectorDefinitionVersionsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listConnectorDefinitionVersionsResponse_httpStatus :: Lens.Lens' ListConnectorDefinitionVersionsResponse Core.Int
listConnectorDefinitionVersionsResponse_httpStatus = Lens.lens (\ListConnectorDefinitionVersionsResponse' {httpStatus} -> httpStatus) (\s@ListConnectorDefinitionVersionsResponse' {} a -> s {httpStatus = a} :: ListConnectorDefinitionVersionsResponse)

instance
  Core.NFData
    ListConnectorDefinitionVersionsResponse
