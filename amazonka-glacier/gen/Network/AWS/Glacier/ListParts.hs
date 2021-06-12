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
-- Module      : Network.AWS.Glacier.ListParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists the parts of an archive that have been uploaded in
-- a specific multipart upload. You can make this request at any time
-- during an in-progress multipart upload before you complete the upload
-- (see CompleteMultipartUpload. List Parts returns an error for completed
-- uploads. The list returned in the List Parts response is sorted by part
-- range.
--
-- The List Parts operation supports pagination. By default, this operation
-- returns up to 50 uploaded parts in the response. You should always check
-- the response for a @marker@ at which to continue the list; if there are
-- no more items the @marker@ is @null@. To return a list of parts that
-- begins at a specific part, set the @marker@ request parameter to the
-- value you obtained from a previous List Parts request. You can also
-- limit the number of parts returned in the response by specifying the
-- @limit@ parameter in the request.
--
-- An AWS account has full permission to perform all operations (actions).
-- However, AWS Identity and Access Management (IAM) users don\'t have any
-- permissions by default. You must grant them explicit permission to
-- perform specific actions. For more information, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)>.
--
-- For conceptual information and the underlying REST API, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html Working with Archives in Amazon S3 Glacier>
-- and
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html List Parts>
-- in the /Amazon Glacier Developer Guide/.
--
-- This operation returns paginated results.
module Network.AWS.Glacier.ListParts
  ( -- * Creating a Request
    ListParts (..),
    newListParts,

    -- * Request Lenses
    listParts_limit,
    listParts_marker,
    listParts_accountId,
    listParts_vaultName,
    listParts_uploadId,

    -- * Destructuring the Response
    ListPartsResponse (..),
    newListPartsResponse,

    -- * Response Lenses
    listPartsResponse_partSizeInBytes,
    listPartsResponse_creationDate,
    listPartsResponse_vaultARN,
    listPartsResponse_archiveDescription,
    listPartsResponse_parts,
    listPartsResponse_multipartUploadId,
    listPartsResponse_marker,
    listPartsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Provides options for retrieving a list of parts of an archive that have
-- been uploaded in a specific multipart upload.
--
-- /See:/ 'newListParts' smart constructor.
data ListParts = ListParts'
  { -- | The maximum number of parts to be returned. The default limit is 50. The
    -- number of parts returned might be fewer than the specified limit, but
    -- the number of returned parts never exceeds the limit.
    limit :: Core.Maybe Core.Text,
    -- | An opaque string used for pagination. This value specifies the part at
    -- which the listing of parts should begin. Get the marker value from the
    -- response of a previous List Parts response. You need only include the
    -- marker if you are continuing the pagination of results started in a
    -- previous List Parts request.
    marker :: Core.Maybe Core.Text,
    -- | The @AccountId@ value is the AWS account ID of the account that owns the
    -- vault. You can either specify an AWS account ID or optionally a single
    -- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
    -- ID associated with the credentials used to sign the request. If you use
    -- an account ID, do not include any hyphens (\'-\') in the ID.
    accountId :: Core.Text,
    -- | The name of the vault.
    vaultName :: Core.Text,
    -- | The upload ID of the multipart upload.
    uploadId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListParts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'limit', 'listParts_limit' - The maximum number of parts to be returned. The default limit is 50. The
-- number of parts returned might be fewer than the specified limit, but
-- the number of returned parts never exceeds the limit.
--
-- 'marker', 'listParts_marker' - An opaque string used for pagination. This value specifies the part at
-- which the listing of parts should begin. Get the marker value from the
-- response of a previous List Parts response. You need only include the
-- marker if you are continuing the pagination of results started in a
-- previous List Parts request.
--
-- 'accountId', 'listParts_accountId' - The @AccountId@ value is the AWS account ID of the account that owns the
-- vault. You can either specify an AWS account ID or optionally a single
-- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
-- ID associated with the credentials used to sign the request. If you use
-- an account ID, do not include any hyphens (\'-\') in the ID.
--
-- 'vaultName', 'listParts_vaultName' - The name of the vault.
--
-- 'uploadId', 'listParts_uploadId' - The upload ID of the multipart upload.
newListParts ::
  -- | 'accountId'
  Core.Text ->
  -- | 'vaultName'
  Core.Text ->
  -- | 'uploadId'
  Core.Text ->
  ListParts
newListParts pAccountId_ pVaultName_ pUploadId_ =
  ListParts'
    { limit = Core.Nothing,
      marker = Core.Nothing,
      accountId = pAccountId_,
      vaultName = pVaultName_,
      uploadId = pUploadId_
    }

-- | The maximum number of parts to be returned. The default limit is 50. The
-- number of parts returned might be fewer than the specified limit, but
-- the number of returned parts never exceeds the limit.
listParts_limit :: Lens.Lens' ListParts (Core.Maybe Core.Text)
listParts_limit = Lens.lens (\ListParts' {limit} -> limit) (\s@ListParts' {} a -> s {limit = a} :: ListParts)

-- | An opaque string used for pagination. This value specifies the part at
-- which the listing of parts should begin. Get the marker value from the
-- response of a previous List Parts response. You need only include the
-- marker if you are continuing the pagination of results started in a
-- previous List Parts request.
listParts_marker :: Lens.Lens' ListParts (Core.Maybe Core.Text)
listParts_marker = Lens.lens (\ListParts' {marker} -> marker) (\s@ListParts' {} a -> s {marker = a} :: ListParts)

-- | The @AccountId@ value is the AWS account ID of the account that owns the
-- vault. You can either specify an AWS account ID or optionally a single
-- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
-- ID associated with the credentials used to sign the request. If you use
-- an account ID, do not include any hyphens (\'-\') in the ID.
listParts_accountId :: Lens.Lens' ListParts Core.Text
listParts_accountId = Lens.lens (\ListParts' {accountId} -> accountId) (\s@ListParts' {} a -> s {accountId = a} :: ListParts)

-- | The name of the vault.
listParts_vaultName :: Lens.Lens' ListParts Core.Text
listParts_vaultName = Lens.lens (\ListParts' {vaultName} -> vaultName) (\s@ListParts' {} a -> s {vaultName = a} :: ListParts)

-- | The upload ID of the multipart upload.
listParts_uploadId :: Lens.Lens' ListParts Core.Text
listParts_uploadId = Lens.lens (\ListParts' {uploadId} -> uploadId) (\s@ListParts' {} a -> s {uploadId = a} :: ListParts)

instance Core.AWSPager ListParts where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPartsResponse_marker Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listPartsResponse_parts Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listParts_marker
          Lens..~ rs Lens.^? listPartsResponse_marker Core.. Lens._Just

instance Core.AWSRequest ListParts where
  type AWSResponse ListParts = ListPartsResponse
  request =
    Request.glacierVersionHeader (Core._serviceVersion defaultService)
      Core.. Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPartsResponse'
            Core.<$> (x Core..?> "PartSizeInBytes")
            Core.<*> (x Core..?> "CreationDate")
            Core.<*> (x Core..?> "VaultARN")
            Core.<*> (x Core..?> "ArchiveDescription")
            Core.<*> (x Core..?> "Parts" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "MultipartUploadId")
            Core.<*> (x Core..?> "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListParts

instance Core.NFData ListParts

instance Core.ToHeaders ListParts where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ListParts where
  toPath ListParts' {..} =
    Core.mconcat
      [ "/",
        Core.toBS accountId,
        "/vaults/",
        Core.toBS vaultName,
        "/multipart-uploads/",
        Core.toBS uploadId
      ]

instance Core.ToQuery ListParts where
  toQuery ListParts' {..} =
    Core.mconcat
      ["limit" Core.=: limit, "marker" Core.=: marker]

-- | Contains the Amazon S3 Glacier response to your request.
--
-- /See:/ 'newListPartsResponse' smart constructor.
data ListPartsResponse = ListPartsResponse'
  { -- | The part size in bytes. This is the same value that you specified in the
    -- Initiate Multipart Upload request.
    partSizeInBytes :: Core.Maybe Core.Integer,
    -- | The UTC time at which the multipart upload was initiated.
    creationDate :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) of the vault to which the multipart
    -- upload was initiated.
    vaultARN :: Core.Maybe Core.Text,
    -- | The description of the archive that was specified in the Initiate
    -- Multipart Upload request.
    archiveDescription :: Core.Maybe Core.Text,
    -- | A list of the part sizes of the multipart upload. Each object in the
    -- array contains a @RangeBytes@ and @sha256-tree-hash@ name\/value pair.
    parts :: Core.Maybe [PartListElement],
    -- | The ID of the upload to which the parts are associated.
    multipartUploadId :: Core.Maybe Core.Text,
    -- | An opaque string that represents where to continue pagination of the
    -- results. You use the marker in a new List Parts request to obtain more
    -- jobs in the list. If there are no more parts, this value is @null@.
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListPartsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partSizeInBytes', 'listPartsResponse_partSizeInBytes' - The part size in bytes. This is the same value that you specified in the
-- Initiate Multipart Upload request.
--
-- 'creationDate', 'listPartsResponse_creationDate' - The UTC time at which the multipart upload was initiated.
--
-- 'vaultARN', 'listPartsResponse_vaultARN' - The Amazon Resource Name (ARN) of the vault to which the multipart
-- upload was initiated.
--
-- 'archiveDescription', 'listPartsResponse_archiveDescription' - The description of the archive that was specified in the Initiate
-- Multipart Upload request.
--
-- 'parts', 'listPartsResponse_parts' - A list of the part sizes of the multipart upload. Each object in the
-- array contains a @RangeBytes@ and @sha256-tree-hash@ name\/value pair.
--
-- 'multipartUploadId', 'listPartsResponse_multipartUploadId' - The ID of the upload to which the parts are associated.
--
-- 'marker', 'listPartsResponse_marker' - An opaque string that represents where to continue pagination of the
-- results. You use the marker in a new List Parts request to obtain more
-- jobs in the list. If there are no more parts, this value is @null@.
--
-- 'httpStatus', 'listPartsResponse_httpStatus' - The response's http status code.
newListPartsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListPartsResponse
newListPartsResponse pHttpStatus_ =
  ListPartsResponse'
    { partSizeInBytes = Core.Nothing,
      creationDate = Core.Nothing,
      vaultARN = Core.Nothing,
      archiveDescription = Core.Nothing,
      parts = Core.Nothing,
      multipartUploadId = Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The part size in bytes. This is the same value that you specified in the
-- Initiate Multipart Upload request.
listPartsResponse_partSizeInBytes :: Lens.Lens' ListPartsResponse (Core.Maybe Core.Integer)
listPartsResponse_partSizeInBytes = Lens.lens (\ListPartsResponse' {partSizeInBytes} -> partSizeInBytes) (\s@ListPartsResponse' {} a -> s {partSizeInBytes = a} :: ListPartsResponse)

-- | The UTC time at which the multipart upload was initiated.
listPartsResponse_creationDate :: Lens.Lens' ListPartsResponse (Core.Maybe Core.Text)
listPartsResponse_creationDate = Lens.lens (\ListPartsResponse' {creationDate} -> creationDate) (\s@ListPartsResponse' {} a -> s {creationDate = a} :: ListPartsResponse)

-- | The Amazon Resource Name (ARN) of the vault to which the multipart
-- upload was initiated.
listPartsResponse_vaultARN :: Lens.Lens' ListPartsResponse (Core.Maybe Core.Text)
listPartsResponse_vaultARN = Lens.lens (\ListPartsResponse' {vaultARN} -> vaultARN) (\s@ListPartsResponse' {} a -> s {vaultARN = a} :: ListPartsResponse)

-- | The description of the archive that was specified in the Initiate
-- Multipart Upload request.
listPartsResponse_archiveDescription :: Lens.Lens' ListPartsResponse (Core.Maybe Core.Text)
listPartsResponse_archiveDescription = Lens.lens (\ListPartsResponse' {archiveDescription} -> archiveDescription) (\s@ListPartsResponse' {} a -> s {archiveDescription = a} :: ListPartsResponse)

-- | A list of the part sizes of the multipart upload. Each object in the
-- array contains a @RangeBytes@ and @sha256-tree-hash@ name\/value pair.
listPartsResponse_parts :: Lens.Lens' ListPartsResponse (Core.Maybe [PartListElement])
listPartsResponse_parts = Lens.lens (\ListPartsResponse' {parts} -> parts) (\s@ListPartsResponse' {} a -> s {parts = a} :: ListPartsResponse) Core.. Lens.mapping Lens._Coerce

-- | The ID of the upload to which the parts are associated.
listPartsResponse_multipartUploadId :: Lens.Lens' ListPartsResponse (Core.Maybe Core.Text)
listPartsResponse_multipartUploadId = Lens.lens (\ListPartsResponse' {multipartUploadId} -> multipartUploadId) (\s@ListPartsResponse' {} a -> s {multipartUploadId = a} :: ListPartsResponse)

-- | An opaque string that represents where to continue pagination of the
-- results. You use the marker in a new List Parts request to obtain more
-- jobs in the list. If there are no more parts, this value is @null@.
listPartsResponse_marker :: Lens.Lens' ListPartsResponse (Core.Maybe Core.Text)
listPartsResponse_marker = Lens.lens (\ListPartsResponse' {marker} -> marker) (\s@ListPartsResponse' {} a -> s {marker = a} :: ListPartsResponse)

-- | The response's http status code.
listPartsResponse_httpStatus :: Lens.Lens' ListPartsResponse Core.Int
listPartsResponse_httpStatus = Lens.lens (\ListPartsResponse' {httpStatus} -> httpStatus) (\s@ListPartsResponse' {} a -> s {httpStatus = a} :: ListPartsResponse)

instance Core.NFData ListPartsResponse
