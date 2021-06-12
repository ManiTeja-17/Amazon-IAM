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
-- Module      : Network.AWS.StorageGateway.DescribeSMBSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a description of a Server Message Block (SMB) file share settings
-- from a file gateway. This operation is only supported for file gateways.
module Network.AWS.StorageGateway.DescribeSMBSettings
  ( -- * Creating a Request
    DescribeSMBSettings (..),
    newDescribeSMBSettings,

    -- * Request Lenses
    describeSMBSettings_gatewayARN,

    -- * Destructuring the Response
    DescribeSMBSettingsResponse (..),
    newDescribeSMBSettingsResponse,

    -- * Response Lenses
    describeSMBSettingsResponse_sMBSecurityStrategy,
    describeSMBSettingsResponse_sMBGuestPasswordSet,
    describeSMBSettingsResponse_fileSharesVisible,
    describeSMBSettingsResponse_domainName,
    describeSMBSettingsResponse_activeDirectoryStatus,
    describeSMBSettingsResponse_gatewayARN,
    describeSMBSettingsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'newDescribeSMBSettings' smart constructor.
data DescribeSMBSettings = DescribeSMBSettings'
  { gatewayARN :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeSMBSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayARN', 'describeSMBSettings_gatewayARN' - Undocumented member.
newDescribeSMBSettings ::
  -- | 'gatewayARN'
  Core.Text ->
  DescribeSMBSettings
newDescribeSMBSettings pGatewayARN_ =
  DescribeSMBSettings' {gatewayARN = pGatewayARN_}

-- | Undocumented member.
describeSMBSettings_gatewayARN :: Lens.Lens' DescribeSMBSettings Core.Text
describeSMBSettings_gatewayARN = Lens.lens (\DescribeSMBSettings' {gatewayARN} -> gatewayARN) (\s@DescribeSMBSettings' {} a -> s {gatewayARN = a} :: DescribeSMBSettings)

instance Core.AWSRequest DescribeSMBSettings where
  type
    AWSResponse DescribeSMBSettings =
      DescribeSMBSettingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSMBSettingsResponse'
            Core.<$> (x Core..?> "SMBSecurityStrategy")
            Core.<*> (x Core..?> "SMBGuestPasswordSet")
            Core.<*> (x Core..?> "FileSharesVisible")
            Core.<*> (x Core..?> "DomainName")
            Core.<*> (x Core..?> "ActiveDirectoryStatus")
            Core.<*> (x Core..?> "GatewayARN")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeSMBSettings

instance Core.NFData DescribeSMBSettings

instance Core.ToHeaders DescribeSMBSettings where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.DescribeSMBSettings" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeSMBSettings where
  toJSON DescribeSMBSettings' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("GatewayARN" Core..= gatewayARN)]
      )

instance Core.ToPath DescribeSMBSettings where
  toPath = Core.const "/"

instance Core.ToQuery DescribeSMBSettings where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeSMBSettingsResponse' smart constructor.
data DescribeSMBSettingsResponse = DescribeSMBSettingsResponse'
  { -- | The type of security strategy that was specified for file gateway.
    --
    -- -   @ClientSpecified@: If you use this option, requests are established
    --     based on what is negotiated by the client. This option is
    --     recommended when you want to maximize compatibility across different
    --     clients in your environment.
    --
    -- -   @MandatorySigning@: If you use this option, file gateway only allows
    --     connections from SMBv2 or SMBv3 clients that have signing enabled.
    --     This option works with SMB clients on Microsoft Windows Vista,
    --     Windows Server 2008 or newer.
    --
    -- -   @MandatoryEncryption@: If you use this option, file gateway only
    --     allows connections from SMBv3 clients that have encryption enabled.
    --     This option is highly recommended for environments that handle
    --     sensitive data. This option works with SMB clients on Microsoft
    --     Windows 8, Windows Server 2012 or newer.
    sMBSecurityStrategy :: Core.Maybe SMBSecurityStrategy,
    -- | This value is @true@ if a password for the guest user @smbguest@ is set,
    -- otherwise @false@.
    --
    -- Valid Values: @true@ | @false@
    sMBGuestPasswordSet :: Core.Maybe Core.Bool,
    -- | The shares on this gateway appear when listing shares.
    fileSharesVisible :: Core.Maybe Core.Bool,
    -- | The name of the domain that the gateway is joined to.
    domainName :: Core.Maybe Core.Text,
    -- | Indicates the status of a gateway that is a member of the Active
    -- Directory domain.
    --
    -- -   @ACCESS_DENIED@: Indicates that the @JoinDomain@ operation failed
    --     due to an authentication error.
    --
    -- -   @DETACHED@: Indicates that gateway is not joined to a domain.
    --
    -- -   @JOINED@: Indicates that the gateway has successfully joined a
    --     domain.
    --
    -- -   @JOINING@: Indicates that a @JoinDomain@ operation is in progress.
    --
    -- -   @NETWORK_ERROR@: Indicates that @JoinDomain@ operation failed due to
    --     a network or connectivity error.
    --
    -- -   @TIMEOUT@: Indicates that the @JoinDomain@ operation failed because
    --     the operation didn\'t complete within the allotted time.
    --
    -- -   @UNKNOWN_ERROR@: Indicates that the @JoinDomain@ operation failed
    --     due to another type of error.
    activeDirectoryStatus :: Core.Maybe ActiveDirectoryStatus,
    gatewayARN :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeSMBSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sMBSecurityStrategy', 'describeSMBSettingsResponse_sMBSecurityStrategy' - The type of security strategy that was specified for file gateway.
--
-- -   @ClientSpecified@: If you use this option, requests are established
--     based on what is negotiated by the client. This option is
--     recommended when you want to maximize compatibility across different
--     clients in your environment.
--
-- -   @MandatorySigning@: If you use this option, file gateway only allows
--     connections from SMBv2 or SMBv3 clients that have signing enabled.
--     This option works with SMB clients on Microsoft Windows Vista,
--     Windows Server 2008 or newer.
--
-- -   @MandatoryEncryption@: If you use this option, file gateway only
--     allows connections from SMBv3 clients that have encryption enabled.
--     This option is highly recommended for environments that handle
--     sensitive data. This option works with SMB clients on Microsoft
--     Windows 8, Windows Server 2012 or newer.
--
-- 'sMBGuestPasswordSet', 'describeSMBSettingsResponse_sMBGuestPasswordSet' - This value is @true@ if a password for the guest user @smbguest@ is set,
-- otherwise @false@.
--
-- Valid Values: @true@ | @false@
--
-- 'fileSharesVisible', 'describeSMBSettingsResponse_fileSharesVisible' - The shares on this gateway appear when listing shares.
--
-- 'domainName', 'describeSMBSettingsResponse_domainName' - The name of the domain that the gateway is joined to.
--
-- 'activeDirectoryStatus', 'describeSMBSettingsResponse_activeDirectoryStatus' - Indicates the status of a gateway that is a member of the Active
-- Directory domain.
--
-- -   @ACCESS_DENIED@: Indicates that the @JoinDomain@ operation failed
--     due to an authentication error.
--
-- -   @DETACHED@: Indicates that gateway is not joined to a domain.
--
-- -   @JOINED@: Indicates that the gateway has successfully joined a
--     domain.
--
-- -   @JOINING@: Indicates that a @JoinDomain@ operation is in progress.
--
-- -   @NETWORK_ERROR@: Indicates that @JoinDomain@ operation failed due to
--     a network or connectivity error.
--
-- -   @TIMEOUT@: Indicates that the @JoinDomain@ operation failed because
--     the operation didn\'t complete within the allotted time.
--
-- -   @UNKNOWN_ERROR@: Indicates that the @JoinDomain@ operation failed
--     due to another type of error.
--
-- 'gatewayARN', 'describeSMBSettingsResponse_gatewayARN' - Undocumented member.
--
-- 'httpStatus', 'describeSMBSettingsResponse_httpStatus' - The response's http status code.
newDescribeSMBSettingsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeSMBSettingsResponse
newDescribeSMBSettingsResponse pHttpStatus_ =
  DescribeSMBSettingsResponse'
    { sMBSecurityStrategy =
        Core.Nothing,
      sMBGuestPasswordSet = Core.Nothing,
      fileSharesVisible = Core.Nothing,
      domainName = Core.Nothing,
      activeDirectoryStatus = Core.Nothing,
      gatewayARN = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The type of security strategy that was specified for file gateway.
--
-- -   @ClientSpecified@: If you use this option, requests are established
--     based on what is negotiated by the client. This option is
--     recommended when you want to maximize compatibility across different
--     clients in your environment.
--
-- -   @MandatorySigning@: If you use this option, file gateway only allows
--     connections from SMBv2 or SMBv3 clients that have signing enabled.
--     This option works with SMB clients on Microsoft Windows Vista,
--     Windows Server 2008 or newer.
--
-- -   @MandatoryEncryption@: If you use this option, file gateway only
--     allows connections from SMBv3 clients that have encryption enabled.
--     This option is highly recommended for environments that handle
--     sensitive data. This option works with SMB clients on Microsoft
--     Windows 8, Windows Server 2012 or newer.
describeSMBSettingsResponse_sMBSecurityStrategy :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe SMBSecurityStrategy)
describeSMBSettingsResponse_sMBSecurityStrategy = Lens.lens (\DescribeSMBSettingsResponse' {sMBSecurityStrategy} -> sMBSecurityStrategy) (\s@DescribeSMBSettingsResponse' {} a -> s {sMBSecurityStrategy = a} :: DescribeSMBSettingsResponse)

-- | This value is @true@ if a password for the guest user @smbguest@ is set,
-- otherwise @false@.
--
-- Valid Values: @true@ | @false@
describeSMBSettingsResponse_sMBGuestPasswordSet :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Core.Bool)
describeSMBSettingsResponse_sMBGuestPasswordSet = Lens.lens (\DescribeSMBSettingsResponse' {sMBGuestPasswordSet} -> sMBGuestPasswordSet) (\s@DescribeSMBSettingsResponse' {} a -> s {sMBGuestPasswordSet = a} :: DescribeSMBSettingsResponse)

-- | The shares on this gateway appear when listing shares.
describeSMBSettingsResponse_fileSharesVisible :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Core.Bool)
describeSMBSettingsResponse_fileSharesVisible = Lens.lens (\DescribeSMBSettingsResponse' {fileSharesVisible} -> fileSharesVisible) (\s@DescribeSMBSettingsResponse' {} a -> s {fileSharesVisible = a} :: DescribeSMBSettingsResponse)

-- | The name of the domain that the gateway is joined to.
describeSMBSettingsResponse_domainName :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Core.Text)
describeSMBSettingsResponse_domainName = Lens.lens (\DescribeSMBSettingsResponse' {domainName} -> domainName) (\s@DescribeSMBSettingsResponse' {} a -> s {domainName = a} :: DescribeSMBSettingsResponse)

-- | Indicates the status of a gateway that is a member of the Active
-- Directory domain.
--
-- -   @ACCESS_DENIED@: Indicates that the @JoinDomain@ operation failed
--     due to an authentication error.
--
-- -   @DETACHED@: Indicates that gateway is not joined to a domain.
--
-- -   @JOINED@: Indicates that the gateway has successfully joined a
--     domain.
--
-- -   @JOINING@: Indicates that a @JoinDomain@ operation is in progress.
--
-- -   @NETWORK_ERROR@: Indicates that @JoinDomain@ operation failed due to
--     a network or connectivity error.
--
-- -   @TIMEOUT@: Indicates that the @JoinDomain@ operation failed because
--     the operation didn\'t complete within the allotted time.
--
-- -   @UNKNOWN_ERROR@: Indicates that the @JoinDomain@ operation failed
--     due to another type of error.
describeSMBSettingsResponse_activeDirectoryStatus :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe ActiveDirectoryStatus)
describeSMBSettingsResponse_activeDirectoryStatus = Lens.lens (\DescribeSMBSettingsResponse' {activeDirectoryStatus} -> activeDirectoryStatus) (\s@DescribeSMBSettingsResponse' {} a -> s {activeDirectoryStatus = a} :: DescribeSMBSettingsResponse)

-- | Undocumented member.
describeSMBSettingsResponse_gatewayARN :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Core.Text)
describeSMBSettingsResponse_gatewayARN = Lens.lens (\DescribeSMBSettingsResponse' {gatewayARN} -> gatewayARN) (\s@DescribeSMBSettingsResponse' {} a -> s {gatewayARN = a} :: DescribeSMBSettingsResponse)

-- | The response's http status code.
describeSMBSettingsResponse_httpStatus :: Lens.Lens' DescribeSMBSettingsResponse Core.Int
describeSMBSettingsResponse_httpStatus = Lens.lens (\DescribeSMBSettingsResponse' {httpStatus} -> httpStatus) (\s@DescribeSMBSettingsResponse' {} a -> s {httpStatus = a} :: DescribeSMBSettingsResponse)

instance Core.NFData DescribeSMBSettingsResponse
