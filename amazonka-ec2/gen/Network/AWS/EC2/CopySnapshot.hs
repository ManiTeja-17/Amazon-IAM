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
-- Module      : Network.AWS.EC2.CopySnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a point-in-time snapshot of an EBS volume and stores it in Amazon
-- S3. You can copy a snapshot within the same Region, from one Region to
-- another, or from a Region to an Outpost. You can\'t copy a snapshot from
-- an Outpost to a Region, from one Outpost to another, or within the same
-- Outpost.
--
-- You can use the snapshot to create EBS volumes or Amazon Machine Images
-- (AMIs).
--
-- When copying snapshots to a Region, copies of encrypted EBS snapshots
-- remain encrypted. Copies of unencrypted snapshots remain unencrypted,
-- unless you enable encryption for the snapshot copy operation. By
-- default, encrypted snapshot copies use the default AWS Key Management
-- Service (AWS KMS) customer master key (CMK); however, you can specify a
-- different CMK. To copy an encrypted snapshot that has been shared from
-- another account, you must have permissions for the CMK used to encrypt
-- the snapshot.
--
-- Snapshots copied to an Outpost are encrypted by default using the
-- default encryption key for the Region, or a different key that you
-- specify in the request using __KmsKeyId__. Outposts do not support
-- unencrypted snapshots. For more information,
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami Amazon EBS local snapshots on Outposts>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- Snapshots created by copying another snapshot have an arbitrary volume
-- ID that should not be used for any purpose.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html Copying an Amazon EBS snapshot>
-- in the /Amazon Elastic Compute Cloud User Guide/.
module Network.AWS.EC2.CopySnapshot
  ( -- * Creating a Request
    CopySnapshot (..),
    newCopySnapshot,

    -- * Request Lenses
    copySnapshot_tagSpecifications,
    copySnapshot_destinationRegion,
    copySnapshot_dryRun,
    copySnapshot_encrypted,
    copySnapshot_kmsKeyId,
    copySnapshot_destinationOutpostArn,
    copySnapshot_presignedUrl,
    copySnapshot_description,
    copySnapshot_sourceRegion,
    copySnapshot_sourceSnapshotId,

    -- * Destructuring the Response
    CopySnapshotResponse (..),
    newCopySnapshotResponse,

    -- * Response Lenses
    copySnapshotResponse_snapshotId,
    copySnapshotResponse_tags,
    copySnapshotResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCopySnapshot' smart constructor.
data CopySnapshot = CopySnapshot'
  { -- | The tags to apply to the new snapshot.
    tagSpecifications :: Core.Maybe [TagSpecification],
    -- | The destination Region to use in the @PresignedUrl@ parameter of a
    -- snapshot copy operation. This parameter is only valid for specifying the
    -- destination Region in a @PresignedUrl@ parameter, where it is required.
    --
    -- The snapshot copy is sent to the regional endpoint that you sent the
    -- HTTP request to (for example, @ec2.us-east-1.amazonaws.com@). With the
    -- AWS CLI, this is specified using the @--region@ parameter or the default
    -- Region in your AWS configuration file.
    destinationRegion :: Core.Maybe Core.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | To encrypt a copy of an unencrypted snapshot if encryption by default is
    -- not enabled, enable encryption using this parameter. Otherwise, omit
    -- this parameter. Encrypted snapshots are encrypted, even if you omit this
    -- parameter and encryption by default is not enabled. You cannot set this
    -- parameter to false. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS encryption>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    encrypted :: Core.Maybe Core.Bool,
    -- | The identifier of the AWS Key Management Service (AWS KMS) customer
    -- master key (CMK) to use for Amazon EBS encryption. If this parameter is
    -- not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is
    -- specified, the encrypted state must be @true@.
    --
    -- You can specify the CMK using any of the following:
    --
    -- -   Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
    --
    -- -   Key alias. For example, alias\/ExampleAlias.
    --
    -- -   Key ARN. For example,
    --     arn:aws:kms:us-east-1:012345678910:key\/1234abcd-12ab-34cd-56ef-1234567890ab.
    --
    -- -   Alias ARN. For example,
    --     arn:aws:kms:us-east-1:012345678910:alias\/ExampleAlias.
    --
    -- AWS authenticates the CMK asynchronously. Therefore, if you specify an
    -- ID, alias, or ARN that is not valid, the action can appear to complete,
    -- but eventually fails.
    kmsKeyId :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) of the Outpost to which to copy the
    -- snapshot. Only specify this parameter when copying a snapshot from an
    -- AWS Region to an Outpost. The snapshot must be in the Region for the
    -- destination Outpost. You cannot copy a snapshot from an Outpost to a
    -- Region, from one Outpost to another, or within the same Outpost.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots Copying snapshots from an AWS Region to an Outpost>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    destinationOutpostArn :: Core.Maybe Core.Text,
    -- | When you copy an encrypted source snapshot using the Amazon EC2 Query
    -- API, you must supply a pre-signed URL. This parameter is optional for
    -- unencrypted snapshots. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html Query requests>.
    --
    -- The @PresignedUrl@ should use the snapshot source endpoint, the
    -- @CopySnapshot@ action, and include the @SourceRegion@,
    -- @SourceSnapshotId@, and @DestinationRegion@ parameters. The
    -- @PresignedUrl@ must be signed using AWS Signature Version 4. Because EBS
    -- snapshots are stored in Amazon S3, the signing algorithm for this
    -- parameter uses the same logic that is described in
    -- <https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html Authenticating Requests: Using Query Parameters (AWS Signature Version 4)>
    -- in the /Amazon Simple Storage Service API Reference/. An invalid or
    -- improperly signed @PresignedUrl@ will cause the copy operation to fail
    -- asynchronously, and the snapshot will move to an @error@ state.
    presignedUrl :: Core.Maybe Core.Text,
    -- | A description for the EBS snapshot.
    description :: Core.Maybe Core.Text,
    -- | The ID of the Region that contains the snapshot to be copied.
    sourceRegion :: Core.Text,
    -- | The ID of the EBS snapshot to copy.
    sourceSnapshotId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CopySnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagSpecifications', 'copySnapshot_tagSpecifications' - The tags to apply to the new snapshot.
--
-- 'destinationRegion', 'copySnapshot_destinationRegion' - The destination Region to use in the @PresignedUrl@ parameter of a
-- snapshot copy operation. This parameter is only valid for specifying the
-- destination Region in a @PresignedUrl@ parameter, where it is required.
--
-- The snapshot copy is sent to the regional endpoint that you sent the
-- HTTP request to (for example, @ec2.us-east-1.amazonaws.com@). With the
-- AWS CLI, this is specified using the @--region@ parameter or the default
-- Region in your AWS configuration file.
--
-- 'dryRun', 'copySnapshot_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'encrypted', 'copySnapshot_encrypted' - To encrypt a copy of an unencrypted snapshot if encryption by default is
-- not enabled, enable encryption using this parameter. Otherwise, omit
-- this parameter. Encrypted snapshots are encrypted, even if you omit this
-- parameter and encryption by default is not enabled. You cannot set this
-- parameter to false. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS encryption>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- 'kmsKeyId', 'copySnapshot_kmsKeyId' - The identifier of the AWS Key Management Service (AWS KMS) customer
-- master key (CMK) to use for Amazon EBS encryption. If this parameter is
-- not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is
-- specified, the encrypted state must be @true@.
--
-- You can specify the CMK using any of the following:
--
-- -   Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
--
-- -   Key alias. For example, alias\/ExampleAlias.
--
-- -   Key ARN. For example,
--     arn:aws:kms:us-east-1:012345678910:key\/1234abcd-12ab-34cd-56ef-1234567890ab.
--
-- -   Alias ARN. For example,
--     arn:aws:kms:us-east-1:012345678910:alias\/ExampleAlias.
--
-- AWS authenticates the CMK asynchronously. Therefore, if you specify an
-- ID, alias, or ARN that is not valid, the action can appear to complete,
-- but eventually fails.
--
-- 'destinationOutpostArn', 'copySnapshot_destinationOutpostArn' - The Amazon Resource Name (ARN) of the Outpost to which to copy the
-- snapshot. Only specify this parameter when copying a snapshot from an
-- AWS Region to an Outpost. The snapshot must be in the Region for the
-- destination Outpost. You cannot copy a snapshot from an Outpost to a
-- Region, from one Outpost to another, or within the same Outpost.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots Copying snapshots from an AWS Region to an Outpost>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- 'presignedUrl', 'copySnapshot_presignedUrl' - When you copy an encrypted source snapshot using the Amazon EC2 Query
-- API, you must supply a pre-signed URL. This parameter is optional for
-- unencrypted snapshots. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html Query requests>.
--
-- The @PresignedUrl@ should use the snapshot source endpoint, the
-- @CopySnapshot@ action, and include the @SourceRegion@,
-- @SourceSnapshotId@, and @DestinationRegion@ parameters. The
-- @PresignedUrl@ must be signed using AWS Signature Version 4. Because EBS
-- snapshots are stored in Amazon S3, the signing algorithm for this
-- parameter uses the same logic that is described in
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html Authenticating Requests: Using Query Parameters (AWS Signature Version 4)>
-- in the /Amazon Simple Storage Service API Reference/. An invalid or
-- improperly signed @PresignedUrl@ will cause the copy operation to fail
-- asynchronously, and the snapshot will move to an @error@ state.
--
-- 'description', 'copySnapshot_description' - A description for the EBS snapshot.
--
-- 'sourceRegion', 'copySnapshot_sourceRegion' - The ID of the Region that contains the snapshot to be copied.
--
-- 'sourceSnapshotId', 'copySnapshot_sourceSnapshotId' - The ID of the EBS snapshot to copy.
newCopySnapshot ::
  -- | 'sourceRegion'
  Core.Text ->
  -- | 'sourceSnapshotId'
  Core.Text ->
  CopySnapshot
newCopySnapshot pSourceRegion_ pSourceSnapshotId_ =
  CopySnapshot'
    { tagSpecifications = Core.Nothing,
      destinationRegion = Core.Nothing,
      dryRun = Core.Nothing,
      encrypted = Core.Nothing,
      kmsKeyId = Core.Nothing,
      destinationOutpostArn = Core.Nothing,
      presignedUrl = Core.Nothing,
      description = Core.Nothing,
      sourceRegion = pSourceRegion_,
      sourceSnapshotId = pSourceSnapshotId_
    }

-- | The tags to apply to the new snapshot.
copySnapshot_tagSpecifications :: Lens.Lens' CopySnapshot (Core.Maybe [TagSpecification])
copySnapshot_tagSpecifications = Lens.lens (\CopySnapshot' {tagSpecifications} -> tagSpecifications) (\s@CopySnapshot' {} a -> s {tagSpecifications = a} :: CopySnapshot) Core.. Lens.mapping Lens._Coerce

-- | The destination Region to use in the @PresignedUrl@ parameter of a
-- snapshot copy operation. This parameter is only valid for specifying the
-- destination Region in a @PresignedUrl@ parameter, where it is required.
--
-- The snapshot copy is sent to the regional endpoint that you sent the
-- HTTP request to (for example, @ec2.us-east-1.amazonaws.com@). With the
-- AWS CLI, this is specified using the @--region@ parameter or the default
-- Region in your AWS configuration file.
copySnapshot_destinationRegion :: Lens.Lens' CopySnapshot (Core.Maybe Core.Text)
copySnapshot_destinationRegion = Lens.lens (\CopySnapshot' {destinationRegion} -> destinationRegion) (\s@CopySnapshot' {} a -> s {destinationRegion = a} :: CopySnapshot)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
copySnapshot_dryRun :: Lens.Lens' CopySnapshot (Core.Maybe Core.Bool)
copySnapshot_dryRun = Lens.lens (\CopySnapshot' {dryRun} -> dryRun) (\s@CopySnapshot' {} a -> s {dryRun = a} :: CopySnapshot)

-- | To encrypt a copy of an unencrypted snapshot if encryption by default is
-- not enabled, enable encryption using this parameter. Otherwise, omit
-- this parameter. Encrypted snapshots are encrypted, even if you omit this
-- parameter and encryption by default is not enabled. You cannot set this
-- parameter to false. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS encryption>
-- in the /Amazon Elastic Compute Cloud User Guide/.
copySnapshot_encrypted :: Lens.Lens' CopySnapshot (Core.Maybe Core.Bool)
copySnapshot_encrypted = Lens.lens (\CopySnapshot' {encrypted} -> encrypted) (\s@CopySnapshot' {} a -> s {encrypted = a} :: CopySnapshot)

-- | The identifier of the AWS Key Management Service (AWS KMS) customer
-- master key (CMK) to use for Amazon EBS encryption. If this parameter is
-- not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is
-- specified, the encrypted state must be @true@.
--
-- You can specify the CMK using any of the following:
--
-- -   Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
--
-- -   Key alias. For example, alias\/ExampleAlias.
--
-- -   Key ARN. For example,
--     arn:aws:kms:us-east-1:012345678910:key\/1234abcd-12ab-34cd-56ef-1234567890ab.
--
-- -   Alias ARN. For example,
--     arn:aws:kms:us-east-1:012345678910:alias\/ExampleAlias.
--
-- AWS authenticates the CMK asynchronously. Therefore, if you specify an
-- ID, alias, or ARN that is not valid, the action can appear to complete,
-- but eventually fails.
copySnapshot_kmsKeyId :: Lens.Lens' CopySnapshot (Core.Maybe Core.Text)
copySnapshot_kmsKeyId = Lens.lens (\CopySnapshot' {kmsKeyId} -> kmsKeyId) (\s@CopySnapshot' {} a -> s {kmsKeyId = a} :: CopySnapshot)

-- | The Amazon Resource Name (ARN) of the Outpost to which to copy the
-- snapshot. Only specify this parameter when copying a snapshot from an
-- AWS Region to an Outpost. The snapshot must be in the Region for the
-- destination Outpost. You cannot copy a snapshot from an Outpost to a
-- Region, from one Outpost to another, or within the same Outpost.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots Copying snapshots from an AWS Region to an Outpost>
-- in the /Amazon Elastic Compute Cloud User Guide/.
copySnapshot_destinationOutpostArn :: Lens.Lens' CopySnapshot (Core.Maybe Core.Text)
copySnapshot_destinationOutpostArn = Lens.lens (\CopySnapshot' {destinationOutpostArn} -> destinationOutpostArn) (\s@CopySnapshot' {} a -> s {destinationOutpostArn = a} :: CopySnapshot)

-- | When you copy an encrypted source snapshot using the Amazon EC2 Query
-- API, you must supply a pre-signed URL. This parameter is optional for
-- unencrypted snapshots. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html Query requests>.
--
-- The @PresignedUrl@ should use the snapshot source endpoint, the
-- @CopySnapshot@ action, and include the @SourceRegion@,
-- @SourceSnapshotId@, and @DestinationRegion@ parameters. The
-- @PresignedUrl@ must be signed using AWS Signature Version 4. Because EBS
-- snapshots are stored in Amazon S3, the signing algorithm for this
-- parameter uses the same logic that is described in
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html Authenticating Requests: Using Query Parameters (AWS Signature Version 4)>
-- in the /Amazon Simple Storage Service API Reference/. An invalid or
-- improperly signed @PresignedUrl@ will cause the copy operation to fail
-- asynchronously, and the snapshot will move to an @error@ state.
copySnapshot_presignedUrl :: Lens.Lens' CopySnapshot (Core.Maybe Core.Text)
copySnapshot_presignedUrl = Lens.lens (\CopySnapshot' {presignedUrl} -> presignedUrl) (\s@CopySnapshot' {} a -> s {presignedUrl = a} :: CopySnapshot)

-- | A description for the EBS snapshot.
copySnapshot_description :: Lens.Lens' CopySnapshot (Core.Maybe Core.Text)
copySnapshot_description = Lens.lens (\CopySnapshot' {description} -> description) (\s@CopySnapshot' {} a -> s {description = a} :: CopySnapshot)

-- | The ID of the Region that contains the snapshot to be copied.
copySnapshot_sourceRegion :: Lens.Lens' CopySnapshot Core.Text
copySnapshot_sourceRegion = Lens.lens (\CopySnapshot' {sourceRegion} -> sourceRegion) (\s@CopySnapshot' {} a -> s {sourceRegion = a} :: CopySnapshot)

-- | The ID of the EBS snapshot to copy.
copySnapshot_sourceSnapshotId :: Lens.Lens' CopySnapshot Core.Text
copySnapshot_sourceSnapshotId = Lens.lens (\CopySnapshot' {sourceSnapshotId} -> sourceSnapshotId) (\s@CopySnapshot' {} a -> s {sourceSnapshotId = a} :: CopySnapshot)

instance Core.AWSRequest CopySnapshot where
  type AWSResponse CopySnapshot = CopySnapshotResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CopySnapshotResponse'
            Core.<$> (x Core..@? "snapshotId")
            Core.<*> ( x Core..@? "tagSet" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "item")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CopySnapshot

instance Core.NFData CopySnapshot

instance Core.ToHeaders CopySnapshot where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CopySnapshot where
  toPath = Core.const "/"

instance Core.ToQuery CopySnapshot where
  toQuery CopySnapshot' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("CopySnapshot" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        Core.toQuery
          ( Core.toQueryList "TagSpecification"
              Core.<$> tagSpecifications
          ),
        "DestinationRegion" Core.=: destinationRegion,
        "DryRun" Core.=: dryRun,
        "Encrypted" Core.=: encrypted,
        "KmsKeyId" Core.=: kmsKeyId,
        "DestinationOutpostArn"
          Core.=: destinationOutpostArn,
        "PresignedUrl" Core.=: presignedUrl,
        "Description" Core.=: description,
        "SourceRegion" Core.=: sourceRegion,
        "SourceSnapshotId" Core.=: sourceSnapshotId
      ]

-- | /See:/ 'newCopySnapshotResponse' smart constructor.
data CopySnapshotResponse = CopySnapshotResponse'
  { -- | The ID of the new snapshot.
    snapshotId :: Core.Maybe Core.Text,
    -- | Any tags applied to the new snapshot.
    tags :: Core.Maybe [Tag],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CopySnapshotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snapshotId', 'copySnapshotResponse_snapshotId' - The ID of the new snapshot.
--
-- 'tags', 'copySnapshotResponse_tags' - Any tags applied to the new snapshot.
--
-- 'httpStatus', 'copySnapshotResponse_httpStatus' - The response's http status code.
newCopySnapshotResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CopySnapshotResponse
newCopySnapshotResponse pHttpStatus_ =
  CopySnapshotResponse'
    { snapshotId = Core.Nothing,
      tags = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the new snapshot.
copySnapshotResponse_snapshotId :: Lens.Lens' CopySnapshotResponse (Core.Maybe Core.Text)
copySnapshotResponse_snapshotId = Lens.lens (\CopySnapshotResponse' {snapshotId} -> snapshotId) (\s@CopySnapshotResponse' {} a -> s {snapshotId = a} :: CopySnapshotResponse)

-- | Any tags applied to the new snapshot.
copySnapshotResponse_tags :: Lens.Lens' CopySnapshotResponse (Core.Maybe [Tag])
copySnapshotResponse_tags = Lens.lens (\CopySnapshotResponse' {tags} -> tags) (\s@CopySnapshotResponse' {} a -> s {tags = a} :: CopySnapshotResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
copySnapshotResponse_httpStatus :: Lens.Lens' CopySnapshotResponse Core.Int
copySnapshotResponse_httpStatus = Lens.lens (\CopySnapshotResponse' {httpStatus} -> httpStatus) (\s@CopySnapshotResponse' {} a -> s {httpStatus = a} :: CopySnapshotResponse)

instance Core.NFData CopySnapshotResponse
