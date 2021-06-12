{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ImportTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ImportTask where

import qualified Network.AWS.Core as Core
import Network.AWS.Discovery.Types.ImportStatus
import qualified Network.AWS.Lens as Lens

-- | An array of information related to the import task request that includes
-- status information, times, IDs, the Amazon S3 Object URL for the import
-- file, and more.
--
-- /See:/ 'newImportTask' smart constructor.
data ImportTask = ImportTask'
  { -- | The status of the import task. An import can have the status of
    -- @IMPORT_COMPLETE@ and still have some records fail to import from the
    -- overall request. More information can be found in the downloadable
    -- archive defined in the @errorsAndFailedEntriesZip@ field, or in the
    -- Migration Hub management console.
    status :: Core.Maybe ImportStatus,
    -- | The total number of application records in the import file that were
    -- successfully imported.
    applicationImportSuccess :: Core.Maybe Core.Int,
    -- | The time that the import task request was made, presented in the Unix
    -- time stamp format.
    importRequestTime :: Core.Maybe Core.POSIX,
    -- | The total number of server records in the import file that failed to be
    -- imported.
    serverImportFailure :: Core.Maybe Core.Int,
    -- | The unique ID for a specific import task. These IDs aren\'t globally
    -- unique, but they are unique within an AWS account.
    importTaskId :: Core.Maybe Core.Text,
    -- | A link to a compressed archive folder (in the ZIP format) that contains
    -- an error log and a file of failed records. You can use these two files
    -- to quickly identify records that failed, why they failed, and correct
    -- those records. Afterward, you can upload the corrected file to your
    -- Amazon S3 bucket and create another import task request.
    --
    -- This field also includes authorization information so you can confirm
    -- the authenticity of the compressed archive before you download it.
    --
    -- If some records failed to be imported we recommend that you correct the
    -- records in the failed entries file and then imports that failed entries
    -- file. This prevents you from having to correct and update the larger
    -- original file and attempt importing it again.
    errorsAndFailedEntriesZip :: Core.Maybe Core.Text,
    -- | A descriptive name for an import task. You can use this name to filter
    -- future requests related to this import task, such as identifying
    -- applications and servers that were included in this import task. We
    -- recommend that you use a meaningful name for each import task.
    name :: Core.Maybe Core.Text,
    -- | The total number of application records in the import file that failed
    -- to be imported.
    applicationImportFailure :: Core.Maybe Core.Int,
    -- | The time that the import task request finished, presented in the Unix
    -- time stamp format.
    importCompletionTime :: Core.Maybe Core.POSIX,
    -- | The URL for your import file that you\'ve uploaded to Amazon S3.
    importUrl :: Core.Maybe Core.Text,
    -- | A unique token used to prevent the same import request from occurring
    -- more than once. If you didn\'t provide a token, a token was
    -- automatically generated when the import task request was sent.
    clientRequestToken :: Core.Maybe Core.Text,
    -- | The total number of server records in the import file that were
    -- successfully imported.
    serverImportSuccess :: Core.Maybe Core.Int,
    -- | The time that the import task request was deleted, presented in the Unix
    -- time stamp format.
    importDeletedTime :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ImportTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'importTask_status' - The status of the import task. An import can have the status of
-- @IMPORT_COMPLETE@ and still have some records fail to import from the
-- overall request. More information can be found in the downloadable
-- archive defined in the @errorsAndFailedEntriesZip@ field, or in the
-- Migration Hub management console.
--
-- 'applicationImportSuccess', 'importTask_applicationImportSuccess' - The total number of application records in the import file that were
-- successfully imported.
--
-- 'importRequestTime', 'importTask_importRequestTime' - The time that the import task request was made, presented in the Unix
-- time stamp format.
--
-- 'serverImportFailure', 'importTask_serverImportFailure' - The total number of server records in the import file that failed to be
-- imported.
--
-- 'importTaskId', 'importTask_importTaskId' - The unique ID for a specific import task. These IDs aren\'t globally
-- unique, but they are unique within an AWS account.
--
-- 'errorsAndFailedEntriesZip', 'importTask_errorsAndFailedEntriesZip' - A link to a compressed archive folder (in the ZIP format) that contains
-- an error log and a file of failed records. You can use these two files
-- to quickly identify records that failed, why they failed, and correct
-- those records. Afterward, you can upload the corrected file to your
-- Amazon S3 bucket and create another import task request.
--
-- This field also includes authorization information so you can confirm
-- the authenticity of the compressed archive before you download it.
--
-- If some records failed to be imported we recommend that you correct the
-- records in the failed entries file and then imports that failed entries
-- file. This prevents you from having to correct and update the larger
-- original file and attempt importing it again.
--
-- 'name', 'importTask_name' - A descriptive name for an import task. You can use this name to filter
-- future requests related to this import task, such as identifying
-- applications and servers that were included in this import task. We
-- recommend that you use a meaningful name for each import task.
--
-- 'applicationImportFailure', 'importTask_applicationImportFailure' - The total number of application records in the import file that failed
-- to be imported.
--
-- 'importCompletionTime', 'importTask_importCompletionTime' - The time that the import task request finished, presented in the Unix
-- time stamp format.
--
-- 'importUrl', 'importTask_importUrl' - The URL for your import file that you\'ve uploaded to Amazon S3.
--
-- 'clientRequestToken', 'importTask_clientRequestToken' - A unique token used to prevent the same import request from occurring
-- more than once. If you didn\'t provide a token, a token was
-- automatically generated when the import task request was sent.
--
-- 'serverImportSuccess', 'importTask_serverImportSuccess' - The total number of server records in the import file that were
-- successfully imported.
--
-- 'importDeletedTime', 'importTask_importDeletedTime' - The time that the import task request was deleted, presented in the Unix
-- time stamp format.
newImportTask ::
  ImportTask
newImportTask =
  ImportTask'
    { status = Core.Nothing,
      applicationImportSuccess = Core.Nothing,
      importRequestTime = Core.Nothing,
      serverImportFailure = Core.Nothing,
      importTaskId = Core.Nothing,
      errorsAndFailedEntriesZip = Core.Nothing,
      name = Core.Nothing,
      applicationImportFailure = Core.Nothing,
      importCompletionTime = Core.Nothing,
      importUrl = Core.Nothing,
      clientRequestToken = Core.Nothing,
      serverImportSuccess = Core.Nothing,
      importDeletedTime = Core.Nothing
    }

-- | The status of the import task. An import can have the status of
-- @IMPORT_COMPLETE@ and still have some records fail to import from the
-- overall request. More information can be found in the downloadable
-- archive defined in the @errorsAndFailedEntriesZip@ field, or in the
-- Migration Hub management console.
importTask_status :: Lens.Lens' ImportTask (Core.Maybe ImportStatus)
importTask_status = Lens.lens (\ImportTask' {status} -> status) (\s@ImportTask' {} a -> s {status = a} :: ImportTask)

-- | The total number of application records in the import file that were
-- successfully imported.
importTask_applicationImportSuccess :: Lens.Lens' ImportTask (Core.Maybe Core.Int)
importTask_applicationImportSuccess = Lens.lens (\ImportTask' {applicationImportSuccess} -> applicationImportSuccess) (\s@ImportTask' {} a -> s {applicationImportSuccess = a} :: ImportTask)

-- | The time that the import task request was made, presented in the Unix
-- time stamp format.
importTask_importRequestTime :: Lens.Lens' ImportTask (Core.Maybe Core.UTCTime)
importTask_importRequestTime = Lens.lens (\ImportTask' {importRequestTime} -> importRequestTime) (\s@ImportTask' {} a -> s {importRequestTime = a} :: ImportTask) Core.. Lens.mapping Core._Time

-- | The total number of server records in the import file that failed to be
-- imported.
importTask_serverImportFailure :: Lens.Lens' ImportTask (Core.Maybe Core.Int)
importTask_serverImportFailure = Lens.lens (\ImportTask' {serverImportFailure} -> serverImportFailure) (\s@ImportTask' {} a -> s {serverImportFailure = a} :: ImportTask)

-- | The unique ID for a specific import task. These IDs aren\'t globally
-- unique, but they are unique within an AWS account.
importTask_importTaskId :: Lens.Lens' ImportTask (Core.Maybe Core.Text)
importTask_importTaskId = Lens.lens (\ImportTask' {importTaskId} -> importTaskId) (\s@ImportTask' {} a -> s {importTaskId = a} :: ImportTask)

-- | A link to a compressed archive folder (in the ZIP format) that contains
-- an error log and a file of failed records. You can use these two files
-- to quickly identify records that failed, why they failed, and correct
-- those records. Afterward, you can upload the corrected file to your
-- Amazon S3 bucket and create another import task request.
--
-- This field also includes authorization information so you can confirm
-- the authenticity of the compressed archive before you download it.
--
-- If some records failed to be imported we recommend that you correct the
-- records in the failed entries file and then imports that failed entries
-- file. This prevents you from having to correct and update the larger
-- original file and attempt importing it again.
importTask_errorsAndFailedEntriesZip :: Lens.Lens' ImportTask (Core.Maybe Core.Text)
importTask_errorsAndFailedEntriesZip = Lens.lens (\ImportTask' {errorsAndFailedEntriesZip} -> errorsAndFailedEntriesZip) (\s@ImportTask' {} a -> s {errorsAndFailedEntriesZip = a} :: ImportTask)

-- | A descriptive name for an import task. You can use this name to filter
-- future requests related to this import task, such as identifying
-- applications and servers that were included in this import task. We
-- recommend that you use a meaningful name for each import task.
importTask_name :: Lens.Lens' ImportTask (Core.Maybe Core.Text)
importTask_name = Lens.lens (\ImportTask' {name} -> name) (\s@ImportTask' {} a -> s {name = a} :: ImportTask)

-- | The total number of application records in the import file that failed
-- to be imported.
importTask_applicationImportFailure :: Lens.Lens' ImportTask (Core.Maybe Core.Int)
importTask_applicationImportFailure = Lens.lens (\ImportTask' {applicationImportFailure} -> applicationImportFailure) (\s@ImportTask' {} a -> s {applicationImportFailure = a} :: ImportTask)

-- | The time that the import task request finished, presented in the Unix
-- time stamp format.
importTask_importCompletionTime :: Lens.Lens' ImportTask (Core.Maybe Core.UTCTime)
importTask_importCompletionTime = Lens.lens (\ImportTask' {importCompletionTime} -> importCompletionTime) (\s@ImportTask' {} a -> s {importCompletionTime = a} :: ImportTask) Core.. Lens.mapping Core._Time

-- | The URL for your import file that you\'ve uploaded to Amazon S3.
importTask_importUrl :: Lens.Lens' ImportTask (Core.Maybe Core.Text)
importTask_importUrl = Lens.lens (\ImportTask' {importUrl} -> importUrl) (\s@ImportTask' {} a -> s {importUrl = a} :: ImportTask)

-- | A unique token used to prevent the same import request from occurring
-- more than once. If you didn\'t provide a token, a token was
-- automatically generated when the import task request was sent.
importTask_clientRequestToken :: Lens.Lens' ImportTask (Core.Maybe Core.Text)
importTask_clientRequestToken = Lens.lens (\ImportTask' {clientRequestToken} -> clientRequestToken) (\s@ImportTask' {} a -> s {clientRequestToken = a} :: ImportTask)

-- | The total number of server records in the import file that were
-- successfully imported.
importTask_serverImportSuccess :: Lens.Lens' ImportTask (Core.Maybe Core.Int)
importTask_serverImportSuccess = Lens.lens (\ImportTask' {serverImportSuccess} -> serverImportSuccess) (\s@ImportTask' {} a -> s {serverImportSuccess = a} :: ImportTask)

-- | The time that the import task request was deleted, presented in the Unix
-- time stamp format.
importTask_importDeletedTime :: Lens.Lens' ImportTask (Core.Maybe Core.UTCTime)
importTask_importDeletedTime = Lens.lens (\ImportTask' {importDeletedTime} -> importDeletedTime) (\s@ImportTask' {} a -> s {importDeletedTime = a} :: ImportTask) Core.. Lens.mapping Core._Time

instance Core.FromJSON ImportTask where
  parseJSON =
    Core.withObject
      "ImportTask"
      ( \x ->
          ImportTask'
            Core.<$> (x Core..:? "status")
            Core.<*> (x Core..:? "applicationImportSuccess")
            Core.<*> (x Core..:? "importRequestTime")
            Core.<*> (x Core..:? "serverImportFailure")
            Core.<*> (x Core..:? "importTaskId")
            Core.<*> (x Core..:? "errorsAndFailedEntriesZip")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "applicationImportFailure")
            Core.<*> (x Core..:? "importCompletionTime")
            Core.<*> (x Core..:? "importUrl")
            Core.<*> (x Core..:? "clientRequestToken")
            Core.<*> (x Core..:? "serverImportSuccess")
            Core.<*> (x Core..:? "importDeletedTime")
      )

instance Core.Hashable ImportTask

instance Core.NFData ImportTask
