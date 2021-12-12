magiskpolicy --live 'allow priv_app default_android_hwservice hwservice_manager { find }'
magiskpolicy --live 'allow priv_app vendor_file file { read open getattr map execute}'
magiskpolicy --live 'allow priv_app hal_camerapostproc_xiaomi_hwservice hwservice_manager { find }'