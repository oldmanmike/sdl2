{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
module SDL.Internal.Types
  ( Joystick(..)
  , Window(..)
  , Renderer(..)
  ) where

import Data.Data (Data)
import Data.Typeable
import GHC.Generics (Generic)

import qualified SDL.Raw as Raw

newtype Joystick = Joystick { joystickPtr :: Raw.Joystick }
  deriving (Data, Eq, Generic, Ord, Show, Typeable)

newtype Window = Window (Raw.Window)
  deriving (Data, Eq, Generic, Ord, Show, Typeable)

newtype Renderer = Renderer Raw.Renderer
  deriving (Data, Eq, Generic, Ord, Show, Typeable)
