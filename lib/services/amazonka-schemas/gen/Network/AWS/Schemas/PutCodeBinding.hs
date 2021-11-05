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
-- Module      : Network.AWS.Schemas.PutCodeBinding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Put code binding URI
module Network.AWS.Schemas.PutCodeBinding
  ( -- * Creating a Request
    PutCodeBinding (..),
    newPutCodeBinding,

    -- * Request Lenses
    putCodeBinding_schemaVersion,
    putCodeBinding_registryName,
    putCodeBinding_schemaName,
    putCodeBinding_language,

    -- * Destructuring the Response
    PutCodeBindingResponse (..),
    newPutCodeBindingResponse,

    -- * Response Lenses
    putCodeBindingResponse_status,
    putCodeBindingResponse_schemaVersion,
    putCodeBindingResponse_creationDate,
    putCodeBindingResponse_lastModified,
    putCodeBindingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | /See:/ 'newPutCodeBinding' smart constructor.
data PutCodeBinding = PutCodeBinding'
  { -- | Specifying this limits the results to only this schema version.
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the registry.
    registryName :: Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Text,
    -- | The language of the code binding.
    language :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutCodeBinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaVersion', 'putCodeBinding_schemaVersion' - Specifying this limits the results to only this schema version.
--
-- 'registryName', 'putCodeBinding_registryName' - The name of the registry.
--
-- 'schemaName', 'putCodeBinding_schemaName' - The name of the schema.
--
-- 'language', 'putCodeBinding_language' - The language of the code binding.
newPutCodeBinding ::
  -- | 'registryName'
  Prelude.Text ->
  -- | 'schemaName'
  Prelude.Text ->
  -- | 'language'
  Prelude.Text ->
  PutCodeBinding
newPutCodeBinding
  pRegistryName_
  pSchemaName_
  pLanguage_ =
    PutCodeBinding'
      { schemaVersion = Prelude.Nothing,
        registryName = pRegistryName_,
        schemaName = pSchemaName_,
        language = pLanguage_
      }

-- | Specifying this limits the results to only this schema version.
putCodeBinding_schemaVersion :: Lens.Lens' PutCodeBinding (Prelude.Maybe Prelude.Text)
putCodeBinding_schemaVersion = Lens.lens (\PutCodeBinding' {schemaVersion} -> schemaVersion) (\s@PutCodeBinding' {} a -> s {schemaVersion = a} :: PutCodeBinding)

-- | The name of the registry.
putCodeBinding_registryName :: Lens.Lens' PutCodeBinding Prelude.Text
putCodeBinding_registryName = Lens.lens (\PutCodeBinding' {registryName} -> registryName) (\s@PutCodeBinding' {} a -> s {registryName = a} :: PutCodeBinding)

-- | The name of the schema.
putCodeBinding_schemaName :: Lens.Lens' PutCodeBinding Prelude.Text
putCodeBinding_schemaName = Lens.lens (\PutCodeBinding' {schemaName} -> schemaName) (\s@PutCodeBinding' {} a -> s {schemaName = a} :: PutCodeBinding)

-- | The language of the code binding.
putCodeBinding_language :: Lens.Lens' PutCodeBinding Prelude.Text
putCodeBinding_language = Lens.lens (\PutCodeBinding' {language} -> language) (\s@PutCodeBinding' {} a -> s {language = a} :: PutCodeBinding)

instance Core.AWSRequest PutCodeBinding where
  type
    AWSResponse PutCodeBinding =
      PutCodeBindingResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutCodeBindingResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "SchemaVersion")
            Prelude.<*> (x Core..?> "CreationDate")
            Prelude.<*> (x Core..?> "LastModified")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutCodeBinding

instance Prelude.NFData PutCodeBinding

instance Core.ToHeaders PutCodeBinding where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutCodeBinding where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath PutCodeBinding where
  toPath PutCodeBinding' {..} =
    Prelude.mconcat
      [ "/v1/registries/name/",
        Core.toBS registryName,
        "/schemas/name/",
        Core.toBS schemaName,
        "/language/",
        Core.toBS language
      ]

instance Core.ToQuery PutCodeBinding where
  toQuery PutCodeBinding' {..} =
    Prelude.mconcat
      ["schemaVersion" Core.=: schemaVersion]

-- | /See:/ 'newPutCodeBindingResponse' smart constructor.
data PutCodeBindingResponse = PutCodeBindingResponse'
  { -- | The current status of code binding generation.
    status :: Prelude.Maybe CodeGenerationStatus,
    -- | The version number of the schema.
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The time and date that the code binding was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The date and time that code bindings were modified.
    lastModified :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutCodeBindingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'putCodeBindingResponse_status' - The current status of code binding generation.
--
-- 'schemaVersion', 'putCodeBindingResponse_schemaVersion' - The version number of the schema.
--
-- 'creationDate', 'putCodeBindingResponse_creationDate' - The time and date that the code binding was created.
--
-- 'lastModified', 'putCodeBindingResponse_lastModified' - The date and time that code bindings were modified.
--
-- 'httpStatus', 'putCodeBindingResponse_httpStatus' - The response's http status code.
newPutCodeBindingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutCodeBindingResponse
newPutCodeBindingResponse pHttpStatus_ =
  PutCodeBindingResponse'
    { status = Prelude.Nothing,
      schemaVersion = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      lastModified = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current status of code binding generation.
putCodeBindingResponse_status :: Lens.Lens' PutCodeBindingResponse (Prelude.Maybe CodeGenerationStatus)
putCodeBindingResponse_status = Lens.lens (\PutCodeBindingResponse' {status} -> status) (\s@PutCodeBindingResponse' {} a -> s {status = a} :: PutCodeBindingResponse)

-- | The version number of the schema.
putCodeBindingResponse_schemaVersion :: Lens.Lens' PutCodeBindingResponse (Prelude.Maybe Prelude.Text)
putCodeBindingResponse_schemaVersion = Lens.lens (\PutCodeBindingResponse' {schemaVersion} -> schemaVersion) (\s@PutCodeBindingResponse' {} a -> s {schemaVersion = a} :: PutCodeBindingResponse)

-- | The time and date that the code binding was created.
putCodeBindingResponse_creationDate :: Lens.Lens' PutCodeBindingResponse (Prelude.Maybe Prelude.UTCTime)
putCodeBindingResponse_creationDate = Lens.lens (\PutCodeBindingResponse' {creationDate} -> creationDate) (\s@PutCodeBindingResponse' {} a -> s {creationDate = a} :: PutCodeBindingResponse) Prelude.. Lens.mapping Core._Time

-- | The date and time that code bindings were modified.
putCodeBindingResponse_lastModified :: Lens.Lens' PutCodeBindingResponse (Prelude.Maybe Prelude.UTCTime)
putCodeBindingResponse_lastModified = Lens.lens (\PutCodeBindingResponse' {lastModified} -> lastModified) (\s@PutCodeBindingResponse' {} a -> s {lastModified = a} :: PutCodeBindingResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
putCodeBindingResponse_httpStatus :: Lens.Lens' PutCodeBindingResponse Prelude.Int
putCodeBindingResponse_httpStatus = Lens.lens (\PutCodeBindingResponse' {httpStatus} -> httpStatus) (\s@PutCodeBindingResponse' {} a -> s {httpStatus = a} :: PutCodeBindingResponse)

instance Prelude.NFData PutCodeBindingResponse