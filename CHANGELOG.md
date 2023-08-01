# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), 
and this project adheres to 
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 3.2.0 released 2023-07-23
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### Fixed
- `mandi`
- `mandistudent`
- `mandiexp`
### Added
- `mandi`
- `mandistudent`
	- Added statement about BEAMER compatibility
	- `\vpythonfile` now shows URL in header
	- `webvpythonblock*` now shows URL in header
	- `webvpythonblock` now shows URL in header
- `mandiexp`
	- `mandistudent` is loaded for `\vec*`
### Changed
- `mandi`
	- Changed `\unit` to `\units`
	- Source updated
- `mandistudent`
	- Source updated
- `mandiexp`
	- Source updated

## 3.1.0 released 2022-01-27
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### Fixed
- `mandi`
    - `\mivector` now requires more than one component
- `mandistudent`
    - URLs fixed in `\vpythonfile`
    - URLs fixed in `webvpythonblock`
    - Version number works
    - `\dirvec` no longer adds `\scriptspace` when no sub/superscript is given
    - `\vec` no longer adds `\scriptspace` when no sub/superscript is given
- `mandiexp`
    - Version number works

### Added
- `mandi`
    - Added GitHub links to code
    - Added `\hbar`
    - Added `\lorentzfactor`
    - Added a negative space to `\lightspeed`
- `mandistudent`
    - Default URL for `\vpythonfile` is now [vpython.org](https://vpython.org)
    - `webvpythonblock` now automatically generates QR codes for program listings
    - `webvpythonblock*` is a variant of `\webvpythonblock` that omits the QR code
- `mandiexp`
		
### Changed
- `mandi`
    - Code formatted for better readability
    - Constants' values now only use `\times`
    - Improved `\checkconstant`
    - Improved `\checkquantity`
    - Unknown package options handled safely
    - `LaTeX3` code now conforms to formatting standards
    - `xparse` is loaded for older formats
- `mandistudent`
    - All instances of `GlowScript` have been changed to `Web VPython`
    - Code formatted for better readability
    - Slightly modified `\image`
    - `LaTeX3` code now conforms to formatting standards
    - `\diff` renamed to `\df` for compatibility with the `numerica` package
    - `xparse` is loaded for older formats
- `mandiexp`
    - Code formatted for better readability
    - `xparse` is loaded for older formats

## 3.0.1 released 2021-08-24
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi) but no longer shows up there for 
  some reason despite doing so initially
### Changed
- `mandi` 
    - Minor doc changes
- `mandistudent` 
    - Minor doc changes
- `mandiexp` 
    - Minor doc changes

## 3.0.0 released 2021-08-22
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### New
- `mandi` 
    - Initial release
- `mandistudent` 
    - Initial release
- `mandiexp` 
    - Initial release
 

