# Changelog

## 1.2.7.0 
- T. Hare
- added Uncorrected to geometry_projection_type

## 1.2.6.0
- T. Hare
- added tracking_id

## 1.2.5.0
- T. Hare
- added Trapezoid to geometry_projection_type (for cameras like Mars 2020 PIXL MCC)

## 1.2.4.0
- T. Hare
- fix: added Reachability class as a child of img_surface:Surface_Imaging
- updated to Reachability to new location in class

## 1.2.2.0
- T. Hare
- build with GEOM v1900, grabbing the dependencies using:
          git submodule add https://github.com/pds-data-dictionaries/ldd-geom
- add 3 new reference_types for external under rules
- update instrument_type to allow nil and added enumerations to meet "_type" attribute rules
      
## 1.2.1.0
- T. Hare
- added correlation_average_scale, correlation_overlap_percentage, correlation_pixel_count attributes to
        Stereo_Product_Parameters Class
- added Reachability Class and attributes and classes including these children:
        Reach_Instruments and Reach_Instrument classes and their attributes

## 1.2.0.0
- T. Hare
- updated to PDS IM v 1E00 and GEOM 1E00_1800
- updated ops_instrument_key to be unbounded and updated definition.
- added Commanded_Parameters using existing classes as children added to bottom of Surface_Imaging class
- added image_id_2 attribute to Image_Identifiers
- added start_image_id, observation_number, parameter_table_number to Image_Identifiers
- added camera_model_serial_number attribute to Instrument_Information class 
      
## 1.1.1.0
- T. Hare
- Removed Pointing_Correction and its child attributes/classes (moved to IMG)

## 1.1.0.0
- Upgraded to v1B10 of the IM.
- Re-classified this dictionary as a Discipline Dictionary, instead of Mission Dictionary.
- Renamed Surface_Imaging_Parameters to Surface_Imaging, Error_Model_Information to Error_Model, 
        Geometry_Projection_Parameters to Geometry_Projection, and Pointing_Correction_Parameters to Pointing_Correction.
- Added new attribute to Instrument_Information: ops_instrument_key

## 1.0.0.0
- Initial version
