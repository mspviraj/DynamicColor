/*
 * DynamicColor
 *
 * Copyright 2015-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import UIKit
import XCTest

class DynamicColorTests: XCTTestCaseTemplate {
  func testColorFromHexString() {
    let redStandard = UIColor.red()
    let redHex      = UIColor(hexString: "#ff0000")

    XCTAssert(redStandard.isEqual(redHex), "Color should be equals")

    let customStandard = UIColor(red: 171 / 255, green: 63 / 255, blue: 74 / 255, alpha: 1)
    let customHex      = UIColor(hexString: "ab3F4a")

    XCTAssert(customStandard.isEqual(customHex), "Color should be equals")

    let wrongStandard = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let wrongHex      = UIColor(hexString: "#T5RD2Z")

    XCTAssert(wrongStandard.isEqual(wrongHex), "Color should be equals")
  }

  func testToHexString() {
    let red    = UIColor.red()
    let blue   = UIColor.blue()
    let green  = UIColor.green()
    let yellow = UIColor.yellow()
    let black  = UIColor.black()
    let custom = UIColor(hex: 0x769a2b)

    XCTAssert(red.toHexString() == "#ff0000", "Color string should be equal to #ff0000")
    XCTAssert(blue.toHexString() == "#0000ff", "Color string should be equal to #0000ff")
    XCTAssert(green.toHexString() == "#00ff00", "Color string should be equal to #00ff00")
    XCTAssert(yellow.toHexString() == "#ffff00", "Color string should be equal to #ffff00")
    XCTAssert(black.toHexString() == "#000000", "Color string should be equal to #000000")
    XCTAssert(custom.toHexString() == "#769a2b", "Color string should be equal to #769a2b")
  }

  func testToHex() {
    let red    = UIColor.red()
    let blue   = UIColor.blue()
    let green  = UIColor.green()
    let yellow = UIColor.yellow()
    let black  = UIColor.black()
    let custom = UIColor(hex: 0x769a2b)

    XCTAssert(red.toHex() == 0xff0000, "Color string should be equal to 0xff0000")
    XCTAssert(blue.toHex() == 0x0000ff, "Color string should be equal to 0x0000ff")
    XCTAssert(green.toHex() == 0x00ff00, "Color string should be equal to 0x00ff00")
    XCTAssert(yellow.toHex() == 0xffff00, "Color string should be equal to 0xffff00")
    XCTAssert(black.toHex() == 0x000000, "Color string should be equal to 0x000000")
    XCTAssert(custom.toHex() == 0x769a2b, "Color string should be equal to 0x769a2b")
  }

  func testIsEqualToHexString() {
    let red    = UIColor.red()
    let blue   = UIColor.blue()
    let green  = UIColor.green()
    let yellow = UIColor.yellow()
    let black  = UIColor.black()
    let custom = UIColor(hex: 0x769a2b)

    XCTAssert(red.isEqualToHexString("#ff0000"), "Color string should be equal to #ff0000")
    XCTAssert(blue.isEqualToHexString("#0000ff"), "Color string should be equal to #0000ff")
    XCTAssert(green.isEqualToHexString("#00ff00"), "Color string should be equal to #00ff00")
    XCTAssert(yellow.isEqualToHexString("#ffff00"), "Color string should be equal to #ffff00")
    XCTAssert(black.isEqualToHexString("#000000"), "Color string should be equal to #000000")
    XCTAssert(custom.isEqualToHexString("#769a2b"), "Color string should be equal to #769a2b")
  }

  func testIsEqualToHex() {
    let red    = UIColor.red()
    let blue   = UIColor.blue()
    let green  = UIColor.green()
    let yellow = UIColor.yellow()
    let black  = UIColor.black()
    let custom = UIColor(hex: 0x769a2b)

    XCTAssert(red.isEqualToHex(0xff0000), "Color string should be equal to 0xff0000")
    XCTAssert(blue.isEqualToHex(0x0000ff), "Color string should be equal to 0x0000ff")
    XCTAssert(green.isEqualToHex(0x00ff00), "Color string should be equal to 0x00ff00")
    XCTAssert(yellow.isEqualToHex(0xffff00), "Color string should be equal to 0xffff00")
    XCTAssert(black.isEqualToHex(0x000000), "Color string should be equal to 0x000000")
    XCTAssert(custom.isEqualToHex(0x769a2b), "Color string should be equal to 0x769a2b")
  }

  func testToRGBAComponents() {
    let customColor = UIColor(red: 0.23, green: 0.46, blue: 0.32, alpha: 1)

    let rgba = customColor.toRGBAComponents()
    XCTAssert(rgba.r == 0.23, "Color red component should be equal to 0.23")
    XCTAssert(rgba.g == 0.46, "Color green component should be equal to 0.46")
    XCTAssert(rgba.b == 0.32, "Color blue component should be equal to 0.32")
    XCTAssert(rgba.a == 1, "Color alpha component should be equal to 1")
  }

  func testRedComponent() {
    let customColor = UIColor(red: 0.23, green: 0.46, blue: 0.32, alpha: 1)

    let redComponent = customColor.redComponent

    XCTAssert(redComponent == 0.23, "Color red component should be equal to 0.23")
  }

  func testGreenComponent() {
    let customColor = UIColor(red: 0.23, green: 0.46, blue: 0.32, alpha: 1)

    let greenComponent = customColor.greenComponent

    XCTAssert(greenComponent == 0.46, "Color green component should be equal to 0.46")
  }

  func testBlueComponent() {
    let customColor = UIColor(red: 0.23, green: 0.46, blue: 0.32, alpha: 1)

    let blueComponent = customColor.blueComponent

    XCTAssert(blueComponent == 0.32, "Color blue component should be equal to 0.32")
  }

  func testAlphaComponent() {
    let customColor = UIColor(red: 0.23, green: 0.46, blue: 0.32, alpha: 1)

    let alphaComponent = customColor.alphaComponent

    XCTAssert(alphaComponent == 1, "Color alpha component should be equal to 1")
  }

  func testAdjustedAlphaColor() {
    let customColor = UIColor(red: 0.23, green: 0.46, blue: 0.32, alpha: 1)

    XCTAssert(customColor.alphaComponent == 1, "Color alpha component should be equal to 1")

    let adjustedAlpha1 = customColor.adjustedAlpha(amount: -0.5)

    XCTAssert(adjustedAlpha1.alphaComponent == 0.5, "Color alpha component should be equal to 0.5")

    let adjustedAlpha2 = adjustedAlpha1.adjustedAlpha(amount: 0.2)

    XCTAssert(adjustedAlpha2.alphaComponent == 0.7, "Color alpha component should be equal to 0.7")

    let adjustedAlpha3 = adjustedAlpha2.adjustedAlpha(amount: -1)

    XCTAssert(adjustedAlpha3.alphaComponent == 0, "Color alpha component should be equal to 0")

    let adjustedAlpha4 = adjustedAlpha3.adjustedAlpha(amount: 23)

    XCTAssert(adjustedAlpha4.alphaComponent == 1, "Color alpha component should be equal to 1")
  }

  func testInitWithHSLAComponents() {
    let black1 = UIColor(hue: 0, saturation: 0, lightness: 0)
    let black2 = UIColor(hue: 1, saturation: 1, lightness: 0)
    let white1 = UIColor(hue: 0, saturation: 0, lightness: 1)
    let white2 = UIColor(hue: 1, saturation: 1, lightness: 1)

    let red   = UIColor(hue: 0, saturation: 1, lightness: 0.5)
    let green = UIColor(hue: 120 / 360, saturation: 1, lightness: 0.5)
    let blue  = UIColor(hue: 240 / 360, saturation: 1, lightness: 0.5)

    let custom = UIColor(hue: 6 / 360, saturation: 0.781, lightness: 0.571)
    let alpha  = UIColor(hue: 6 / 360, saturation: 0.781, lightness: 0.571, alpha: 0.5)

    XCTAssert(black1.toHex() == 0, "Color should be black")
    XCTAssert(black2.toHex() == 0, "Color should be black")
    XCTAssert(white1.toHex() == 0xffffff, "Color should be white")
    XCTAssert(white2.toHex() == 0xffffff, "Color should be white")

    XCTAssert(red.isEqual(UIColor.red()), "Color should be red")
    XCTAssert(green.isEqual(UIColor.green()), "Color should be green")
    XCTAssert(blue.isEqual(UIColor.blue()), "Color should be blue")

    XCTAssert(custom.isEqualToHexString("#e74d3c"), "Color should be equal to #e74d3c")
    XCTAssert(alpha.isEqualToHexString("#e74d3c"), "Color should be equal to #e74d3c")
    XCTAssert(alpha.alphaComponent == 0.5, "Color alpha channel should be equal to 0.5")
  }

  func testToHSLAComponents() {
    let customColor = UIColor(hue: 6 / 360, saturation: 0.781, lightness: 0.571)
    let hsla        = customColor.toHSLAComponents()

    XCTAssert(round(hsla.h * 1000) == round(6.0 / 360 * 1000), "Color hue component should be equal to 6 / 360")
    XCTAssert(round(hsla.s * 1000) == round(0.781 * 1000), "Color saturation component should be equal to 0.781")
    XCTAssert(hsla.l == 0.571, "Color lightness component should be equal to 0.571")
    XCTAssert(hsla.a == 1, "Color alpha component should be equal to 1")
  }

  func testAdjustHueColor() {
    let custom1 = UIColor(hex: 0x881111).adjustedHue(amount: 45 / 360)
    let custom2 = UIColor(hex: 0xc0392b).adjustedHue(amount: 90 / 360)
    let custom3 = UIColor(hex: 0xc0392b).adjustedHue(amount: -60 / 360)
    let same1   = UIColor(hex: 0xc0392b).adjustedHue(amount: 0)
    let same2   = UIColor(hex: 0xc0392b).adjustedHue(amount: 360 / 360)

    XCTAssert(custom1.isEqualToHexString("#886a11"), "Color string should be equal to #886a11 (not \(custom1.toHexString()))")
    XCTAssert(custom2.isEqualToHexString("#67c02b"), "Color string should be equal to #67c02b (not \(custom2.toHexString()))")
    XCTAssert(custom3.isEqualToHexString("#c02bb2"), "Color string should be equal to #c02bb2 (not \(custom3.toHexString()))")
    XCTAssert(same1.isEqualToHexString("#c0392b"), "Color string should be equal to #c0392b (not \(same1.toHexString()))")
    XCTAssert(same2.isEqualToHexString("#c0392b"), "Color string should be equal to #c0392b (not \(same2.toHexString()))")
  }

  func testComplementColor() {
    let complement  = UIColor(hex: 0xc0392b).complemented()
    let adjustedHue = UIColor(hex: 0xc0392b).adjustedHue(amount: 180 / 360)

    XCTAssert(complement.isEqual(adjustedHue), "Colors should be the same")
  }

  func testLighterColor() {
    let red    = UIColor.red().lighter()
    let green  = UIColor.green().lighter()
    let blue   = UIColor.blue().lighter()
    let violet = UIColor(red: 1, green: 0, blue: 1, alpha: 1).lighter()
    let white  = UIColor.white().lighter()
    let black  = UIColor.black().lighter()
    let gray   = black.lighter()

    XCTAssert(red.isEqualToHex(0xff6666), "Color string should be equal to #ff6666 (not \(red.toHexString()))")
    XCTAssert(green.isEqualToHex(0x66ff66), "Color string should be equal to #66ff66 (not \(green.toHexString()))")
    XCTAssert(blue.isEqualToHex(0x6666ff), "Color string should be equal to #6666ff (not \(blue.toHexString()))")
    XCTAssert(violet.isEqualToHex(0xff66ff), "Color string should be equal to #ff66ff (not \(violet.toHexString()))")
    XCTAssert(white.isEqualToHex(0xffffff), "Color string should be equal to #ffffff (not \(white.toHexString()))")
    XCTAssert(black.isEqualToHex(0x333333), "Color string should be equal to #333333 (not \(black.toHexString()))")
    XCTAssert(gray.isEqual(UIColor(hex: 0x666666)), "Color string should be equal to #666666 (not \(gray.toHexString()))")
  }

  func testLightenColor() {
    let whiteFromBlack = UIColor.black().lighter(amount: 1)
    let same           = UIColor(hex: 0xc0392b).lighter(amount: 0)
    let maxi           = UIColor(hex: 0xc0392b).lighter(amount: 1)

    XCTAssert(whiteFromBlack.isEqualToHexString("#ffffff"), "Color should be equals (not \(whiteFromBlack.toHexString()))")
    XCTAssert(same.isEqualToHexString("#c0392b"), "Color string should be equal to #c0392b (not \(same.toHexString()))")
    XCTAssert(maxi.isEqualToHexString("#ffffff"), "Color string should be equal to #ffffff (not \(maxi.toHexString()))")
  }

  func testDarkerColor() {
    let red   = UIColor.red().darkened()
    let white = UIColor.white().darkened()
    let gray  = white.darkened()
    let black = UIColor.black().darkened()

    XCTAssert(red.isEqualToHexString("#990000"), "Color string should be equal to #990000 (not \(red.toHexString()))")
    XCTAssert(white.isEqualToHexString("#cccccc"), "Color string should be equal to #cccccc (not \(white.toHexString()))")
    XCTAssert(gray.isEqualToHexString("#999999"), "Color string should be equal to #999999 (not \(gray.toHexString()))")
    XCTAssert(black.isEqualToHexString("#000000"), "Color string should be equal to #000000 (not \(black.toHexString()))")
  }

  func testDarkenColor() {
    let blackFromWhite = UIColor.white().darkened(amount: 1)
    let same           = UIColor(hex: 0xc0392b).darkened(amount: 0)
    let maxi           = UIColor(hex: 0xc0392b).darkened(amount: 1)

    XCTAssert(blackFromWhite.isEqualToHexString("#000000"), "Colors should be the same (not \(blackFromWhite.toHexString()))")
    XCTAssert(same.isEqualToHexString("#c0392b"), "Color string should be equal to #c0392b (not \(same.toHexString()))")
    XCTAssert(maxi.isEqualToHexString("#000000"), "Color string should be equal to #000000 (not \(maxi.toHexString()))")
  }

  func testSaturatedColor() {
    let primary = UIColor.red().saturated()
    let white   = UIColor.white().saturated()
    let black   = UIColor.black().saturated()
    let custom  = UIColor(hex: 0xc0392b).saturated()


    XCTAssert(primary.isEqualToHexString("#ff0000"), "Color string should be equal to #ff0000 (not \(primary.toHexString()))")
    XCTAssert(white.isEqualToHexString("#ffffff"), "Color string should be equal to #ffffff (not \(white.toHexString()))")
    XCTAssert(black.isEqualToHexString("#000000"), "Color string should be equal to #000000 (not \(black.toHexString()))")
    XCTAssert(custom.isEqualToHexString("#d72513"), "Color string should be equal to #d72513 (not \(custom.toHexString()))")
  }

  func testSaturateColor() {
    let same = UIColor(hex: 0xc0392b).saturated(amount: 0)
    let maxi = UIColor(hex: 0xc0392b).saturated(amount: 1)

    XCTAssert(same.isEqualToHexString("#c0392b"), "Color string should be equal to #c0392b (not \(same.toHexString()))")
    XCTAssert(maxi.isEqualToHexString("#eb1600"), "Color string should be equal to #eb1600 (not \(maxi.toHexString()))")
  }

  func testDesaturatedColor() {
    let primary = UIColor.red().desaturated()
    let white   = UIColor.white().desaturated()
    let black   = UIColor.black().desaturated()
    let custom  = UIColor(hex: 0xc0392b).desaturated()

    XCTAssert(primary.isEqualToHexString("#e51919"), "Color string should be equal to #e51919 (not \(primary.toHexString()))")
    XCTAssert(white.isEqualToHexString("#ffffff"), "Color string should be equal to #ffffff (not \(white.toHexString()))")
    XCTAssert(black.isEqualToHexString("#000000"), "Color string should be equal to #000000 (not \(black.toHexString()))")
    XCTAssert(custom.isEqualToHexString("#a84c42"), "Color string should be equal to #a84c42 (not \(custom.toHexString()))")
  }

  func testDesaturateColor() {
    let same = UIColor(hex: 0xc0392b).desaturated(amount: 0)
    let maxi = UIColor(hex: 0xc0392b).desaturated(amount: 1)

    XCTAssert(same.isEqualToHexString("#c0392b"), "Color string should be equal to #c0392b (not \(same.toHexString()))")
    XCTAssert(maxi.isEqualToHexString("#757575"), "Color string should be equal to #757575 (not \(maxi.toHexString()))")
  }

  func testGrayscaleColor() {
    let grayscale   = UIColor(hex: 0xc0392b).grayscaled()
    let desaturated = UIColor(hex: 0xc0392b).desaturated(amount: 1)

    XCTAssert(grayscale.isEqual(desaturated), "Colors should be the same")
  }

  func testInvertColor() {
    let inverted = UIColor(hex: 0xff0000).inverted()
    let original = inverted.inverted()

    XCTAssert(inverted.isEqualToHexString("#00ffff"), "Color string should be equal to #00ffff")
    XCTAssert(original.isEqualToHexString("#ff0000"), "Color string should be equal to #ff0000")
  }

  func testIsLightColor() {
    let l1 = UIColor.white()
    let l2 = UIColor.green()
    let d1 = UIColor.black()
    let d2 = UIColor.red()
    let d3 = UIColor.blue()

    XCTAssert(l1.isLight(), "White should be light")
    XCTAssert(l2.isLight(), "Green should be light")
    XCTAssertFalse(d1.isLight(), "Black should be dark")
    XCTAssertFalse(d2.isLight(), "Red should be dark")
    XCTAssertFalse(d3.isLight(), "Blue should be dark")
  }

  func testMixColors() {
    let red  = UIColor.red()
    let blue = UIColor.blue()

    var midMix = red.mixed(color: blue)

    XCTAssert(midMix.isEqualToHexString("#7f007f"), "Color string should be equal to #7f007f")

    midMix = blue.mixed(color: red)

    XCTAssert(midMix.isEqualToHexString("#7f007f"), "Color string should be equal to #7f007f")

    let noMix         = red.mixed(color: blue, weight: 0)
    let noMixOverflow = red.mixed(color: blue, weight: -20)

    XCTAssert(noMix.isEqualToHexString("#ff0000"), "Color string should be equal to #ff0000")
    XCTAssert(noMix.isEqual(noMixOverflow), "Colors should be the same")

    let fullMix         = red.mixed(color: blue, weight: 1)
    let fullMixOverflow = red.mixed(color: blue, weight: 24)

    XCTAssert(fullMix.isEqualToHexString("#0000ff"), "Color string should be equal to #0000ff")
    XCTAssert(fullMix.isEqual(fullMixOverflow), "Colors should be the same")
  }

  func testTintColor() {
    let tint = UIColor(hex: 0xc0392b).tinted()

    XCTAssert(tint.isEqualToHexString("#cc6055"), "Color string should be equal to #cc6055")

    let white = UIColor(hex: 0xc0392b).tinted(amount: 1)

    XCTAssert(white.isEqualToHexString("#ffffff"), "Color string should be equal to #ffffff")

    let alwaysWhite = UIColor.white().tinted()

    XCTAssert(alwaysWhite.isEqualToHexString("#ffffff"), "Color string should be equal to #ffffff")
  }

  func testShadeColor() {
    let shade = UIColor(hex: 0xc0392b).shaded()

    XCTAssert(shade.isEqualToHexString("#992d22"), "Color string should be equal to #992d22")

    let black = UIColor(hex: 0xc0392b).shaded(amount: 1)

    XCTAssert(black.isEqualToHexString("#000000"), "Color string should be equal to #000000")
    
    let alwaysBlack = UIColor.black().shaded()
    
    XCTAssert(alwaysBlack.isEqualToHexString("#000000"), "Color string should be equal to #000000")
  }
}
