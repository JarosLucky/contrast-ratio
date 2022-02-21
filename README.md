## Contrast Ratio for Garry's mod

This module produces [WCAG](http://www.w3.org/WAI/intro/wcag.php) [contrast ratio](http://www.w3.org/TR/WCAG20/#contrast-ratiodef)
measurement and scoring.

## API

### **[COLOR](https://wiki.facepunch.com/gmod/Color)**:GetLuminance()

Get cached calculated the contrast ratio

Returns **[float](https://wiki.facepunch.com/gmod/number)** contrast ratio

### **[COLOR](https://wiki.facepunch.com/gmod/Color)**:CalcLuminance()

Get calculated the contrast ratio

Returns **[float](https://wiki.facepunch.com/gmod/number)** contrast ratio

### util.ContrastRatio

Get a score for the contrast between two colors

**Parameters**

-	`cSrc`		**[color](https://wiki.facepunch.com/gmod/Color)** 
-	`cDst`		**[color](https://wiki.facepunch.com/gmod/Color)** 

Returns **[float](https://wiki.facepunch.com/gmod/number)** contrast ratio

### util.ContrastRatioLevel

Get a level of the contrast between two colors

-   `cSrc`		**[color](https://wiki.facepunch.com/gmod/Color)** 
-	`cDst`		**[color](https://wiki.facepunch.com/gmod/Color)** 

Returns **[number](https://wiki.facepunch.com/gmod/number)** level contrast ratio

### util.ContrastRatioRate

Get a textual score from a numeric contrast value

**Parameters**

-	`cSrc`		**[color](https://wiki.facepunch.com/gmod/Color)** 
-	`cDst`		**[color](https://wiki.facepunch.com/gmod/Color)** 

Returns **[string](https://wiki.facepunch.com/gmod/string)** score

### util.ContrastColor

Get a contrast color for first argument

**Parameters**

-	`cSrc`		**[color](https://wiki.facepunch.com/gmod/Color)** 
-	`cDst`		**[color](https://wiki.facepunch.com/gmod/Color)** 
-	`cDstAlt`	**[color](https://wiki.facepunch.com/gmod/Color)** 

Returns **[color](https://wiki.facepunch.com/gmod/Color)** contrast