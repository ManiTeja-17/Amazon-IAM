{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.HoneyCode.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.HoneyCode.Lens
  ( -- * Operations

    -- ** BatchDeleteTableRows
    batchDeleteTableRows_clientRequestToken,
    batchDeleteTableRows_workbookId,
    batchDeleteTableRows_tableId,
    batchDeleteTableRows_rowIds,
    batchDeleteTableRowsResponse_failedBatchItems,
    batchDeleteTableRowsResponse_httpStatus,
    batchDeleteTableRowsResponse_workbookCursor,

    -- ** BatchUpdateTableRows
    batchUpdateTableRows_clientRequestToken,
    batchUpdateTableRows_workbookId,
    batchUpdateTableRows_tableId,
    batchUpdateTableRows_rowsToUpdate,
    batchUpdateTableRowsResponse_failedBatchItems,
    batchUpdateTableRowsResponse_httpStatus,
    batchUpdateTableRowsResponse_workbookCursor,

    -- ** ListTableRows
    listTableRows_rowIds,
    listTableRows_nextToken,
    listTableRows_maxResults,
    listTableRows_workbookId,
    listTableRows_tableId,
    listTableRowsResponse_rowIdsNotFound,
    listTableRowsResponse_nextToken,
    listTableRowsResponse_httpStatus,
    listTableRowsResponse_columnIds,
    listTableRowsResponse_rows,
    listTableRowsResponse_workbookCursor,

    -- ** InvokeScreenAutomation
    invokeScreenAutomation_rowId,
    invokeScreenAutomation_variables,
    invokeScreenAutomation_clientRequestToken,
    invokeScreenAutomation_workbookId,
    invokeScreenAutomation_appId,
    invokeScreenAutomation_screenId,
    invokeScreenAutomation_screenAutomationId,
    invokeScreenAutomationResponse_httpStatus,
    invokeScreenAutomationResponse_workbookCursor,

    -- ** DescribeTableDataImportJob
    describeTableDataImportJob_workbookId,
    describeTableDataImportJob_tableId,
    describeTableDataImportJob_jobId,
    describeTableDataImportJobResponse_httpStatus,
    describeTableDataImportJobResponse_jobStatus,
    describeTableDataImportJobResponse_message,
    describeTableDataImportJobResponse_jobMetadata,

    -- ** StartTableDataImportJob
    startTableDataImportJob_workbookId,
    startTableDataImportJob_dataSource,
    startTableDataImportJob_dataFormat,
    startTableDataImportJob_destinationTableId,
    startTableDataImportJob_importOptions,
    startTableDataImportJob_clientRequestToken,
    startTableDataImportJobResponse_httpStatus,
    startTableDataImportJobResponse_jobId,
    startTableDataImportJobResponse_jobStatus,

    -- ** BatchCreateTableRows
    batchCreateTableRows_clientRequestToken,
    batchCreateTableRows_workbookId,
    batchCreateTableRows_tableId,
    batchCreateTableRows_rowsToCreate,
    batchCreateTableRowsResponse_failedBatchItems,
    batchCreateTableRowsResponse_httpStatus,
    batchCreateTableRowsResponse_workbookCursor,
    batchCreateTableRowsResponse_createdRows,

    -- ** ListTables
    listTables_nextToken,
    listTables_maxResults,
    listTables_workbookId,
    listTablesResponse_nextToken,
    listTablesResponse_workbookCursor,
    listTablesResponse_httpStatus,
    listTablesResponse_tables,

    -- ** GetScreenData
    getScreenData_variables,
    getScreenData_nextToken,
    getScreenData_maxResults,
    getScreenData_workbookId,
    getScreenData_appId,
    getScreenData_screenId,
    getScreenDataResponse_nextToken,
    getScreenDataResponse_httpStatus,
    getScreenDataResponse_results,
    getScreenDataResponse_workbookCursor,

    -- ** QueryTableRows
    queryTableRows_nextToken,
    queryTableRows_maxResults,
    queryTableRows_workbookId,
    queryTableRows_tableId,
    queryTableRows_filterFormula,
    queryTableRowsResponse_nextToken,
    queryTableRowsResponse_httpStatus,
    queryTableRowsResponse_columnIds,
    queryTableRowsResponse_rows,
    queryTableRowsResponse_workbookCursor,

    -- ** BatchUpsertTableRows
    batchUpsertTableRows_clientRequestToken,
    batchUpsertTableRows_workbookId,
    batchUpsertTableRows_tableId,
    batchUpsertTableRows_rowsToUpsert,
    batchUpsertTableRowsResponse_failedBatchItems,
    batchUpsertTableRowsResponse_httpStatus,
    batchUpsertTableRowsResponse_rows,
    batchUpsertTableRowsResponse_workbookCursor,

    -- ** ListTableColumns
    listTableColumns_nextToken,
    listTableColumns_workbookId,
    listTableColumns_tableId,
    listTableColumnsResponse_nextToken,
    listTableColumnsResponse_workbookCursor,
    listTableColumnsResponse_httpStatus,
    listTableColumnsResponse_tableColumns,

    -- * Types

    -- ** Cell
    cell_rawValue,
    cell_format,
    cell_formula,
    cell_formattedValue,

    -- ** CellInput
    cellInput_fact,

    -- ** ColumnMetadata
    columnMetadata_name,
    columnMetadata_format,

    -- ** CreateRowData
    createRowData_batchItemId,
    createRowData_cellsToCreate,

    -- ** DataItem
    dataItem_rawValue,
    dataItem_overrideFormat,
    dataItem_formattedValue,

    -- ** DelimitedTextImportOptions
    delimitedTextImportOptions_ignoreEmptyRows,
    delimitedTextImportOptions_hasHeaderRow,
    delimitedTextImportOptions_dataCharacterEncoding,
    delimitedTextImportOptions_delimiter,

    -- ** DestinationOptions
    destinationOptions_columnMap,

    -- ** FailedBatchItem
    failedBatchItem_id,
    failedBatchItem_errorMessage,

    -- ** Filter
    filter_contextRowId,
    filter_formula,

    -- ** ImportDataSource
    importDataSource_dataSourceConfig,

    -- ** ImportDataSourceConfig
    importDataSourceConfig_dataSourceUrl,

    -- ** ImportJobSubmitter
    importJobSubmitter_email,
    importJobSubmitter_userArn,

    -- ** ImportOptions
    importOptions_delimitedTextOptions,
    importOptions_destinationOptions,

    -- ** ResultRow
    resultRow_rowId,
    resultRow_dataItems,

    -- ** ResultSet
    resultSet_headers,
    resultSet_rows,

    -- ** SourceDataColumnProperties
    sourceDataColumnProperties_columnIndex,

    -- ** Table
    table_tableId,
    table_tableName,

    -- ** TableColumn
    tableColumn_format,
    tableColumn_tableColumnName,
    tableColumn_tableColumnId,

    -- ** TableDataImportJobMetadata
    tableDataImportJobMetadata_submitter,
    tableDataImportJobMetadata_submitTime,
    tableDataImportJobMetadata_importOptions,
    tableDataImportJobMetadata_dataSource,

    -- ** TableRow
    tableRow_rowId,
    tableRow_cells,

    -- ** UpdateRowData
    updateRowData_rowId,
    updateRowData_cellsToUpdate,

    -- ** UpsertRowData
    upsertRowData_batchItemId,
    upsertRowData_filter,
    upsertRowData_cellsToUpdate,

    -- ** UpsertRowsResult
    upsertRowsResult_rowIds,
    upsertRowsResult_upsertAction,

    -- ** VariableValue
    variableValue_rawValue,
  )
where

import Amazonka.HoneyCode.BatchCreateTableRows
import Amazonka.HoneyCode.BatchDeleteTableRows
import Amazonka.HoneyCode.BatchUpdateTableRows
import Amazonka.HoneyCode.BatchUpsertTableRows
import Amazonka.HoneyCode.DescribeTableDataImportJob
import Amazonka.HoneyCode.GetScreenData
import Amazonka.HoneyCode.InvokeScreenAutomation
import Amazonka.HoneyCode.ListTableColumns
import Amazonka.HoneyCode.ListTableRows
import Amazonka.HoneyCode.ListTables
import Amazonka.HoneyCode.QueryTableRows
import Amazonka.HoneyCode.StartTableDataImportJob
import Amazonka.HoneyCode.Types.Cell
import Amazonka.HoneyCode.Types.CellInput
import Amazonka.HoneyCode.Types.ColumnMetadata
import Amazonka.HoneyCode.Types.CreateRowData
import Amazonka.HoneyCode.Types.DataItem
import Amazonka.HoneyCode.Types.DelimitedTextImportOptions
import Amazonka.HoneyCode.Types.DestinationOptions
import Amazonka.HoneyCode.Types.FailedBatchItem
import Amazonka.HoneyCode.Types.Filter
import Amazonka.HoneyCode.Types.ImportDataSource
import Amazonka.HoneyCode.Types.ImportDataSourceConfig
import Amazonka.HoneyCode.Types.ImportJobSubmitter
import Amazonka.HoneyCode.Types.ImportOptions
import Amazonka.HoneyCode.Types.ResultRow
import Amazonka.HoneyCode.Types.ResultSet
import Amazonka.HoneyCode.Types.SourceDataColumnProperties
import Amazonka.HoneyCode.Types.Table
import Amazonka.HoneyCode.Types.TableColumn
import Amazonka.HoneyCode.Types.TableDataImportJobMetadata
import Amazonka.HoneyCode.Types.TableRow
import Amazonka.HoneyCode.Types.UpdateRowData
import Amazonka.HoneyCode.Types.UpsertRowData
import Amazonka.HoneyCode.Types.UpsertRowsResult
import Amazonka.HoneyCode.Types.VariableValue
