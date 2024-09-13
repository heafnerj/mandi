# Changelog
All notable changes to this project will be documented in this file. 

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), 
and this project adheres to 
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

These changes reflect more than just those to the files uploaded to 
[CTAN](https://www.ctan.org/pkg/mandi). The latter are also documented in `mandi.pdf`.

## 3.2.2a released 2024-09-13
- **Not** uploaded to [CTAN](https://www.ctan.org/pkg/mandi) because there are no
  functional changes.
### Changed
- 'mandistudent'
    - Removed a `%` to keep a line from appearing in the `.sty` file
- Split `NnnnnnnnCCPxx.tex` into two files `NnnCCPxx-1.tex` and `NnnCCPxx-2.tex` for [Overleaf](https://www.overleaf.com/) users. Use `NnnCCPxx-1.tex` for free accounts.

## 3.2.2 released 2024-02-27
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### Changed
- Ensured all subscripts and superscripts are braced
- Removed unnecessary `\ExplSyntaxOn` and `\ExplSyntaxOff` pairs

## 3.2.1 released 2023-11-22
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### Changed
- Improved CTAN `README.md` (in the `.zip` file) at request of CTAN maintainer
- Corrected errors in `CHANGELOG.md`
- Edited documentation in `NnnnnnnnCCPxx.tex`
- Renamed a file in `.gitignore`
- `mandi`, `mandistudent`, `mandiexp`
    - Source updated and bumped version for new CTAN upload
- `mandi`
    - Minor change to `mandi.ins` inside `mandi.dtx`

## 3.2.0 released 2023-08-01
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### Added
- Added new examples to `NnnnnnnnCCPxx.tex`
- `mandistudent`
	- Added statement about BEAMER compatibility
	- `\hilite` is not defined if BEAMER is loaded
	- `physicsproblem` and `physicsproblem*` are not defined if BEAMER is loaded
	- `\vpythonfile` now shows URL in header
	- `webvpythonblock` and `webvpythonblock*` now show URL in header
- `mandiexp`
	- `mandistudent` is loaded for `\vec*`
### Changed
- `mandi`, `mandistudent`, `mandiexp`
    - Source updated
- `mandi`
	- Changed `\unit` to `\units`

## 3.1.0 released 2022-01-27
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### Fixed
- `mandi`
    - `\mivector` now requires more than one component
- `mandistudent`
    - URLs fixed in `\vpythonfile`
    - URLs fixed in `webvpythonblock`
    - Version number works
    - `\vec` and `\dirvec` no longer add `\scriptspace` when no sub/superscript 
       is given
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
		
### Changed
- `mandi`, `mandistudent`, `mandiexp`
    - Code formatted for better readability
    - `xparse` is loaded for older formats
- `mandi`, `mandistudent`
    - `LaTeX3` code now conforms to formatting standards
- `mandi`
    - Constants' values now only use `\times`
    - Improved `\checkconstant`
    - Improved `\checkquantity`
    - Unknown package options handled safely
- `mandistudent`
    - All instances of `GlowScript` have been changed to `Web VPython`
    - Slightly modified `\image`
    - `\diff` renamed to `\df` for compatibility with the `numerica` package

## 3.0.1 released 2021-08-24
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi) but no longer shows up there for 
  some reason despite doing so initially
### Changed
- `mandi`, `mandistudent`, `mandiexp`
    - Minor doc changes

## 3.0.0 released 2021-08-22
- Uploaded to [CTAN](https://www.ctan.org/pkg/mandi)
### New
- `mandi`, `mandistudent`, `mandiexp`
    - Initial release
 

