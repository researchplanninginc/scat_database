User.create!([
  {email: "test@test.com", encrypted_password: "$2a$11$Ew3QrHCzKjRx0pxPOMoH0.t0lFCnLcHFUtPsuKXkI1163S4sIRbVO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-06-06 20:13:31", last_sign_in_at: "2016-06-06 20:13:31", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
LookupEsi.create!([
  {esi_code: "1A", description: "Exposed rocky shores"},
  {esi_code: "1B", description: "Exposed, solid man-made structures"},
  {esi_code: "2A", description: "Exposed, wave-cut platforms in bedrock"},
  {esi_code: "2B", description: "Exposed scarps and steep slopes in clay"},
  {esi_code: "3A", description: "Fine- to medium-grained sand beaches"},
  {esi_code: "3B", description: "Scarps and steep slopes in sand"},
  {esi_code: "4", description: "Coarse-grained sand beaches"},
  {esi_code: "5", description: "Mixed sand and gravel beaches"},
  {esi_code: "6A", description: "Gravel beaches"},
  {esi_code: "6B", description: "Riprap"},
  {esi_code: "6D", description: "Boulder rubble"},
  {esi_code: "7", description: "Exposed tidal flats"},
  {esi_code: "8A", description: "Sheltered rocky shores"},
  {esi_code: "8B", description: "Sheltered, solid man-made structures"},
  {esi_code: "8C", description: "Sheltered riprap"},
  {esi_code: "8D", description: "Sheltered rocky rubble shores"},
  {esi_code: "8E", description: "Peat shorelines"},
  {esi_code: "9A", description: "Sheltered tidal flats"},
  {esi_code: "9B", description: "Sheltered, vegetated low banks"},
  {esi_code: "9C", description: "Hypersaline tidal flats"},
  {esi_code: "10A", description: "Salt- and brackish-water marshes"},
  {esi_code: "10B", description: "Freshwater marshes"},
  {esi_code: "10C", description: "Swamps"},
  {esi_code: "10D", description: "Scrub-shrub wetlands / Mangroves"},
  {esi_code: "10E", description: "Inundated low-lying tundra"}
])
LookupOilChar.create!([
  {char_code: "NO", description: "No oil"},
  {char_code: "TB", description: "Tarball/Discreet"},
  {char_code: "FR", description: "Fresh"},
  {char_code: "MS", description: "Mousse"},
  {char_code: "PT", description: "Patty"},
  {char_code: "TC", description: "Tarry coat"},
  {char_code: "SR", description: "Surface residue"},
  {char_code: "AP", description: "Asphalt pavement"}
])
LookupPitChar.create!([
  {char_code: "NO", description: "No oil"},
  {char_code: "SR", description: "Surface residue"},
  {char_code: "SAP", description: "Subsurface asphalt pavment"},
  {char_code: "OP", description: "Oil-filled pores"},
  {char_code: "PP", description: "Partially oil-filled pores"},
  {char_code: "OR", description: "Oil residue"},
  {char_code: "OF", description: "Oil film"},
  {char_code: "TR", description: "Trace"}
])
LookupSubstr.create!([
  {substr_code: "S", description: "Sediment"},
  {substr_code: "V", description: "Vegetation"},
  {substr_code: "B", description: "Both"}
])
LookupTbChar.create!([
  {char_code: "F", description: "Fresh"},
  {char_code: "E", description: "Emulsion"},
  {char_code: "S", description: "Sticky"},
  {char_code: "W", description: "Weathered"},
  {char_code: "R", description: "Surface residue"},
  {char_code: "O", description: "Other"}
])
LookupThick.create!([
  {thick_code: "TO", description: "Thick (>1cm)"},
  {thick_code: "CV", description: "Cover (0.1-1 cm)"},
  {thick_code: "CT", description: "Coat (<0.1, scrape)"},
  {thick_code: "ST", description: "Stain (no scrape)"},
  {thick_code: "FL", description: "Film"}
])
Person.create!([
  {person_id: "1", last_name: "John", first_name: "Doe", org: "FED"},
  {person_id: "2", last_name: "Jane", first_name: "Doe", org: "FED"},
  {person_id: "3", last_name: "Jim", first_name: "Test", org: "RP"},
  {person_id: "4", last_name: "Jan", first_name: "Test", org: "RP"},
  {person_id: "5", last_name: "Joe", first_name: "Fake", org: "STATE"},
  {person_id: "6", last_name: "Jill", first_name: "Fake", org: "STATE"},
])
