<?php
class HomePageFeature extends Page {

	public static $db = array(	
		"Caption" => "Text",
		"LinkURL" => "Text"
	);

	public static $has_one = array(
	
		"Image" => "Image"
	
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Main Feature Image (1000 x 431 pixels)'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Caption', 'Image Caption'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('LinkURL', 'Link URL'));

		
		return $fields;
	}
	

}
class HomePageFeature_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}
}