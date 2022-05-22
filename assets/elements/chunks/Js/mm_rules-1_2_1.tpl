name:mm_rules-1_2_1
description:Default ManagerManager rules.
======
// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php
// example of how PHP is allowed - check that a TV named documentTags exists before creating rule

if ($modx->db->getValue($modx->db->select('count(id)', $modx->getFullTableName('site_tmplvars'), "name='documentTags'"))) {
	mm_widget_tags('documentTags', ' '); // Give blog tag editing capabilities to the 'documentTags (3)' TV
}
mm_widget_showimagetvs(); // Always give a preview of Image TVs
