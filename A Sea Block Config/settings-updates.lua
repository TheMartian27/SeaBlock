if mods['SpaceMod'] and data.raw['string-setting']['sct-difficulty-cost'] then
  data:extend({
  {
    type = 'string-setting',
    name = 'sb-difficulty-cost-override',
    localised_name = {'mod-setting-name.sb-difficulty-cost-override', 'ScienceCostTweaker', {'mod-setting-name.sct-difficulty-cost'}},
    localised_description = {'mod-setting-description.sct-difficulty-cost'},
    setting_type = 'startup',
    default_value = 'noadjustment',
    allowed_values = data.raw['string-setting']['sct-difficulty-cost'].allowed_values
  }
  })
end

for k,v in pairs(seablockconfig.data) do
  local t = v[1] -- t:setting-type (bool-setting | int-setting | double-setting | string-setting)
  if t then
    local s = data.raw[t][k]
    if s then
      s.hidden = true
    end
  end
end
