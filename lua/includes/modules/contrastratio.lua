local COLOR = FindMetaTable("Color")

local function adjustValue(iVal)
	iVal = iVal / 255

	if iVal > 0.03928 then
		iVal = math.pow((iVal + 0.055) / 1.055, 2.4)
	else
		iVal = iVal / 12.92
	end

	return iVal
end

function COLOR:CalcLuminance()
	return 0.2126 * adjustValue(self.r) + 0.7152 * adjustValue(self.g) + 0.0722 * adjustValue(self.b)
end

function COLOR:GetLuminance()
	if not self.l then
		self.l = self:CalcLuminance()
	end

	return self.l
end

function util.ContrastRatio(cSrc, cDst)
	local flSrcLum, flDstLum = cSrc:GetLuminance(), cDst:GetLuminance()

	local flRatio = (flSrcLum + 0.05) / (flDstLum + 0.05)

	if flSrcLum < flDstLum then
		flRatio = 1 / flRatio
	end

	return math.Round(flRatio, 1)
end

local RATING_LEVEL = {
	{0, 3},
	{3, 4.5},														
	{4.5, 7},
	{7, 22},
}

function util.ContrastRatioLevel(cSrc, cDst)
	local flRatio = util.ContrastRatio(cSrc, cDst)

	for iLevel, tRange in ipairs(RATING_LEVEL) do
		if flRatio >= tRange[1] and flRatio < tRange[2] then
			return iLevel
		end
	end

	return 1
end

local RATINGS_RATE = {
	'fail',
	'aa-large',
	'aa',
	'aaa',
}

function util.ContrastRatioRate(cSrc, cDst, tRatings)
	tRatings = tRatings or RATINGS_RATE

	local iLevel = util.ContrastRatioLevel(cSrc, cDst)
	return tRatings[iLevel] or iLevel
end

function util.ContrastColor(cSrc, cDst, cDstAlt)
	return util.ContrastRatio(cSrc, cDst) < util.ContrastRatio(cSrc, cDstAlt) and cDstAlt or cDst
end
