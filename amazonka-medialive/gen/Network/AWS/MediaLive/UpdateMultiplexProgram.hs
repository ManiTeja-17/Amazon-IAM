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
-- Module      : Network.AWS.MediaLive.UpdateMultiplexProgram
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a program in a multiplex.
module Network.AWS.MediaLive.UpdateMultiplexProgram
  ( -- * Creating a Request
    UpdateMultiplexProgram' (..),
    newUpdateMultiplexProgram',

    -- * Request Lenses
    updateMultiplexProgram'_multiplexProgramSettings,
    updateMultiplexProgram'_multiplexId,
    updateMultiplexProgram'_programName,

    -- * Destructuring the Response
    UpdateMultiplexProgramResponse (..),
    newUpdateMultiplexProgramResponse,

    -- * Response Lenses
    updateMultiplexProgramResponse_multiplexProgram,
    updateMultiplexProgramResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to update a program in a multiplex.
--
-- /See:/ 'newUpdateMultiplexProgram'' smart constructor.
data UpdateMultiplexProgram' = UpdateMultiplexProgram''
  { -- | The new settings for a multiplex program.
    multiplexProgramSettings :: Core.Maybe MultiplexProgramSettings,
    -- | The ID of the multiplex of the program to update.
    multiplexId :: Core.Text,
    -- | The name of the program to update.
    programName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateMultiplexProgram'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'multiplexProgramSettings', 'updateMultiplexProgram'_multiplexProgramSettings' - The new settings for a multiplex program.
--
-- 'multiplexId', 'updateMultiplexProgram'_multiplexId' - The ID of the multiplex of the program to update.
--
-- 'programName', 'updateMultiplexProgram'_programName' - The name of the program to update.
newUpdateMultiplexProgram' ::
  -- | 'multiplexId'
  Core.Text ->
  -- | 'programName'
  Core.Text ->
  UpdateMultiplexProgram'
newUpdateMultiplexProgram'
  pMultiplexId_
  pProgramName_ =
    UpdateMultiplexProgram''
      { multiplexProgramSettings =
          Core.Nothing,
        multiplexId = pMultiplexId_,
        programName = pProgramName_
      }

-- | The new settings for a multiplex program.
updateMultiplexProgram'_multiplexProgramSettings :: Lens.Lens' UpdateMultiplexProgram' (Core.Maybe MultiplexProgramSettings)
updateMultiplexProgram'_multiplexProgramSettings = Lens.lens (\UpdateMultiplexProgram'' {multiplexProgramSettings} -> multiplexProgramSettings) (\s@UpdateMultiplexProgram'' {} a -> s {multiplexProgramSettings = a} :: UpdateMultiplexProgram')

-- | The ID of the multiplex of the program to update.
updateMultiplexProgram'_multiplexId :: Lens.Lens' UpdateMultiplexProgram' Core.Text
updateMultiplexProgram'_multiplexId = Lens.lens (\UpdateMultiplexProgram'' {multiplexId} -> multiplexId) (\s@UpdateMultiplexProgram'' {} a -> s {multiplexId = a} :: UpdateMultiplexProgram')

-- | The name of the program to update.
updateMultiplexProgram'_programName :: Lens.Lens' UpdateMultiplexProgram' Core.Text
updateMultiplexProgram'_programName = Lens.lens (\UpdateMultiplexProgram'' {programName} -> programName) (\s@UpdateMultiplexProgram'' {} a -> s {programName = a} :: UpdateMultiplexProgram')

instance Core.AWSRequest UpdateMultiplexProgram' where
  type
    AWSResponse UpdateMultiplexProgram' =
      UpdateMultiplexProgramResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateMultiplexProgramResponse'
            Core.<$> (x Core..?> "multiplexProgram")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateMultiplexProgram'

instance Core.NFData UpdateMultiplexProgram'

instance Core.ToHeaders UpdateMultiplexProgram' where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateMultiplexProgram' where
  toJSON UpdateMultiplexProgram'' {..} =
    Core.object
      ( Core.catMaybes
          [ ("multiplexProgramSettings" Core..=)
              Core.<$> multiplexProgramSettings
          ]
      )

instance Core.ToPath UpdateMultiplexProgram' where
  toPath UpdateMultiplexProgram'' {..} =
    Core.mconcat
      [ "/prod/multiplexes/",
        Core.toBS multiplexId,
        "/programs/",
        Core.toBS programName
      ]

instance Core.ToQuery UpdateMultiplexProgram' where
  toQuery = Core.const Core.mempty

-- | Placeholder documentation for UpdateMultiplexProgramResponse
--
-- /See:/ 'newUpdateMultiplexProgramResponse' smart constructor.
data UpdateMultiplexProgramResponse = UpdateMultiplexProgramResponse'
  { -- | The updated multiplex program.
    multiplexProgram :: Core.Maybe MultiplexProgram,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateMultiplexProgramResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'multiplexProgram', 'updateMultiplexProgramResponse_multiplexProgram' - The updated multiplex program.
--
-- 'httpStatus', 'updateMultiplexProgramResponse_httpStatus' - The response's http status code.
newUpdateMultiplexProgramResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateMultiplexProgramResponse
newUpdateMultiplexProgramResponse pHttpStatus_ =
  UpdateMultiplexProgramResponse'
    { multiplexProgram =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated multiplex program.
updateMultiplexProgramResponse_multiplexProgram :: Lens.Lens' UpdateMultiplexProgramResponse (Core.Maybe MultiplexProgram)
updateMultiplexProgramResponse_multiplexProgram = Lens.lens (\UpdateMultiplexProgramResponse' {multiplexProgram} -> multiplexProgram) (\s@UpdateMultiplexProgramResponse' {} a -> s {multiplexProgram = a} :: UpdateMultiplexProgramResponse)

-- | The response's http status code.
updateMultiplexProgramResponse_httpStatus :: Lens.Lens' UpdateMultiplexProgramResponse Core.Int
updateMultiplexProgramResponse_httpStatus = Lens.lens (\UpdateMultiplexProgramResponse' {httpStatus} -> httpStatus) (\s@UpdateMultiplexProgramResponse' {} a -> s {httpStatus = a} :: UpdateMultiplexProgramResponse)

instance Core.NFData UpdateMultiplexProgramResponse
