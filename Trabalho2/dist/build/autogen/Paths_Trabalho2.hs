module Paths_Trabalho2 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/Martins/Documents/15:1/LP/Trabalho2/.cabal-sandbox/bin"
libdir     = "/Users/Martins/Documents/15:1/LP/Trabalho2/.cabal-sandbox/lib/x86_64-osx-ghc-7.8.3/Trabalho2-0.1.0.0"
datadir    = "/Users/Martins/Documents/15:1/LP/Trabalho2/.cabal-sandbox/share/x86_64-osx-ghc-7.8.3/Trabalho2-0.1.0.0"
libexecdir = "/Users/Martins/Documents/15:1/LP/Trabalho2/.cabal-sandbox/libexec"
sysconfdir = "/Users/Martins/Documents/15:1/LP/Trabalho2/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Trabalho2_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Trabalho2_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "Trabalho2_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Trabalho2_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Trabalho2_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
