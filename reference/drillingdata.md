# Borehole Drilling and Construction Data – Malawi, 2018 - 2024

This dataset captures detailed information on borehole drilling and
construction activities conducted across selected sites in Malawi
between 2018 and 2024. Data were collected using the mWater digital
platform, documenting each stage of groundwater development, from site
selection and hydrogeological studies to drilling operations, borehole
design, and post-construction assessments.

## Usage

``` r
drillingdata
```

## Format

A tibble with 152 rows and 138 variables

- date_of_drilling:

  The date when drilling was carried out.

- water_point_created:

  Indicates whether the water point has been created

- latitude:

  The geographic latitude of the drilling site.

- longtude:

  The geographic longitude of the drilling site.

- use_of_waterpoint:

  The intended use of the water point

- other_useage:

  Any additional usage of the water point not covered by the standard
  categories.

- funding_source:

  The source of funding for the drilling project

- wrb1a_form_completed:

  Indicates whether the WRB1A form for the drilling project has been
  completed.

- contract_signed:

  Whether a contract has been signed for the drilling project.

- community_agreement:

  Whether an agreement with the community has been made regarding the
  water point.

- gov_supervisor_available:

  Indicates whether a government supervisor is available during the
  drilling process.

- drilling_contractor:

  The name of the contractor responsible for the drilling.

- driller_licensed:

  Indicates whether the driller is licensed to carry out the drilling.

- staff_experienced:

  Indicates whether the staff involved in the drilling project are
  experienced.

- drilling_rig_model:

  The model of the drilling rig used for the project.

- compressor_specs:

  Specifications of the compressor used during the drilling.

- equipment_condition:

  The condition of the drilling equipment

- safety_features_condition:

  The condition of the safety features of the equipment.

- equipment_capability:

  The overall capability of the equipment used in drilling.

- equipment_capability_specs:

  Specifications related to the equipments capabilities.

- ppe_available:

  Indicates whether personal protective equipment (PPE) is available for
  the workers.

- drilling_equipment_image:

  An image of the drilling equipment used in the project.

- location_selection_methodology:

  The methodology used to select the drilling location.

- hydrogeological_study_done:

  Indicates whether a hydrogeological study has been done at the
  drilling site.

- geophysical_survey_done:

  Indicates whether a geophysical survey has been done at the site.

- min_distance_50m_from_contamination:

  The minimum distance (in meters) the drilling site is from
  contamination sources (50 meters or more).

- distance_from_contamination:

  The distance of the drilling site from any contamination sources.

- location_accessible:

  Indicates whether the site is accessible for drilling.

- location_suitable_for_drilling:

  Indicates whether the site is suitable for drilling

- distance_from_water_bodies:

  The distance of the drilling site from nearby water bodies

- location_photo:

  A photograph of the drilling site location.

- perimeter_fence:

  Indicates whether there is a perimeter fence around the site for
  security.

- staff_protected:

  Indicates whether the staff are protected from potential risks

- parking_area:

  Indicates whether a parking area is available for vehicles at the
  site.

- emergency_access:

  Indicates whether there is easy emergency access to the site.

- suitable_distance_from_power_lines:

  Indicates whether the site is located at a suitable distance from
  power lines.

- distance:

  The distance from a reference point or key feature to the drilling
  site.

- materials_stored_safely:

  Indicates whether the materials are stored safely at the site.

- chemicals_stored_safely:

  Indicates whether chemicals are stored safely on-site.

- first_aid_kit:

  Indicates whether a first aid kit is available at the site.

- fire_extinguisher:

  Indicates whether a fire extinguisher is available at the site.

- adquate_welfare_facilities:

  Indicates whether the welfare facilities are adequate for the workers.

- welfare_facilities_distance:

  The distance of the welfare facilitiesfrom the drilling site.

- site_setup_preliminaries_completed:

  Indicates whether the preliminary setup activities for drilling have
  been completed.

- rig_setup_properly:

  Indicates whether the drilling rig has been set up properly.

- reference_point:

  A reference point used for the drilling sites coordinates or location.

- reference_point_height:

  The height of the reference point above or below sea level.

- rig_level_method:

  The method used to level the drilling rig at the site.

- rig_setup_problems:

  Any issues encountered during the setup of the drilling rig.

- setup_problems:

  Boolean indicating whether any setup problems were encountered.

- drill_rod_length:

  The length of the drill rods used in the drilling operation.

- min_diameter_177mm:

  The minimum diameter of the borehole (177mm).

- min_diameter:

  The minimum diameter of the borehole for drilling.

- casing_stored_properly:

  Indicates whether the casing materials are stored properly.

- where_stored:

  The location where the casing materials are stored.

- why_not_properly_stored:

  Indicates why the casing materials were not stored properly.

- index_1:

  An index value for referencing in the dataset.

- rod_number:

  The number of rods used during the drilling process.

- depth_from_1:

  The starting depth (in meters) for the first drilling operation.

- depth_to_1:

  The ending depth (in meters) for the first drilling operation.

- circulation_method:

  The method used for circulating fluids during drilling.

- drill_bit_type:

  The type of drill bit used during drilling.

- drilling_diameter_mm:

  The diameter of the borehole in millimeters.

- time_taken_in_minutes:

  The total time taken for drilling (in minutes).

- drilling_comments:

  Comments related to the drilling process.

- water_strike_in_miters:

  The depth at which water was first encountered during drilling (in
  meters).

- index_2:

  An index value for referencing in the dataset.

- depth_from_2:

  The starting depth (in meters) for the second drilling operation.

- depth_to_2:

  The ending depth (in meters) for the second drilling operation.

- temp_casing_material:

  The material used for the temporary casing in the borehole.

- temp_casing_diameter:

  The diameter of the temporary casing (in millimeters).

- index_3:

  An index value for referencing in the dataset.

- depth_from_3:

  The starting depth (in meters) for the third drilling operation.

- depth_to_3:

  The ending depth (in meters) for the third drilling operation.

- rock_or_soil_type:

  The type of rock or soil encountered at the drilling site.

- colour:

  The color of the rock or soil encountered during drilling.

- weathering:

  The level of weathering observed in the rock or soil encountered.

- grain_size_description:

  A description of the grain size of the soil or rock.

- sorting:

  The sorting characteristics of the soil or rock (e.g. well-sorted,
  poorly sorted).

- additional_description:

  Any additional description related to the geological formation or
  drilling process.

- formation_name:

  The name of the geological formation encountered during drilling.

- index_4:

  An index value for referencing in the dataset.

- hole_depth_1:

  The depth of the hole for the first section of drilling (in meters).

- discharge_rate_1:

  The discharge rate of water from the borehole (in liters per minute or
  other units).

- discharge_measurement_method:

  The method used to measure the discharge rate of the borehole.

- ec_ms_cm_1:

  The electrical conductivity of the water at the first measurement
  point (in mS/cm).

- tds_mgl_1:

  The total dissolved solids (TDS) in the water at the first measurement
  point (in mg/L).

- ph_1:

  The pH of the water at the first measurement point.

- temp_celcius_1:

  The temperature of the water at the first measurement point (in
  Celcius).

- comments_1:

  Comments related to the first measurement point (e.g. water quality,
  observations).

- borehole_depth_miters:

  The total depth of the borehole (in meters).

- water_level:

  The water level in the borehole after drilling (in meters).

- measurement_date:

  The date when measurements were taken for water level, discharge, etc.

- borehole_suitable_further_use:

  Whether the borehole is suitable for further use (e.g. for a pump,
  additional development).

- installation_design_available:

  Whether a design is available for installing equipment in the
  borehole.

- design_agreed_by_driller:

  Whether the design was agreed upon by the driller.

- date_casing_installation:

  The date when the casing was installed in the borehole.

- materials_meet_standards:

  Whether the materials used in the drilling process meet established
  standards.

- materials_pre_inspected:

  Whether the materials used in the drilling process were pre-inspected.

- Index (8):

  An index value for referencing in the dataset.

- inner_diameter:

  The inner diameter of the casing (in millimeters).

- outer_diameter:

  The outer diameter of the casing (in millimeters).

- material_1:

  The material used for the first section of the casing.

- slot_aperture:

  The size of the slot aperture in the casing (in millimeters).

- end_cap_fitted:

  Whether an end cap was fitted to the casing.

- centralisers_fitted:

  Whether centralizers were fitted in the borehole casing.

- casing_connection_type:

  The type of connection used for the casing segments (e.g., threaded,
  welded).

- index_9:

  An index value for referencing in the dataset.

- depth_from_4:

  The starting depth (in meters) for the fourth drilling operation.

- depth_to_4:

  The ending depth (in meters) for the fourth drilling operation.

- casing_inner_diameter:

  The inner diameter of the casing (in millimeters).

- casing_material:

  The material of the casing used for the borehole.

- casing_material_strength:

  The strength of the casing material used in the borehole.

- slotted:

  Indicates whether the casing is slotted for water entry.

- gravel_pack_clean:

  Indicates whether the gravel pack is clean and free of contaminants.

- gravel_pack_quality:

  The quality of the gravel pack used in the borehole.

- index_10:

  An index value for referencing in the dataset.

- depth_from_5:

  The starting depth (in meters) for the fifth drilling operation.

- depth_to_5:

  The ending depth (in meters) for the fifth drilling operation.

- gravel_min_grain_size:

  The minimum grain size of the gravel used in the pack (in
  millimeters).

- gravel_max_grain_size:

  The maximum grain size of the gravel used in the pack (in
  millimeters).

- gravel_pack_final_level:

  The final level of the gravel pack after installation (in meters).

- static_water_level_pre_dev:

  The static water level before development work begins (in meters).

- index_11:

  An index value for referencing in the dataset.

- duration:

  The total duration of the drilling process (in hours or days).

- method:

  The method used for the drilling process (e.g. rotary, percussion).

- index_12:

  An index value for referencing in the dataset.

- time:

  The amount of time taken for specific drilling operations (in
  minutes).

- lift_depth:

  The depth at which the lift occurs during the drilling operation (in
  meters).

- discharge_rate:

  The discharge rate of water from the borehole at a later measurement
  point (in liters per minute).

- ec_ms_cm_3:

  The electrical conductivity of the water at a later measurement point
  (in mS/cm).

- tds_mg_l_2:

  The total dissolved solids (TDS) in the water at a later measurement
  point (in mg/L).

- ph_3:

  The pH of the water at a later measurement point.

- temp_c_2:

  The temperature of the water at a later measurement point (in
  Celcius).

- turbidity_ntu:

  The turbidity of the water (cloudiness) measured in NTU (Nephelometric
  Turbidity Units).

- sediment:

  The amount or type of sediment in the water at a later measurement
  point.

- static_water_level_post_dev:

  The static water level after development work is done (in meters).

- final_borehole_design_summary:

  A summary of the final borehole design, including all technical and
  engineering details.
