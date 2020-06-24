data:extend({
	{
		allowed_values={"true","false"},
		default_value="true",
		localised_description="If stack sizes should be multiplied by the stack size setting, if not then the stack size setting determines the definite item stack size.",
		localised_name="Item Stack Sizes Multiply?",
		name="stackMultiply",
		setting_type="startup",
		type="bool-setting",
	},
	{
		default_value=1,
		localised_description="The integer responsible for determining item stack size.",
		localised_name="Item Stack Size",
		maximum_value=1000,
		minimum_value=1,
		name="stackSize",
		setting_type="startup",
		type="int-setting",
	},
})