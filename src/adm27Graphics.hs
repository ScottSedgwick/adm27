module Adm27Graphics (
    cx
  , cy
  , drawMyText
  , drawImage
  , drawRect
  , drawHLine
  , drawDottedHLine
  , drawVLine
  , drawChoice
  , drawIf
) where

import Graphics.PDF

cx :: PDFFloat -> PDFFloat
cx x = (x * 2.8343)

cy :: PDFFloat -> PDFFloat
cy y = (842.0 - y * 2.8343)

drawMyText :: PDFFont -> PDFFloat -> PDFFloat -> String -> Draw()
drawMyText fnt x y s = drawText $ text fnt (cx x) (cy y) (toPDFString s)

drawImage ::  PDFFloat -> PDFFloat -> JpegFile -> PDFReference PDFPage -> PDF()
drawImage x y jpgf page =  do
    jpg <- createPDFJpeg jpgf
    drawWithPage page $ do
      withNewContext $ do
        applyMatrix $ translate ((cx x) :+ (cy y))
        applyMatrix $ scale 0.7 0.7
        drawXObject jpg

drawChoice :: PDFFloat -> PDFFloat -> PDFFloat -> PDFFloat -> Bool -> JpegFile -> PDFReference PDFPage -> PDF()
drawChoice xt yt xf yf value jpgf page = do
  if value
    then drawImage xt yt jpgf page
    else drawImage xf yf jpgf page

drawIf :: PDFFloat -> PDFFloat -> Bool -> JpegFile -> PDFReference PDFPage -> PDF()
drawIf x y value jpgf page = do
  if value
    then drawImage x y jpgf page
    else return ()

drawRect :: PDFFloat -> PDFFloat -> PDFFloat -> PDFFloat -> PDFFloat -> Draw()
drawRect l x y w h = do
  setWidth (cx l)
  let x1 = cx x
  let y1 = cy y
  let x2 = cx (x + w)
  let y2 = cy (y + h)
  moveto (x1 :+ y1)
  lineto (x2 :+ y1)
  lineto (x2 :+ y2)
  lineto (x1 :+ y2)
  lineto (x1 :+ y1)
  strokePath

drawHLine :: PDFFloat -> PDFFloat -> PDFFloat -> PDFFloat -> Draw()
drawHLine l x y len = do
  setWidth (cx l)
  let x1 = cx x
  let y1 = cy y
  let x2 = cx (x + len)
  moveto (x1 :+ y1)
  lineto (x2 :+ y1)
  strokePath

drawDottedHLine :: PDFFloat -> PDFFloat -> PDFFloat -> Draw()
drawDottedHLine x y len = do
  let x1 = cx x
  let y1 = cy y
  let x2 = cx (x + len)
  withNewContext $ do
    setWidth (cx 0.5)
    setDash $ DashPattern [3] 0
    moveto (x1 :+ y1)
    lineto (x2 :+ y1)
    strokePath

drawVLine :: PDFFloat -> PDFFloat -> PDFFloat -> PDFFloat -> Draw()
drawVLine l x y len = do
  setWidth (cx l)
  let x1 = cx x
  let y1 = cy y
  let y2 = cy (y + len)
  moveto (x1 :+ y1)
  lineto (x1 :+ y2)
  strokePath