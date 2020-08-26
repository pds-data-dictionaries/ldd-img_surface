# Surface Imaging Local Data Dictionary (LDD)

The Surface Imaging Dictionary contains classes, attributes, and rules for specifying the metadata associated with imaging and spectrometer data products of surface missions.

Steward: [IMG Node](https://pds-imaging.jpl.nasa.gov/)

Only one LDD source version is kept such that it can be managed by github.

- [1.E.0.0](src)

## Versions

A Local Data Dictionary (LDD) is built for selected versions of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatiblity of the LDD with the core information model.

## Builds


This LDD has been released for the following versions of the PDS4 information model:

- [PDS4 IM v1.14.1.0 (IMG_SURFACE LDD v1.2.0.0)](build/release/1.E.0.0_1.2.0.0)
- [PDS4 IM v1.11.1.0 (IMG_SURFACE LDD v1.1.1.0)](build/release/1.B.1.0_1.1.1.0)


## Notes

Each build is generated using the [lddtool](https://pds.nasa.gov/tools/about/ldd/) specific to a version of the [PDS4 Information Model](https://pds.nasa.gov/datastandards/documents/im/). The build command used is:

```
lddtool -lpsnJ PDS4_IMG_SURFACE_IngestLDD.xml
```

# Contribute

Have a bug or feature request? Create one in the [PDS4 Issue Repo](https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo/issues/new/choose).


# Support

See the [PDS Data Dictionaries Support page](https://pds-data-dictionaries.github.io/support/) for more Support information.
