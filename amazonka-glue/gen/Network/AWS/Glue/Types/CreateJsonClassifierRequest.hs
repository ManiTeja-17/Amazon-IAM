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
-- Module      : Network.AWS.Glue.Types.CreateJsonClassifierRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CreateJsonClassifierRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Specifies a JSON classifier for @CreateClassifier@ to create.
--
-- /See:/ 'newCreateJsonClassifierRequest' smart constructor.
data CreateJsonClassifierRequest = CreateJsonClassifierRequest'
  { -- | The name of the classifier.
    name :: Core.Text,
    -- | A @JsonPath@ string defining the JSON data for the classifier to
    -- classify. AWS Glue supports a subset of JsonPath, as described in
    -- <https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json Writing JsonPath Custom Classifiers>.
    jsonPath :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateJsonClassifierRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createJsonClassifierRequest_name' - The name of the classifier.
--
-- 'jsonPath', 'createJsonClassifierRequest_jsonPath' - A @JsonPath@ string defining the JSON data for the classifier to
-- classify. AWS Glue supports a subset of JsonPath, as described in
-- <https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json Writing JsonPath Custom Classifiers>.
newCreateJsonClassifierRequest ::
  -- | 'name'
  Core.Text ->
  -- | 'jsonPath'
  Core.Text ->
  CreateJsonClassifierRequest
newCreateJsonClassifierRequest pName_ pJsonPath_ =
  CreateJsonClassifierRequest'
    { name = pName_,
      jsonPath = pJsonPath_
    }

-- | The name of the classifier.
createJsonClassifierRequest_name :: Lens.Lens' CreateJsonClassifierRequest Core.Text
createJsonClassifierRequest_name = Lens.lens (\CreateJsonClassifierRequest' {name} -> name) (\s@CreateJsonClassifierRequest' {} a -> s {name = a} :: CreateJsonClassifierRequest)

-- | A @JsonPath@ string defining the JSON data for the classifier to
-- classify. AWS Glue supports a subset of JsonPath, as described in
-- <https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json Writing JsonPath Custom Classifiers>.
createJsonClassifierRequest_jsonPath :: Lens.Lens' CreateJsonClassifierRequest Core.Text
createJsonClassifierRequest_jsonPath = Lens.lens (\CreateJsonClassifierRequest' {jsonPath} -> jsonPath) (\s@CreateJsonClassifierRequest' {} a -> s {jsonPath = a} :: CreateJsonClassifierRequest)

instance Core.Hashable CreateJsonClassifierRequest

instance Core.NFData CreateJsonClassifierRequest

instance Core.ToJSON CreateJsonClassifierRequest where
  toJSON CreateJsonClassifierRequest' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            Core.Just ("JsonPath" Core..= jsonPath)
          ]
      )
