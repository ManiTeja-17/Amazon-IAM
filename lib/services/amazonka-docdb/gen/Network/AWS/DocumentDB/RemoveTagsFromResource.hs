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
-- Module      : Network.AWS.DocumentDB.RemoveTagsFromResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes metadata tags from an Amazon DocumentDB resource.
module Network.AWS.DocumentDB.RemoveTagsFromResource
  ( -- * Creating a Request
    RemoveTagsFromResource (..),
    newRemoveTagsFromResource,

    -- * Request Lenses
    removeTagsFromResource_resourceName,
    removeTagsFromResource_tagKeys,

    -- * Destructuring the Response
    RemoveTagsFromResourceResponse (..),
    newRemoveTagsFromResourceResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to RemoveTagsFromResource.
--
-- /See:/ 'newRemoveTagsFromResource' smart constructor.
data RemoveTagsFromResource = RemoveTagsFromResource'
  { -- | The Amazon DocumentDB resource that the tags are removed from. This
    -- value is an Amazon Resource Name (ARN).
    resourceName :: Prelude.Text,
    -- | The tag key (name) of the tag to be removed.
    tagKeys :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveTagsFromResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceName', 'removeTagsFromResource_resourceName' - The Amazon DocumentDB resource that the tags are removed from. This
-- value is an Amazon Resource Name (ARN).
--
-- 'tagKeys', 'removeTagsFromResource_tagKeys' - The tag key (name) of the tag to be removed.
newRemoveTagsFromResource ::
  -- | 'resourceName'
  Prelude.Text ->
  RemoveTagsFromResource
newRemoveTagsFromResource pResourceName_ =
  RemoveTagsFromResource'
    { resourceName =
        pResourceName_,
      tagKeys = Prelude.mempty
    }

-- | The Amazon DocumentDB resource that the tags are removed from. This
-- value is an Amazon Resource Name (ARN).
removeTagsFromResource_resourceName :: Lens.Lens' RemoveTagsFromResource Prelude.Text
removeTagsFromResource_resourceName = Lens.lens (\RemoveTagsFromResource' {resourceName} -> resourceName) (\s@RemoveTagsFromResource' {} a -> s {resourceName = a} :: RemoveTagsFromResource)

-- | The tag key (name) of the tag to be removed.
removeTagsFromResource_tagKeys :: Lens.Lens' RemoveTagsFromResource [Prelude.Text]
removeTagsFromResource_tagKeys = Lens.lens (\RemoveTagsFromResource' {tagKeys} -> tagKeys) (\s@RemoveTagsFromResource' {} a -> s {tagKeys = a} :: RemoveTagsFromResource) Prelude.. Lens.coerced

instance Core.AWSRequest RemoveTagsFromResource where
  type
    AWSResponse RemoveTagsFromResource =
      RemoveTagsFromResourceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull
      RemoveTagsFromResourceResponse'

instance Prelude.Hashable RemoveTagsFromResource

instance Prelude.NFData RemoveTagsFromResource

instance Core.ToHeaders RemoveTagsFromResource where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath RemoveTagsFromResource where
  toPath = Prelude.const "/"

instance Core.ToQuery RemoveTagsFromResource where
  toQuery RemoveTagsFromResource' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("RemoveTagsFromResource" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "ResourceName" Core.=: resourceName,
        "TagKeys" Core.=: Core.toQueryList "member" tagKeys
      ]

-- | /See:/ 'newRemoveTagsFromResourceResponse' smart constructor.
data RemoveTagsFromResourceResponse = RemoveTagsFromResourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveTagsFromResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRemoveTagsFromResourceResponse ::
  RemoveTagsFromResourceResponse
newRemoveTagsFromResourceResponse =
  RemoveTagsFromResourceResponse'

instance
  Prelude.NFData
    RemoveTagsFromResourceResponse