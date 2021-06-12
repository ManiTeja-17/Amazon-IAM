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
-- Module      : Network.AWS.Athena.ListTableMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the metadata for the tables in the specified data catalog
-- database.
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListTableMetadata
  ( -- * Creating a Request
    ListTableMetadata (..),
    newListTableMetadata,

    -- * Request Lenses
    listTableMetadata_nextToken,
    listTableMetadata_maxResults,
    listTableMetadata_expression,
    listTableMetadata_catalogName,
    listTableMetadata_databaseName,

    -- * Destructuring the Response
    ListTableMetadataResponse (..),
    newListTableMetadataResponse,

    -- * Response Lenses
    listTableMetadataResponse_nextToken,
    listTableMetadataResponse_tableMetadataList,
    listTableMetadataResponse_httpStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListTableMetadata' smart constructor.
data ListTableMetadata = ListTableMetadata'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the NextToken from the response object of the previous
    -- page call.
    nextToken :: Core.Maybe Core.Text,
    -- | Specifies the maximum number of results to return.
    maxResults :: Core.Maybe Core.Natural,
    -- | A regex filter that pattern-matches table names. If no expression is
    -- supplied, metadata for all tables are listed.
    expression :: Core.Maybe Core.Text,
    -- | The name of the data catalog for which table metadata should be
    -- returned.
    catalogName :: Core.Text,
    -- | The name of the database for which table metadata should be returned.
    databaseName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListTableMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTableMetadata_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
--
-- 'maxResults', 'listTableMetadata_maxResults' - Specifies the maximum number of results to return.
--
-- 'expression', 'listTableMetadata_expression' - A regex filter that pattern-matches table names. If no expression is
-- supplied, metadata for all tables are listed.
--
-- 'catalogName', 'listTableMetadata_catalogName' - The name of the data catalog for which table metadata should be
-- returned.
--
-- 'databaseName', 'listTableMetadata_databaseName' - The name of the database for which table metadata should be returned.
newListTableMetadata ::
  -- | 'catalogName'
  Core.Text ->
  -- | 'databaseName'
  Core.Text ->
  ListTableMetadata
newListTableMetadata pCatalogName_ pDatabaseName_ =
  ListTableMetadata'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      expression = Core.Nothing,
      catalogName = pCatalogName_,
      databaseName = pDatabaseName_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
listTableMetadata_nextToken :: Lens.Lens' ListTableMetadata (Core.Maybe Core.Text)
listTableMetadata_nextToken = Lens.lens (\ListTableMetadata' {nextToken} -> nextToken) (\s@ListTableMetadata' {} a -> s {nextToken = a} :: ListTableMetadata)

-- | Specifies the maximum number of results to return.
listTableMetadata_maxResults :: Lens.Lens' ListTableMetadata (Core.Maybe Core.Natural)
listTableMetadata_maxResults = Lens.lens (\ListTableMetadata' {maxResults} -> maxResults) (\s@ListTableMetadata' {} a -> s {maxResults = a} :: ListTableMetadata)

-- | A regex filter that pattern-matches table names. If no expression is
-- supplied, metadata for all tables are listed.
listTableMetadata_expression :: Lens.Lens' ListTableMetadata (Core.Maybe Core.Text)
listTableMetadata_expression = Lens.lens (\ListTableMetadata' {expression} -> expression) (\s@ListTableMetadata' {} a -> s {expression = a} :: ListTableMetadata)

-- | The name of the data catalog for which table metadata should be
-- returned.
listTableMetadata_catalogName :: Lens.Lens' ListTableMetadata Core.Text
listTableMetadata_catalogName = Lens.lens (\ListTableMetadata' {catalogName} -> catalogName) (\s@ListTableMetadata' {} a -> s {catalogName = a} :: ListTableMetadata)

-- | The name of the database for which table metadata should be returned.
listTableMetadata_databaseName :: Lens.Lens' ListTableMetadata Core.Text
listTableMetadata_databaseName = Lens.lens (\ListTableMetadata' {databaseName} -> databaseName) (\s@ListTableMetadata' {} a -> s {databaseName = a} :: ListTableMetadata)

instance Core.AWSPager ListTableMetadata where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTableMetadataResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listTableMetadataResponse_tableMetadataList
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listTableMetadata_nextToken
          Lens..~ rs
          Lens.^? listTableMetadataResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest ListTableMetadata where
  type
    AWSResponse ListTableMetadata =
      ListTableMetadataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTableMetadataResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "TableMetadataList" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListTableMetadata

instance Core.NFData ListTableMetadata

instance Core.ToHeaders ListTableMetadata where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonAthena.ListTableMetadata" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListTableMetadata where
  toJSON ListTableMetadata' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("Expression" Core..=) Core.<$> expression,
            Core.Just ("CatalogName" Core..= catalogName),
            Core.Just ("DatabaseName" Core..= databaseName)
          ]
      )

instance Core.ToPath ListTableMetadata where
  toPath = Core.const "/"

instance Core.ToQuery ListTableMetadata where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListTableMetadataResponse' smart constructor.
data ListTableMetadataResponse = ListTableMetadataResponse'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the NextToken from the response object of the previous
    -- page call.
    nextToken :: Core.Maybe Core.Text,
    -- | A list of table metadata.
    tableMetadataList :: Core.Maybe [TableMetadata],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListTableMetadataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTableMetadataResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
--
-- 'tableMetadataList', 'listTableMetadataResponse_tableMetadataList' - A list of table metadata.
--
-- 'httpStatus', 'listTableMetadataResponse_httpStatus' - The response's http status code.
newListTableMetadataResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListTableMetadataResponse
newListTableMetadataResponse pHttpStatus_ =
  ListTableMetadataResponse'
    { nextToken =
        Core.Nothing,
      tableMetadataList = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
listTableMetadataResponse_nextToken :: Lens.Lens' ListTableMetadataResponse (Core.Maybe Core.Text)
listTableMetadataResponse_nextToken = Lens.lens (\ListTableMetadataResponse' {nextToken} -> nextToken) (\s@ListTableMetadataResponse' {} a -> s {nextToken = a} :: ListTableMetadataResponse)

-- | A list of table metadata.
listTableMetadataResponse_tableMetadataList :: Lens.Lens' ListTableMetadataResponse (Core.Maybe [TableMetadata])
listTableMetadataResponse_tableMetadataList = Lens.lens (\ListTableMetadataResponse' {tableMetadataList} -> tableMetadataList) (\s@ListTableMetadataResponse' {} a -> s {tableMetadataList = a} :: ListTableMetadataResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listTableMetadataResponse_httpStatus :: Lens.Lens' ListTableMetadataResponse Core.Int
listTableMetadataResponse_httpStatus = Lens.lens (\ListTableMetadataResponse' {httpStatus} -> httpStatus) (\s@ListTableMetadataResponse' {} a -> s {httpStatus = a} :: ListTableMetadataResponse)

instance Core.NFData ListTableMetadataResponse
