# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), 
and this project adheres to 
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 3.0.2 dev build as of 2021-11-24
- Currently unreleased
### Fixed
- `mandiexp`
    - Version number works
- `mandi`
    - `\mivector` now requires more than one component
- `mandistudent`
    - Version number works
    - URLs fixed in `\vpythonfile`
    - URLs fixed in `webvpythonblock`

### Added
- `mandiexp`
- `mandi`
    - Added `\hbar`
    - Added `\lorentzfactor`
    - Added a negative space to `\lightspeed`
- `mandistudent`

### Changed
- `mandiexp`
    - Code formatted for better readability
    - `xparse` is loaded for older formats
- `mandi`
    - Code formatted for better readability
    - `xparse` is loaded for older formats
    - `LaTeX3` code now conforms to formatting standards
    - Constants' values now only use `\times`
    - Improved `\checkconstant`
    - Improved `\checkquantity`
    - Unknown package options handled safely
- `mandistudent`
    - Code formatted for better readability
    - `xparse` is loaded for older formats
    - All instances of `GlowScript` have been changed to `Web VPython`
    - `LaTeX3` code now conforms to formatting standards
    - Slightly modified `\image`
    - `\dirvec` no longer adds `\scriptspace` when no sub/superscript is given
    - `\vec` no longer adds `\scriptspace` when no sub/superscript is given

## 3.0.1 released 2021-08-24
### Changed
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi) but no longer shows up
  there for some reason despite doing so initially
- `mandiexp` 
    - Minor doc changes
- `mandi` 
    - Minor doc changes
- `mandistudent` 
    - Minor doc changes

## 3.0.0 released 2021-08-22
### New
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
- `mandiexp` 
    - Initial release
- `mandi` 
    - Initial release
- `mandistudent` 
    - Initial release
 

