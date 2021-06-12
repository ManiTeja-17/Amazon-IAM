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
-- Module      : Network.AWS.Lightsail.CreateDomainEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one of the following domain name system (DNS) records in a
-- domain DNS zone: Address (A), canonical name (CNAME), mail exchanger
-- (MX), name server (NS), start of authority (SOA), service locator (SRV),
-- or text (TXT).
--
-- The @create domain entry@ operation supports tag-based access control
-- via resource tags applied to the resource identified by @domain name@.
-- For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide>.
module Network.AWS.Lightsail.CreateDomainEntry
  ( -- * Creating a Request
    CreateDomainEntry (..),
    newCreateDomainEntry,

    -- * Request Lenses
    createDomainEntry_domainName,
    createDomainEntry_domainEntry,

    -- * Destructuring the Response
    CreateDomainEntryResponse (..),
    newCreateDomainEntryResponse,

    -- * Response Lenses
    createDomainEntryResponse_operation,
    createDomainEntryResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDomainEntry' smart constructor.
data CreateDomainEntry = CreateDomainEntry'
  { -- | The domain name (e.g., @example.com@) for which you want to create the
    -- domain entry.
    domainName :: Core.Text,
    -- | An array of key-value pairs containing information about the domain
    -- entry request.
    domainEntry :: DomainEntry
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDomainEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'createDomainEntry_domainName' - The domain name (e.g., @example.com@) for which you want to create the
-- domain entry.
--
-- 'domainEntry', 'createDomainEntry_domainEntry' - An array of key-value pairs containing information about the domain
-- entry request.
newCreateDomainEntry ::
  -- | 'domainName'
  Core.Text ->
  -- | 'domainEntry'
  DomainEntry ->
  CreateDomainEntry
newCreateDomainEntry pDomainName_ pDomainEntry_ =
  CreateDomainEntry'
    { domainName = pDomainName_,
      domainEntry = pDomainEntry_
    }

-- | The domain name (e.g., @example.com@) for which you want to create the
-- domain entry.
createDomainEntry_domainName :: Lens.Lens' CreateDomainEntry Core.Text
createDomainEntry_domainName = Lens.lens (\CreateDomainEntry' {domainName} -> domainName) (\s@CreateDomainEntry' {} a -> s {domainName = a} :: CreateDomainEntry)

-- | An array of key-value pairs containing information about the domain
-- entry request.
createDomainEntry_domainEntry :: Lens.Lens' CreateDomainEntry DomainEntry
createDomainEntry_domainEntry = Lens.lens (\CreateDomainEntry' {domainEntry} -> domainEntry) (\s@CreateDomainEntry' {} a -> s {domainEntry = a} :: CreateDomainEntry)

instance Core.AWSRequest CreateDomainEntry where
  type
    AWSResponse CreateDomainEntry =
      CreateDomainEntryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDomainEntryResponse'
            Core.<$> (x Core..?> "operation")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateDomainEntry

instance Core.NFData CreateDomainEntry

instance Core.ToHeaders CreateDomainEntry where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.CreateDomainEntry" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateDomainEntry where
  toJSON CreateDomainEntry' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("domainName" Core..= domainName),
            Core.Just ("domainEntry" Core..= domainEntry)
          ]
      )

instance Core.ToPath CreateDomainEntry where
  toPath = Core.const "/"

instance Core.ToQuery CreateDomainEntry where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateDomainEntryResponse' smart constructor.
data CreateDomainEntryResponse = CreateDomainEntryResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operation :: Core.Maybe Operation,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDomainEntryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operation', 'createDomainEntryResponse_operation' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'createDomainEntryResponse_httpStatus' - The response's http status code.
newCreateDomainEntryResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateDomainEntryResponse
newCreateDomainEntryResponse pHttpStatus_ =
  CreateDomainEntryResponse'
    { operation =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
createDomainEntryResponse_operation :: Lens.Lens' CreateDomainEntryResponse (Core.Maybe Operation)
createDomainEntryResponse_operation = Lens.lens (\CreateDomainEntryResponse' {operation} -> operation) (\s@CreateDomainEntryResponse' {} a -> s {operation = a} :: CreateDomainEntryResponse)

-- | The response's http status code.
createDomainEntryResponse_httpStatus :: Lens.Lens' CreateDomainEntryResponse Core.Int
createDomainEntryResponse_httpStatus = Lens.lens (\CreateDomainEntryResponse' {httpStatus} -> httpStatus) (\s@CreateDomainEntryResponse' {} a -> s {httpStatus = a} :: CreateDomainEntryResponse)

instance Core.NFData CreateDomainEntryResponse
