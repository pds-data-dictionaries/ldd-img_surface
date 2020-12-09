<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:img_surface  Version:1.2.2.0 - Wed Dec 09 19:34:14 UTC 2020 -->
  <!-- Generated from the PDS4 Information Model Version 1.15.0.0 - System Build 11a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/img_surface/v1" prefix="img_surface"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/geom/v1" prefix="geom"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//img_surface:Surface_Imaging/pds:Local_External_Reference">
      <sch:assert test="pds:local_reference_type = 'mars_surface_imaging_to_image_object'">
        In img_surface:Surface_Imaging, Local_External_Reference.local_reference_type must have value 'mars_surface_imaging_to_image_object'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Geometry_Projection/pds:External_Reference">
      <sch:assert test="pds:reference_type = 'data_to_linearization_partner'">
        In img_surface:Geometry_Projection, External_Reference.reference_type must be equal to 'data_to_linearization_partner'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Stereo_Product_Parameters/pds:External_Reference">
      <sch:assert test="pds:reference_type = 'data_to_stereo_partner'">
        In img_surface:Stereo_Product_Parameters, External_Reference.reference_type must be equal to 'data_to_stereo_partner'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Configuration/img_surface:device_config">
      <sch:assert test=". = ('ARM_SI_ED_WD', 'ARM_SI_ED_WU', 'ARM_SI_EU_WD', 'ARM_SI_EU_WU', 'ARM_SO_ED_WD', 'ARM_SO_ED_WU', 'ARM_SO_EU_WD', 'ARM_SO_EU_WU')">
        The attribute img_surface:device_config must be equal to one of the following values 'ARM_SI_ED_WD', 'ARM_SI_ED_WU', 'ARM_SI_EU_WD', 'ARM_SI_EU_WU', 'ARM_SO_ED_WD', 'ARM_SO_ED_WU', 'ARM_SO_EU_WD', 'ARM_SO_EU_WU'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Derived_Product_Parameters/img_surface:horizon_mask_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Geometry_Projection/img_surface:geometry_projection_type">
      <sch:assert test=". = ('Linearized', 'Raw')">
        The attribute img_surface:geometry_projection_type must be equal to one of the following values 'Linearized', 'Raw'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Geometry_Projection/img_surface:linearization_mode">
      <sch:assert test=". = ('Actual', 'Nominal', 'None')">
        The attribute img_surface:linearization_mode must be equal to one of the following values 'Actual', 'Nominal', 'None'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Geometry_Projection/img_surface:linearization_mode_fov">
      <sch:assert test=". = ('Linear', 'Max', 'Min', 'None')">
        The attribute img_surface:linearization_mode_fov must be equal to one of the following values 'Linear', 'Max', 'Min', 'None'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Instrument_Information/img_surface:instrument_type">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('IMAGING CAMERA', 'IMAGING SPECTROMETER', 'RADIOMETER', 'SPECTROMETER')))) then false() else true()">
        The attribute img_surface:instrument_type must be nulled or equal to one of the following values 'IMAGING CAMERA', 'IMAGING SPECTROMETER', 'RADIOMETER', 'SPECTROMETER'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Reach_Instrument/img_surface:instrument_id">
      <sch:assert test=". = ('APXS', 'DRILL', 'DRT', 'FCS', 'GDRT', 'MAHLI', 'PIXL', 'SCOOP_TIP', 'SHERLOC', 'SHERLOC_WATSON')">
        The attribute img_surface:instrument_id must be equal to one of the following values 'APXS', 'DRILL', 'DRT', 'FCS', 'GDRT', 'MAHLI', 'PIXL', 'SCOOP_TIP', 'SHERLOC', 'SHERLOC_WATSON'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Reachability/img_surface:device_id">
      <sch:assert test=". = ('ARM')">
        The attribute img_surface:device_id must be equal to the value 'ARM'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Stereo_Product_Parameters/img_surface:stereo_baseline_length">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Vector_Range_Origin/img_surface:x_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Vector_Range_Origin/img_surface:y_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surface:Vector_Range_Origin/img_surface:z_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Surface_Imaging/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'mars_surface_imaging_to_image_object'">
        In img_surface:Surface_Imaging, Local_Internal_Reference.local_reference_type must have value 'mars_surface_imaging_to_image_object'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Geometry_Projection/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_linearization_partner'">
        In img_surface:Geometry_Projection, Internal_Reference.reference_type must be equal to 'data_to_linearization_partner'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Stereo_Product_Parameters/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_stereo_partner'">
        In img_surface:Stereo_Product_Parameters, Internal_Reference.reference_type must be equal to 'data_to_stereo_partner'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Error_Model/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_error_model'">
        In img_surface:Error_Model, Internal_Reference.reference_type must be equal to 'data_to_error_model'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surface:Placement_Target_Instrument/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_placement_instrument'">
        In img_surface:Placement_Target_Instrument, Internal_Reference.reference_type must be equal to 'data_to_placement_instrument'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
