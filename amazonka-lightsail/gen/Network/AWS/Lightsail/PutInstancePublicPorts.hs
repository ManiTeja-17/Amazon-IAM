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
-- Module      : Network.AWS.Lightsail.PutInstancePublicPorts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Opens ports for a specific Amazon Lightsail instance, and specifies the
-- IP addresses allowed to connect to the instance through the ports, and
-- the protocol. This action also closes all currently open ports that are
-- not included in the request. Include all of the ports and the protocols
-- you want to open in your @PutInstancePublicPorts@request. Or use the
-- @OpenInstancePublicPorts@ action to open ports without closing currently
-- open ports.
--
-- The @PutInstancePublicPorts@ action supports tag-based access control
-- via resource tags applied to the resource identified by @instanceName@.
-- For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide>.
module Network.AWS.Lightsail.PutInstancePublicPorts
  ( -- * Creating a Request
    PutInstancePublicPorts (..),
    newPutInstancePublicPorts,

    -- * Request Lenses
    putInstancePublicPorts_portInfos,
    putInstancePublicPorts_instanceName,

    -- * Destructuring the Response
    PutInstancePublicPortsResponse (..),
    newPutInstancePublicPortsResponse,

    -- * Response Lenses
    putInstancePublicPortsResponse_operation,
    putInstancePublicPortsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutInstancePublicPorts' smart constructor.
data PutInstancePublicPorts = PutInstancePublicPorts'
  { -- | An array of objects to describe the ports to open for the specified
    -- instance.
    portInfos :: [PortInfo],
    -- | The name of the instance for which to open ports.
    instanceName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutInstancePublicPorts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portInfos', 'putInstancePublicPorts_portInfos' - An array of objects to describe the ports to open for the specified
-- instance.
--
-- 'instanceName', 'putInstancePublicPorts_instanceName' - The name of the instance for which to open ports.
newPutInstancePublicPorts ::
  -- | 'instanceName'
  Core.Text ->
  PutInstancePublicPorts
newPutInstancePublicPorts pInstanceName_ =
  PutInstancePublicPorts'
    { portInfos = Core.mempty,
      instanceName = pInstanceName_
    }

-- | An array of objects to describe the ports to open for the specified
-- instance.
putInstancePublicPorts_portInfos :: Lens.Lens' PutInstancePublicPorts [PortInfo]
putInstancePublicPorts_portInfos = Lens.lens (\PutInstancePublicPorts' {portInfos} -> portInfos) (\s@PutInstancePublicPorts' {} a -> s {portInfos = a} :: PutInstancePublicPorts) Core.. Lens._Coerce

-- | The name of the instance for which to open ports.
putInstancePublicPorts_instanceName :: Lens.Lens' PutInstancePublicPorts Core.Text
putInstancePublicPorts_instanceName = Lens.lens (\PutInstancePublicPorts' {instanceName} -> instanceName) (\s@PutInstancePublicPorts' {} a -> s {instanceName = a} :: PutInstancePublicPorts)

instance Core.AWSRequest PutInstancePublicPorts where
  type
    AWSResponse PutInstancePublicPorts =
      PutInstancePublicPortsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutInstancePublicPortsResponse'
            Core.<$> (x Core..?> "operation")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable PutInstancePublicPorts

instance Core.NFData PutInstancePublicPorts

instance Core.ToHeaders PutInstancePublicPorts where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.PutInstancePublicPorts" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON PutInstancePublicPorts where
  toJSON PutInstancePublicPorts' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("portInfos" Core..= portInfos),
            Core.Just ("instanceName" Core..= instanceName)
          ]
      )

instance Core.ToPath PutInstancePublicPorts where
  toPath = Core.const "/"

instance Core.ToQuery PutInstancePublicPorts where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newPutInstancePublicPortsResponse' smart constructor.
data PutInstancePublicPortsResponse = PutInstancePublicPortsResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operation :: Core.Maybe Operation,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutInstancePublicPortsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operation', 'putInstancePublicPortsResponse_operation' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'putInstancePublicPortsResponse_httpStatus' - The response's http status code.
newPutInstancePublicPortsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PutInstancePublicPortsResponse
newPutInstancePublicPortsResponse pHttpStatus_ =
  PutInstancePublicPortsResponse'
    { operation =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
putInstancePublicPortsResponse_operation :: Lens.Lens' PutInstancePublicPortsResponse (Core.Maybe Operation)
putInstancePublicPortsResponse_operation = Lens.lens (\PutInstancePublicPortsResponse' {operation} -> operation) (\s@PutInstancePublicPortsResponse' {} a -> s {operation = a} :: PutInstancePublicPortsResponse)

-- | The response's http status code.
putInstancePublicPortsResponse_httpStatus :: Lens.Lens' PutInstancePublicPortsResponse Core.Int
putInstancePublicPortsResponse_httpStatus = Lens.lens (\PutInstancePublicPortsResponse' {httpStatus} -> httpStatus) (\s@PutInstancePublicPortsResponse' {} a -> s {httpStatus = a} :: PutInstancePublicPortsResponse)

instance Core.NFData PutInstancePublicPortsResponse
