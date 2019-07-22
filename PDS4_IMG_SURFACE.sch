<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:img_surf  Version:1.9.0.0 - Tue Jan 23 16:37:46 PST 2018 -->
  <!-- Generated from the PDS4 Information Model Version 1.9.0.0 - System Build 8a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/img_surf/v1" prefix="img_surf"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//img_surf:Autoexposure_Parameters">
      <sch:assert test="(img_surf:autoexposure_algorithm = 'Maki 2003' and exists(//img_surf:Maki_2003_Autoexposure)) or  (img_surf:autoexposure_algorithm = 'Smith 1997' and exists(//img_surf:Smith_1997_Autoexposure)) or  (img_surf:autoexposure_algorithm = 'Maurice 2012' and exists(//img_surf:Maurice_2012_Autoexposure))">
        IMG_SURF:error:autoexposure_check: img_surf:autoexposure_algorithm must be accompanied by the associated *_Autoexposure class.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Derived_Product_Parameters/img_surf:horizon_mask_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Geometry_Projection_Parameters/img_surf:geometry_projection_type">
      <sch:assert test=". = ('Linearized', 'Raw')">
        The attribute img_surf:geometry_projection_type must be equal to one of the following values 'Linearized', 'Raw'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Geometry_Projection_Parameters/img_surf:linearization_mode">
      <sch:assert test=". = ('Actual', 'Nominal', 'None')">
        The attribute img_surf:linearization_mode must be equal to one of the following values 'Actual', 'Nominal', 'None'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Mars_Surface_Imaging_Parameters/img_surf:surface_gravity">
      <sch:assert test="@unit = ('cm/s**2', 'km/s**2', 'm/s**2')">
        The attribute @unit must be equal to one of the following values 'cm/s**2', 'km/s**2', 'm/s**2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Mars_Surface_Imaging_Parameters/img_surf:telemetry_transport_protocol">
      <sch:assert test=". = ('SFDU')">
        The attribute img_surf:telemetry_transport_protocol must be equal to the value 'SFDU'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Maurice_2012_Autoexposure/img_surf:autoexposure_duration_seed">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Stereo_Product_Parameters/img_surf:stereo_baseline_length">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Vector_Range_Origin/img_surf:x_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Vector_Range_Origin/img_surf:y_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="img_surf:Vector_Range_Origin/img_surf:z_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surf:Stereo_Product_Parameters/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'data_to_stereo_partner'">
        In img_surf:Stereo_Product_Parameters, Internal_Reference.reference_type must be equal to 'data_to_stereo_partner'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surf:Coordinate_Space_Reference/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'mars_surface_imaging_parameters_to_image_object'">
        In img_surf:Coordinate_Space_Reference, Local_Internal_Reference.local_reference_type must have value 'mars_surface_imaging_parameters_to_image_object'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//img_surf:Stereo_Product_Parameters/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'data_to_stereo_partner'">
        In img_surf:Stereo_Product_Parameters, Local_Internal_Reference.local_reference_type must be equal to 'data_to_stereo_partner'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
