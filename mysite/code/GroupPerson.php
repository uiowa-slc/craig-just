<?php
class GroupPerson extends Page {

	public static $db = array(	
		"AreaOfStudy" => "Text",
		"Hometown" => "Text",
		"PhoneNumber" => "Text",
		"Email" => "Text",
		"MoreInfoLink" => "Text",
	);

	public static $has_one = array(
	
		"Image" => "Image"
	
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		//$fields->removeFieldFromTab("Root.Content.Main", "Content");
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Main Feature Image (250 x 355 pixels)'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('AreaOfStudy', 'Area of Study'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Hometown', 'Hometown'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('PhoneNumber', 'Phone Number (Optional)'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Email', 'Email Address (Optional)'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('MoreInfoLink', 'More Info Link (Optional)'));

		
		return $fields;
	}
	

}
class GroupPerson_Controller extends Page_Controller {

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
	
	public function ContactInfo() {
		if(($this->Email) ||($this->PhoneNumber)){
			return true;
		
		}else {
		
			return false;
		}

	}
}