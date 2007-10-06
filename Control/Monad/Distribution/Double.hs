module Control.Monad.Distribution.Double (
    module Control.Monad.Distribution,
    DDist, ddist, BDDist
  ) where

import Control.Monad.Distribution
import Control.Monad.Maybe
import Control.Monad.MonoidValue
import Data.Probability.Double

-- | A discrete, finite probability distribution implemented using rational
-- numbers.
type DDist = MVT Prob []

-- | Force a value to be interpreted as having type 'DDist'.
ddist :: DDist a -> DDist a
ddist d = d

-- | A version of 'BDDist' with support for Bayes' theorem.
type BDDist = MaybeT DDist
