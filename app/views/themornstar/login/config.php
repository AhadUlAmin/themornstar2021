<?php
/**
 * Build a configuration array to pass to `Hybridauth\Hybridauth`
 */

$config = [
    /**
     * Set the Authorization callback URL to https://path/to/hybridauth/examples/example_06/callback.php.
     * Understandably, you need to replace 'path/to/hybridauth' with the real path to this script.
     */
    'callback' => 'https://themornstar.com/login/callback.php', 
    'providers' => [
	
	    'Facebook' => [
            'enabled' => true,
            'keys' => [
                'key' => '877937766436473',
                'secret' => '1e4a30874a5be16d25d6e3add4b24162',
            ],
        ],
        'Google' => [
            'enabled' => true,
            'keys' => [
                'key' => '349167856898-tgba8nm61ra1ltjbk2lt6ntjntcn7o28.apps.googleusercontent.com',
                'secret' => 'OHkF_-6Jw1wrnEvQOMLVNRPE',
            ],
        ], 
        'github' => [ 
            'enabled' => true,
            'keys' => [
                'id' => '6bdc9f9dc4edf250cb7a',
                'secret' => 'c4a11f6bc3edd214fa9e2e867c89878aaa771160',
            ],
        ],
		'Discord' => [ 
            'enabled' => true,
            'keys' => [
                'id' => '851397175744659487',
                'secret' => 'EYQb4_HCFl8tRsCa5YuHFb8almwj5CYz',
            ],
        ],
		
        'LinkedIn' => [
            'enabled' => true,
            'keys' => [
                'id' => '86kwxm5v4ihffc',
                'secret' => 'LPGhrG1bbJPZeNjU',
            ],
        ],
    ],
];
