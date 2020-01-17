<?php
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;

class HomePageFeature extends Page {

	private static $db = array(	
		"Caption" => "Text",
		"LinkURL" => "Text"
	);

	private static $has_one = array(
	
		"Image" => Image::class
	
	);

	private static $owns = array(
		'Image'
	);
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main", "Content");
		$fields->addFieldToTab('Root.Main', new UploadField('Image', 'Main Feature Image (1000 x 431 pixels)'));
		$fields->addFieldToTab('Root.Main', new TextField('Caption', 'Image Caption'));
		$fields->addFieldToTab('Root.Main', new TextField('LinkURL', 'Link URL'));

		
		return $fields;
	}
	

}