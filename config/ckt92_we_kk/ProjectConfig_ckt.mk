CKT_AUTO_ADD_GLOBAL_DEFINE_BY_NAME = CKT_INTERPOLATION CKT_SUPPORT_AUTOTEST_MODE CKT_LOW_POWER_SUPPORT CKT_MUTE_CLOSE_PA RESPIRATION_LAMP
CKT_AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE =PROJ_NAME CUST_NAME SOFTCODE USB_MANUFACTURER_STRING USB_PRODUCT_STRING USB_STRING_SERIAL_IDX CUSTOM_EXIF_STRING_MAKE CUSTOM_EXIF_STRING_MODEL CUSTOM_EXIF_STRING_SOFTWARE CUSTOM_BTMTK_ANDROID_DEFAULT_REMOTE_NAME CUSTOM_BTMTK_ANDROID_DEFAULT_LOCAL_NAME
CKT_AUTO_ADD_GLOBAL_DEFINE_BY_VALUE = 
#############################
#############################
#############################

#��Ŀ����ض���
PROJ_NAME = VEGETA01A
CUST_NAME = CKT
SOFTCODE = S0A
BASEVERNO =100
#############################
#����������ro.product.model
CKT_PRODUCT_MODEL=CKT_$(strip $(PROJ_NAME) )
#����������ȱʡʱ��persist.sys.timezone
TIMEZONE=Asia/Shanghai


############usb���#################
USB_MANUFACTURER_STRING=$(strip $(CUST_NAME) )
USB_PRODUCT_STRING=$(strip $(CKT_PRODUCT_MODEL) )
USB_STRING_SERIAL_IDX=$(strip $(USB_PRODUCT_STRING) )

############exif���#################
CUSTOM_EXIF_STRING_MAKE=$(strip $(CUST_NAME) )
CUSTOM_EXIF_STRING_MODEL=$(strip $(PROJ_NAME) )
CUSTOM_EXIF_STRING_SOFTWARE=""

############bt���#################
CUSTOM_BTMTK_ANDROID_DEFAULT_LOCAL_NAME =$(strip $(PROJ_NAME) )_BT
CUSTOM_BTMTK_ANDROID_DEFAULT_REMOTE_NAME=$(strip $(PROJ_NAME) )_DEVICE

#############################
#���ܵĿ���,�ᵼ�뵽mediatek/source/frameworks/featureoption/java/com/mediatek/featureoption/FeatureOption.java
#�޸ĵ�ʱ��ע��,�� mediatek/build/tools/javaoption.pm��������ģ��
#����ע�����enableֻ������yes,������������
TESTA = yes
TESTB = no
TESTC = testc_none

#############################

#���Ҫ�̶��汾��,����������,����ע�͵���,����������!!!
#CKT_BUILD_VERNO = PANDORA-S0A_CKT_L2EN_111_111111
#CKT_BUILD_INTERNAL_VERNO =PANDORA-S0A_CKT_L2EN_111_111111111111

#############################
#����ͷ�����ֵ
CKT_INTERPOLATION = no
#����ģʽ�Զ����Կ���
CKT_SUPPORT_AUTOTEST_MODE = no
#MTK��low power ����
CKT_LOW_POWER_SUPPORT = no
#ckt liutao 20140409 for close pa when volume is 0
CKT_MUTE_CLOSE_PA = no


CKT_APP_FLASHLIGHT = yes

#���Զ��汾���л�����
CKT_VERSION_AUTO_SWITCH=no
export CKT_VERSION_AUTO_SWITCH


#RGB LED feature control
RESPIRATION_LAMP = yes









































###########����Ϊ�����Ķ���,һ�㲻��Ҫ���
_CKT_BUILD_VERNO  = $(strip $(PROJ_NAME) )-$(strip $(SOFTCODE) )_$(strip $(CUST_NAME) )_L$(words $(subst hdpi, ,$(strip $(MTK_PRODUCT_LOCALES))))$(word 1,$(subst _, ,$(subst zh_TW,TR,$(subst zh_CN,SM,$(strip $(MTK_PRODUCT_LOCALES))))))_$(strip $(BASEVERNO))

DATA_FOR_VERO=$(shell date +%y%m%d)
DATA_FOR_INTERNAL_VERO=$(shell date +%y%m%d%H%M%S)

CKT_BUILD_VERNO  ?= $(call uc, $(_CKT_BUILD_VERNO)_$(strip $(DATA_FOR_VERO)))
CKT_BUILD_INTERNAL_VERNO  ?= $(call uc, $(_CKT_BUILD_VERNO)_$(strip $(DATA_FOR_INTERNAL_VERO)))
#############################

