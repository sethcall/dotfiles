import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.ICCCMFocus
import XMonad.Hooks.SetWMName
import XMonad.Hooks.DynamicLog

main = do
  xmonad $ 
	defaultConfig
                {
			modMask = mod4Mask,
			startupHook = setWMName "LG3D",
			logHook = takeTopFocus,
 			layoutHook = smartBorders $ layoutHook defaultConfig
                	-- other fields like terminal, modMask, etc.
                }
