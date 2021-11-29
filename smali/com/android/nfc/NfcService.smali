.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;
.implements Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$EtsiStopConfigTask;,
        Lcom/android/nfc/NfcService$TagRemoveTaskTimer;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$ToastHandler;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$NfcDtaService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final AID_ENTRY:I = 0x4

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z = true

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EE_HANDLE_0xF3:I = 0x4c0

.field static final ETSI_PRESENCE_CHECK_DELAY:I = 0x3e8

.field public static final ETSI_READER_ACTIVATED:I = 0x2

.field public static final ETSI_READER_START_FAIL:I = 0x1

.field public static final ETSI_READER_START_SUCCESS:I = 0x0

.field public static final ETSI_READER_STOP:I = 0x3

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVALID_NATIVE_HANDLE:I = -0x1

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final INVOKE_ROUTE_DELAY_MS:I = 0xc8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_APPLY_CARD_EMULATION_ROUTE:I = 0x5a

.field static final MSG_APPLY_CARD_EMULATION_ROUTE_RESTART:I = 0x5b

.field static final MSG_APPLY_SCREEN_STATE:I = 0x10

.field static final MSG_CARD_EMULATION:I = 0x15

.field static final MSG_CLEAR_ROUTING:I = 0x3e

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_COMPUTE_ROUTING_PARAMS:I = 0x40

.field static final MSG_DEREGISTER_T3T_IDENTIFIER:I = 0xd

.field static final MSG_ETSI_START_CONFIG:I = 0x30

.field static final MSG_ETSI_STOP_CONFIG:I = 0x31

.field static final MSG_ETSI_SWP_TIMEOUT:I = 0x32

.field static final MSG_INIT_WIREDSE:I = 0x3f

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_REGISTER_T3T_IDENTIFIER:I = 0xc

.field static final MSG_RESET_AND_UPDATE_ROUTING_PARAMS:I = 0x41

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_ROUTE_APDU:I = 0x3c

.field static final MSG_SE_INIT:I = 0x3b

.field static final MSG_SWP_READER_DEACTIVATED:I = 0x13

.field static final MSG_SWP_READER_REQUESTED:I = 0x12

.field static final MSG_SWP_READER_REQUESTED_FAIL:I = 0x14

.field static final MSG_SWP_READER_RESTART:I = 0x3a

.field static final MSG_TAG_DEBOUNCE:I = 0xe

.field static final MSG_TRANSACTION_EVENT:I = 0x11

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_UNROUTE_APDU:I = 0x3d

.field static final MSG_UPDATE_STATS:I = 0xf

.field public static final NCI_VERSION_1_0:I = 0x10

.field public static final NCI_VERSION_2_0:I = 0x20

.field static final NDEF_PUSH_ON_DEFAULT_AGING:Z = false

.field static final NDEF_PUSH_ON_DEFAULT_NORMAL:Z = true

.field public static final NFC_LISTEN_PROTO_ISO7816:I = 0x20

.field public static final NFC_LISTEN_PROTO_ISO_DEP:I = 0x1

.field public static final NFC_LISTEN_PROTO_NFC_DEP:I = 0x2

.field public static final NFC_LISTEN_PROTO_T3T:I = 0x4

.field public static final NFC_LISTEN_TECH_A:I = 0x1

.field public static final NFC_LISTEN_TECH_B:I = 0x2

.field public static final NFC_LISTEN_TECH_F:I = 0x4

.field static final NFC_ON_DEFAULT_AGING:Z = false

.field static final NFC_ON_DEFAULT_NORMAL_H2:Z = false

.field static final NFC_ON_DEFAULT_NORMAL_O2:Z = true

.field static final NFC_POLLING_MODE:I = 0x8

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_KOVIO:I = 0x20

.field static final NFC_POLL_V:I = 0x8

.field public static final NXP_PREF:Ljava/lang/String; = "NfcServiceNxpPrefs"

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final PREF_CUR_SELECTED_UICC_ID:Ljava/lang/String; = "current_selected_uicc_id"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_FIRST_NFC_RECONFIG:Ljava/lang/String; = "first_nfc_reconfig"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final PREF_SECURE_NFC_ON:Ljava/lang/String; = "secure_nfc_on"

.field public static final PROTOCOL_ENTRY:I = 0x2

.field private static final ROUTE_ID_HOST:I = 0x0

.field private static final ROUTE_ID_SMX:I = 0x1

.field private static final ROUTE_ID_UICC:I = 0x2

.field private static final ROUTE_ID_UICC2:I = 0x4

.field public static final ROUTE_LOC_MASK:I = 0x8

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field static final SECURE_NFC_ON_DEFAULT:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field public static final STATE_SE_RDR_MODE_ACTIVATED:I = 0x4

.field public static final STATE_SE_RDR_MODE_INVALID:I = 0x0

.field public static final STATE_SE_RDR_MODE_STARTED:I = 0x3

.field public static final STATE_SE_RDR_MODE_START_CONFIG:I = 0x1

.field public static final STATE_SE_RDR_MODE_START_IN_PROGRESS:I = 0x2

.field public static final STATE_SE_RDR_MODE_STOPPED:I = 0x7

.field public static final STATE_SE_RDR_MODE_STOP_CONFIG:I = 0x5

.field public static final STATE_SE_RDR_MODE_STOP_IN_PROGRESS:I = 0x6

.field static final STATS_UPDATE_INTERVAL_MS:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field static final TASK_RESTART:I = 0x4

.field public static final TECH_ENTRY:I = 0x1

.field static final TECH_TYPE_A:I = 0x1

.field public static final TECH_TYPE_MASK:I = 0xb

.field public static final TRANSIT_SETCONFIG_STAT_FAILED:I = 0xff

.field public static final TRANSIT_SETCONFIG_STAT_SUCCESS:I = 0x0

.field static final TRON_NFC_CE:Ljava/lang/String; = "nfc_ce"

.field static final TRON_NFC_P2P:Ljava/lang/String; = "nfc_p2p"

.field static final TRON_NFC_TAG:Ljava/lang/String; = "nfc_tag"

.field public static final UICC2_ID_TYPE:I = 0x4

.field static final UICC_CONFIGURED:I = 0x0

.field public static final UICC_ID_TYPE:I = 0x2

.field static final UICC_NOT_CONFIGURED:I = 0x1

.field private static final VFCPackageName:Ljava/lang/String; = "com.vfuchongcontrol"

.field private static final VFCService:Ljava/lang/String; = "com.vfuchongcontrol.service.InitService"

.field private static nci_version:I

.field public static sIsDtaMode:Z

.field public static sIsShortRecordLayout:Z

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private DEFAULT_ROUTE_ID_DEFAULT:I

.field private ETSI_STOP_CONFIG:Z

.field private NXP_NFC_STATE_OFF:I

.field private NXP_NFC_STATE_ON:I

.field private NXP_NFC_STATE_TURNING_OFF:I

.field private NXP_NFC_STATE_TURNING_ON:I

.field private SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

.field public isDefaultRouteChanged:Z

.field public isWiredOpen:Z

.field private mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private mClipboardManager:Landroid/content/ClipboardManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field mDebounceTagDebounceMs:I

.field mDebounceTagNativeHandle:I

.field mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

.field mDebounceTagUid:[B

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mInProvisionMode:Z

.field mIsBeamCapable:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsHceFCapable:Z

.field mIsNdefPushEnabled:Z

.field mIsRestartInternal:Z

.field public mIsRouteForced:Z

.field mIsSecureElementOpened:Z

.field mIsSecureNfcCapable:Z

.field mIsSecureNfcEnabled:Z

.field mIsVrModeEnabled:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLastReadNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

.field mNfcEventInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNfcExtraClass:Ljava/lang/Class;

.field mNfcExtraObj:Ljava/lang/Object;

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

.field mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

.field mNxpNfcState:I

.field private mNxpPrefs:Landroid/content/SharedPreferences;

.field private mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSEClientAccessState:Z

.field private mSEService:Landroid/se/omapi/ISecureElementService;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mSecureElementSelector:Lcom/oneplus/nfc/SecureElementSelector;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field mWiredSeClass:Ljava/lang/Class;

.field mWiredSeDeInitMethod:Ljava/lang/reflect/Method;

.field mWiredSeInitMethod:Ljava/lang/reflect/Method;

.field mWiredSeObj:Ljava/lang/Object;

.field public reconfigRouteLoc:I

.field private vrManager:Landroid/service/vr/IVrManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 297
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 366
    const/16 v1, 0x10

    sput v1, Lcom/android/nfc/NfcService;->nci_version:I

    .line 469
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 18
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .line 660
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

    .line 194
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 268
    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->isDefaultRouteChanged:Z

    .line 269
    const/4 v5, -0x1

    iput v5, v1, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    .line 339
    iput v4, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    .line 340
    iput v3, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_ON:I

    .line 341
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_ON:I

    .line 342
    const/4 v7, 0x3

    iput v7, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_OFF:I

    .line 370
    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->isWiredOpen:Z

    .line 371
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 387
    nop

    .line 388
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 398
    iput v5, v1, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 413
    iget v0, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    iput v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 429
    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->mIsSecureElementOpened:Z

    .line 430
    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->mSEClientAccessState:Z

    .line 486
    iput v4, v1, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    .line 489
    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->mIsRestartInternal:Z

    .line 4151
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 4195
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4271
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 4289
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 4302
    new-instance v0, Lcom/android/nfc/NfcService$5;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$5;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 661
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mUserId:I

    .line 662
    iput-object v2, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 664
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 665
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 667
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    .line 668
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    .line 669
    const-string v8, "NfcService"

    const-string v0, "Starting NFC service"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :try_start_0
    const-string v0, "com.android.nfc.WiredSeService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    .line 673
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v9, "WiredSeService object Instantiation failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 674
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v9, "WiredSeService Class not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    nop

    .line 679
    :goto_1
    sput-object v1, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 681
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 682
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 683
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 685
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aput-object v9, v0, v4

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    aput-object v9, v0, v3

    move-object v9, v0

    .line 687
    .local v9, "args":[Ljava/lang/Object;
    :try_start_1
    const-string v0, "com.android.nfc.NfcAdapterExtrasService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcExtraClass:Ljava/lang/Class;

    .line 688
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcExtraClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    const-class v10, Lcom/android/nfc/DeviceHost;

    aput-object v10, v6, v4

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 689
    .local v0, "mNfcExtraConstr":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/android/nfc/NfcService;->mNfcExtraObj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0    # "mNfcExtraConstr":Ljava/lang/reflect/Constructor;
    goto :goto_2

    .line 699
    :catch_2
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v6, "NfcAdapterExtrasService object Instantiation failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_3

    .line 696
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v6, "NfcAdapterExtrasService Class not found"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    goto :goto_2

    .line 693
    :catch_4
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "NfcAdapterExtrasService InvocationTargetException"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2

    .line 690
    :catch_5
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v6, "NfcAdapterExtrasService NoSuchMethodException"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 702
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    nop

    .line 704
    :goto_3
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 706
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 707
    const/4 v6, 0x0

    .line 709
    .local v6, "isNfcProvisioningEnabled":Z
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v10, 0x7f030000

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    move v6, v0

    .line 712
    goto :goto_4

    .line 711
    :catch_6
    move-exception v0

    .line 714
    :goto_4
    if-eqz v6, :cond_1

    .line 715
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "device_provisioned"

    invoke-static {v0, v10, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_5

    :cond_0
    move v0, v4

    :goto_5
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto :goto_6

    .line 718
    :cond_1
    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 721
    :goto_6
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v12, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v10, v11, v12}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 723
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 724
    new-instance v0, Lcom/android/nfc/NfcService$ToastHandler;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/android/nfc/NfcService$ToastHandler;-><init>(Lcom/android/nfc/NfcService;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    .line 725
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "NfcServicePrefs"

    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 726
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 727
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "NfcServiceNxpPrefs"

    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    .line 728
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 730
    iput v3, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 732
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v10, "userdebug"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v10, "eng"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_7

    :cond_2
    move v0, v4

    goto :goto_8

    :cond_3
    :goto_7
    move v0, v3

    :goto_8
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 734
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 738
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAudioManager:Landroid/media/AudioManager;

    .line 741
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v10, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v3, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 743
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v10, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v3, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 745
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 746
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 747
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "vibrator"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 748
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11, v5}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 750
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 752
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 753
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 754
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 756
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v5, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 759
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 760
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v5

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 765
    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 766
    .local v0, "ownerFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 770
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    .end local v0    # "ownerFilter":Landroid/content/IntentFilter;
    .local v10, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v0, "package"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 774
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 776
    new-instance v15, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v15, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 777
    .local v15, "policyFilter":Landroid/content/IntentFilter;
    iget-object v12, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 781
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 782
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    .line 783
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 784
    invoke-static {}, Lcom/android/nfc/NfcService;->getDefaultNdefPushOn()Z

    move-result v12

    const-string v13, "ndef_push_on"

    invoke-interface {v0, v13, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_9

    :cond_4
    move v0, v4

    :goto_9
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 786
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v0, :cond_5

    .line 787
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v12, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v14, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 788
    invoke-interface {v14}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v14

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 789
    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v7

    invoke-direct {v0, v12, v13, v14, v7}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 791
    :cond_5
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget v12, v1, Lcom/android/nfc/NfcService;->mUserId:I

    invoke-direct {v7, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v7}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 793
    nop

    .line 794
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "android.hardware.nfc.hcef"

    if-nez v0, :cond_7

    .line 795
    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_a

    :cond_6
    move v0, v4

    goto :goto_b

    :cond_7
    :goto_a
    move v0, v3

    :goto_b
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 796
    nop

    .line 797
    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    .line 798
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_8

    .line 799
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 800
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 801
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getRegisteredAidCache()Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 803
    :cond_8
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 805
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->deviceSupportsNfcSecure()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcCapable:Z

    .line 806
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 810
    const-string v7, "secure_nfc_on"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    .line 811
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-boolean v7, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    invoke-interface {v0, v7}, Lcom/android/nfc/DeviceHost;->setNfcSecure(Z)Z

    .line 814
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const-string v7, "nfc"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 815
    new-instance v0, Lcom/oneplus/nfc/SecureElementSelector;

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    check-cast v12, Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {v0, v7, v12, v1}, Lcom/oneplus/nfc/SecureElementSelector;-><init>(Landroid/content/Context;Lcom/android/nfc/dhimpl/NativeNfcManager;Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSecureElementSelector:Lcom/oneplus/nfc/SecureElementSelector;

    .line 817
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mSecureElementSelector:Lcom/oneplus/nfc/SecureElementSelector;

    sget-object v7, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v7}, Lcom/oneplus/nfc/SecureElementSelector;->registerSecureElementCallBackListener(Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;)V

    .line 818
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 820
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0xf

    const-wide/32 v12, 0xdbba00

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 822
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v3

    .line 824
    .local v3, "mVrManager":Landroid/service/vr/IVrManager;
    if-eqz v3, :cond_9

    .line 826
    :try_start_3
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 827
    invoke-interface {v3}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7

    .line 830
    goto :goto_c

    .line 828
    :catch_7
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_c
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 837
    const-string v0, "clipboard"

    invoke-virtual {v2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 838
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;Landroid/app/Application;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 873
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mClipboardManager:Landroid/content/ClipboardManager;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 875
    return-void
.end method

.method private StopPresenceChecking()V
    .locals 6

    .line 3015
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3016
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3017
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_0

    .line 3018
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3019
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    move-object v5, v3

    check-cast v5, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 3016
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3022
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Landroid/content/ClipboardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mClipboardManager:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_ON:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_ON:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_OFF:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 161
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->computeAndSetRoutingParameters()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->StopPresenceChecking()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/nfc/NfcService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->setListenTechMask(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->getDieIdByNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isSEServiceAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Lcom/oneplus/nfc/SecureElementSelector;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElementSelector:Lcom/oneplus/nfc/SecureElementSelector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 161
    sget v0, Lcom/android/nfc/NfcService;->nci_version:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 161
    sput p0, Lcom/android/nfc/NfcService;->nci_version:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .line 161
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method private static bytesToHexString(I[B)Ljava/lang/String;
    .locals 6
    .param p0, "startIndex"    # I
    .param p1, "src"    # [B

    .line 4393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4394
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_4

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 4397
    :cond_0
    move v1, p0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4398
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 4399
    .local v2, "v":I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 4400
    .local v3, "hv":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 4401
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4403
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4397
    .end local v2    # "v":I
    .end local v3    # "hv":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4406
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4407
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 4408
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 4410
    :cond_3
    return-object v1

    .line 4395
    .end local v1    # "id":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private computeAndSetRoutingParameters()V
    .locals 14

    .line 2967
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifareDesfireRouteEntry()I

    move-result v1

    const-string v2, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2968
    .local v0, "protoRoute":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v2

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2969
    .local v1, "defaultRoute":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v3

    const-string v4, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2970
    .local v2, "techRoute":I
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultFelicaCLTRouteEntry()I

    move-result v4

    const-string v5, "PREF_FELICA_CLT_ROUTE_ID"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2972
    .local v3, "techfRoute":I
    const/4 v4, 0x0

    .line 2973
    .local v4, "TechRoute":I
    const-string v5, "Set Routing Entry"

    const-string v6, "NfcService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computeAndSetRoutingParameters : protoRoute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " defaultRoute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " techRoute "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " techfRoute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getNciVersion()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v11, 0x10

    if-ne v7, v11, :cond_0

    .line 2977
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/16 v11, 0x20

    shr-int/lit8 v12, v1, 0x8

    and-int/lit8 v12, v12, 0x7

    and-int/lit8 v13, v1, 0x3f

    invoke-interface {v7, v9, v11, v12, v13}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2979
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v11, 0x4

    invoke-interface {v7, v9, v11, v8, v10}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2981
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    shr-int/lit8 v11, v0, 0x8

    and-int/lit8 v11, v11, 0x7

    and-int/lit8 v12, v0, 0x3f

    invoke-interface {v7, v9, v10, v11, v12}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2982
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7, v9, v9, v8, v10}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2985
    shr-int/lit8 v7, v2, 0x8

    .line 2986
    .local v7, "TechSeId":I
    shr-int/lit8 v8, v3, 0x8

    .line 2988
    .local v8, "TechFSeId":I
    if-ne v7, v8, :cond_1

    .line 2990
    const/4 v4, 0x7

    .line 2991
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    and-int/lit8 v6, v2, 0x3f

    invoke-interface {v5, v10, v4, v7, v6}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    goto :goto_0

    .line 2994
    :cond_1
    const/4 v4, 0x3

    .line 2995
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    and-int/lit8 v11, v2, 0x3f

    invoke-interface {v9, v10, v4, v7, v11}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2996
    const/4 v4, 0x4

    .line 2997
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    and-int/lit8 v6, v3, 0x3f

    invoke-interface {v5, v10, v4, v8, v6}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 3000
    :goto_0
    return-void
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 6
    .param p1, "screenState"    # I

    .line 2920
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 2922
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt p1, v2, :cond_6

    .line 2924
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v5, :cond_5

    .line 2925
    const/4 v1, 0x0

    .line 2926
    .local v1, "techMask":I
    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 2927
    or-int/lit8 v1, v1, 0x1

    .line 2928
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 2929
    or-int/lit8 v1, v1, 0x2

    .line 2930
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    .line 2931
    or-int/lit8 v1, v1, 0x4

    .line 2932
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 2933
    or-int/lit8 v1, v1, 0x8

    .line 2934
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 2935
    or-int/lit8 v1, v1, 0x20

    .line 2937
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2938
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2939
    .end local v1    # "techMask":I
    goto :goto_0

    .line 2940
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2941
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2943
    :cond_6
    if-ne p1, v4, :cond_7

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_7

    .line 2944
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2946
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2947
    :cond_7
    if-ne p1, v4, :cond_9

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 2948
    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2949
    const/4 v1, 0x0

    .line 2950
    .restart local v1    # "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2951
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 2952
    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2953
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2954
    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2957
    .end local v1    # "techMask":I
    :cond_9
    :goto_0
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v1, v4, :cond_a

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v1, :cond_a

    .line 2959
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2962
    :cond_a
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    return-object v1
.end method

.method protected static getDefaultNdefPushOn()Z
    .locals 4

    .line 4464
    const/4 v0, 0x1

    .line 4465
    .local v0, "NDEF_PUSH_ON_DEFAULT":Z
    const-string v1, "sys.debug.watchdog"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4466
    .local v1, "isAging1":Ljava/lang/String;
    const-string v2, "ro.boot.qe"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4467
    .local v2, "isAging2":I
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 4468
    :cond_0
    const/4 v0, 0x0

    .line 4470
    :cond_1
    return v0
.end method

.method protected static getDefaultNfcOn()Z
    .locals 6

    .line 4447
    const/4 v0, 0x1

    .line 4448
    .local v0, "NFC_ON_DEFAULT":Z
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    move-result v2

    if-eqz v2, :cond_0

    .line 4449
    const/4 v0, 0x0

    .line 4450
    :cond_0
    const-string v2, "sys.debug.watchdog"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4451
    .local v2, "isAging1":Ljava/lang/String;
    const-string v4, "ro.boot.qe"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4452
    .local v4, "isAging2":I
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-ne v1, v4, :cond_2

    .line 4453
    :cond_1
    const/4 v0, 0x0

    .line 4456
    :cond_2
    const-string v1, "ro.mount.tempfs"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 4457
    .local v1, "isTempfsMount":Z
    if-eqz v1, :cond_3

    .line 4458
    const/4 v0, 0x0

    .line 4460
    :cond_3
    return v0
.end method

.method private getDieIdByNative()Ljava/lang/String;
    .locals 4

    .line 4414
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDieId()[B

    move-result-object v0

    .line 4416
    .local v0, "dieIdRaw":[B
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/android/nfc/NfcService;->bytesToHexString(I[B)Ljava/lang/String;

    move-result-object v1

    .line 4417
    .local v1, "dieId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDieIdByNative] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    return-object v1
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .line 494
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 3203
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3204
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3205
    invoke-static {p2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3206
    invoke-static {p3}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3207
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v1, v1, [B

    .line 3208
    .local v1, "t3tIdBytes":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3209
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3211
    return-object v1
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 2855
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2856
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2857
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2859
    add-int/lit8 v0, v0, 0x1

    .line 2861
    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 2862
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2863
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 2864
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 2862
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2866
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 2855
    .end local v0    # "len":I
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSEServiceAvailable()Z
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-nez v0, :cond_0

    .line 879
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTagPresent()Z
    .locals 3

    .line 3006
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3007
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 3008
    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v0

    return v0

    .line 3010
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 3011
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static jumpToMarket(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPkg"    # Ljava/lang/String;

    .line 4493
    return-void
.end method

.method private setListenTechMask(I)Z
    .locals 4
    .param p1, "techMask"    # I

    .line 1383
    monitor-enter p0

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/nfc/DeviceHost;->doSetEseListenTechMask(II)Z

    move-result v0

    .line 1385
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "listenMask"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1387
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListenTechMask: techMask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1389
    :cond_0
    const-string v1, "NfcService"

    const-string v2, "setListenTechMask failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :goto_0
    monitor-exit p0

    return v0

    .line 1392
    .end local v0    # "res":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 4315
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 4325
    const-string v0, "<error>"

    return-object v0

    .line 4323
    :cond_0
    const-string v0, "turning off"

    return-object v0

    .line 4321
    :cond_1
    const-string v0, "on"

    return-object v0

    .line 4319
    :cond_2
    const-string v0, "turning on"

    return-object v0

    .line 4317
    :cond_3
    const-string v0, "off"

    return-object v0
.end method


# virtual methods
.method public GetDefaultFelicaCLTRouteEntry()I
    .locals 4

    .line 3322
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isDefaultRouteChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3323
    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    .local v0, "routeLoc":I
    goto :goto_0

    .line 3325
    .end local v0    # "routeLoc":I
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultFelicaCLTRoute()I

    move-result v0

    .line 3326
    .restart local v0    # "routeLoc":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultFelicaCLTPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 3327
    .local v1, "defaultFelicaCLTRoute":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultFelicaCLTRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    return v1
.end method

.method public GetDefaultMifareDesfireRouteEntry()I
    .locals 4

    .line 3260
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isDefaultRouteChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3261
    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    .local v0, "routeLoc":I
    goto :goto_0

    .line 3263
    .end local v0    # "routeLoc":I
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v0

    .line 3264
    .restart local v0    # "routeLoc":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultDesfirePowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 3265
    .local v1, "defaultMifareDesfireRoute":I
    if-nez v0, :cond_1

    .line 3272
    and-int/lit16 v1, v1, 0xf9

    .line 3274
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultMifareDesfireRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    return v1
.end method

.method public GetDefaultMifateCLTRouteEntry()I
    .locals 4

    .line 3308
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isDefaultRouteChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3309
    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    .local v0, "routeLoc":I
    goto :goto_0

    .line 3311
    .end local v0    # "routeLoc":I
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v0

    .line 3312
    .restart local v0    # "routeLoc":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 3313
    .local v1, "defaultMifateCLTRoute":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultMifateCLTRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    return v1
.end method

.method public GetDefaultRouteEntry()I
    .locals 4

    .line 3284
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isDefaultRouteChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3285
    iget v0, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    .local v0, "routeLoc":I
    goto :goto_0

    .line 3287
    .end local v0    # "routeLoc":I
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v0

    .line 3288
    .restart local v0    # "routeLoc":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 3289
    .local v1, "defaultAidRoute":I
    if-nez v0, :cond_1

    .line 3296
    and-int/lit16 v1, v1, 0xf9

    .line 3298
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultAidRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    return v1
.end method

.method public GetDefaultRouteLoc()I
    .locals 3

    .line 3250
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v1

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 3251
    .local v0, "defaultRouteLoc":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDefaultRouteLoc  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    return v0
.end method

.method applyRouting(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 2873
    const-string v0, "NfcService"

    const-string v1, "applyRouting enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2875
    return-void

    .line 2877
    :cond_0
    monitor-enter p0

    .line 2878
    :try_start_0
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v1, "applyRouting"

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2879
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v1, :cond_2

    .line 2880
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 2882
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v1, :cond_2

    .line 2885
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 2890
    :cond_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2891
    const-string v1, "NfcService"

    const-string v2, "Not updating discovery parameters, tag connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2894
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 2898
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2900
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 2901
    .local v1, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 2910
    :cond_4
    const-string v2, "NfcService"

    const-string v3, "Discovery configuration equal, not updating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2902
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2903
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 2904
    .local v2, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2905
    .end local v2    # "shouldRestart":Z
    goto :goto_1

    .line 2906
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2908
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2913
    .end local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2914
    nop

    .line 2915
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    monitor-exit p0

    .line 2916
    return-void

    .line 2913
    .restart local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .end local p0    # "this":Lcom/android/nfc/NfcService;
    .end local p1    # "force":Z
    throw v1

    .line 2915
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    .restart local p0    # "this":Lcom/android/nfc/NfcService;
    .restart local p1    # "force":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 3229
    const-string v0, "NfcService"

    const-string v1, "clear T3t Identifiers Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearT3tIdentifiersCache()V

    .line 3231
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .line 3238
    const-string v0, "NfcService"

    const-string v1, "commitRouting >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 3240
    return-void
.end method

.method public computeRoutingParameters()V
    .locals 2

    .line 3002
    const-string v0, "NfcService"

    const-string v1, "computeRoutingParameters >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 3004
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 3106
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 3114
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 3098
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 3222
    const-string v0, "NfcService"

    const-string v1, "request to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 3225
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 3226
    return-void
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 928
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 933
    nop

    .line 934
    return-void

    .line 932
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection()I
    .locals 2

    .line 919
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 921
    return v0

    .line 923
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .line 937
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 939
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 939
    return-object v0

    .line 941
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .line 946
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4330
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4332
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4335
    return-void

    .line 4338
    :cond_0
    monitor-enter p0

    .line 4339
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4342
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4343
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v0, :cond_1

    .line 4344
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4345
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_2

    .line 4346
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4348
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4349
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4350
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->dump(Ljava/io/FileDescriptor;)V

    .line 4351
    monitor-exit p0

    .line 4352
    return-void

    .line 4351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;

    .line 1342
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1343
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1344
    .local v1, "mIpm":Landroid/content/pm/IPackageManager;
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1345
    .local v2, "isGlobalEnabled":Z
    nop

    .line 1346
    const-string v3, "no_outgoing_beam"

    invoke-virtual {v0, v3, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1349
    .local v3, "isActiveForUser":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enforcing a policy change on user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isActiveForUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NfcService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    const-class v7, Lcom/android/nfc/BeamShareActivity;

    .line 1354
    invoke-virtual {v7}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/nfc/BeamShareActivity;

    .line 1355
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    if-eqz v3, :cond_1

    .line 1357
    move v7, v4

    goto :goto_1

    .line 1358
    :cond_1
    const/4 v7, 0x2

    :goto_1
    nop

    .line 1360
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1353
    invoke-interface {v1, v5, v7, v4, v8}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    goto :goto_2

    .line 1361
    :catch_0
    move-exception v4

    .line 1362
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change Beam status for user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public etsiStartConfig(I)V
    .locals 5
    .param p1, "eeHandle"    # I

    .line 3361
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    const-string v1, "etsiStartConfig : etsiInitConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->etsiInitConfig()V

    .line 3366
    const-string v1, "etsiStartConfig : disableDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3369
    const-string v1, "etsiStartConfig : etsiReaderConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->etsiReaderConfig(I)V

    .line 3372
    const-string v1, "etsiStartConfig : notifyEEReaderEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->notifyEEReaderEvent(I)V

    .line 3375
    const-string v1, "etsiStartConfig : setEtsiReaederState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->setEtsiReaederState(I)V

    .line 3378
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3379
    .local v1, "swpReaderRequestedIntent":Landroid/content/Intent;
    const-string v2, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_START_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    const-string v2, "SWP READER - Requested"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3385
    const-string v2, "etsiStartConfig : enableDiscovery"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3388
    const-string v2, "etsiStartConfig Exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    return-void
.end method

.method public etsiStopConfig(I)V
    .locals 9
    .param p1, "discNtfTimeout"    # I

    .line 3392
    const-string v0, "NfcService"

    const-string v1, "etsiStopConfig Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getEtsiReaederState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 3395
    const-string v1, "Attempting etsiStopConfig while STATE_SE_RDR_MODE_STOP_IN_PROGRESS. Returning.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    return-void

    .line 3398
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 3399
    const-string v2, "etsiStopConfig : etsiInitConfig"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->etsiInitConfig()V

    .line 3402
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 3403
    .local v3, "mTimer":Ljava/util/Timer;
    new-instance v4, Lcom/android/nfc/NfcService$TagRemoveTaskTimer;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcService$TagRemoveTaskTimer;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3404
    .local v4, "tagRemoveTask":Lcom/android/nfc/NfcService$TagRemoveTaskTimer;
    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 3406
    const-string v2, "etsiStopConfig : disableDiscovery"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost;->stopPoll(I)V

    .line 3408
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 3410
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getEtsiReaederState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    .line 3412
    const-string v1, "etsiStopConfig :etsi reader already Stopped. Returning.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 3414
    return-void

    .line 3416
    :cond_1
    const-string v1, "etsiStopConfig : etsiResetReaderConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->etsiResetReaderConfig()V

    .line 3419
    const-string v1, "etsiStopConfig : notifyEEReaderEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Lcom/android/nfc/DeviceHost;->notifyEEReaderEvent(I)V

    .line 3422
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3425
    .local v1, "swpReaderDeActivatedIntent":Landroid/content/Intent;
    nop

    .line 3426
    const-string v6, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_STOP_SUCCESS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3428
    const-string v6, "SWP READER - DeActivated"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3432
    const-string v6, "etsiStopConfig : setEtsiReaederState"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6, v5}, Lcom/android/nfc/DeviceHost;->setEtsiReaederState(I)V

    .line 3435
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 3436
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updateLastScreenState()V

    .line 3438
    const-string v2, "etsiStopConfig Exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    return-void
.end method

.method findAndRemoveObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "handle"    # I

    .line 3070
    monitor-enter p0

    .line 3071
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3072
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 3073
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3075
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3077
    :goto_0
    monitor-exit p0

    return-object v0

    .line 3078
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 3060
    monitor-enter p0

    .line 3061
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3062
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 3063
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :cond_0
    monitor-exit p0

    return-object v0

    .line 3066
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAidRoutingCache()Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method public getAidRoutingTableSize()I
    .locals 1

    .line 3156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getAidTableSize()I

    move-result v0

    return v0
.end method

.method public getAidRoutingTableStatus()I
    .locals 4

    .line 3337
    const/4 v0, 0x0

    .line 3338
    .local v0, "aidTableStatus":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_SET_AID_ROUTING_TABLE_FULL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3339
    return v0
.end method

.method public getGsmaPwrState()I
    .locals 1

    .line 3333
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getGsmaPwrState()I

    move-result v0

    return v0
.end method

.method public getLastCommitRoutingStatus()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getLastCommitRoutingStatus()Z

    move-result v0

    return v0
.end method

.method public getLfT3tMax()I
    .locals 1

    .line 3234
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNciVersion()I
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNciVersion()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(ZI)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "pid"    # I

    .line 4425
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4426
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_3

    .line 4427
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 4428
    .local v1, "processesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 4431
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4433
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4434
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_1

    .line 4435
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  processName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4436
    return-void

    .line 4434
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_1

    .line 4438
    :catch_0
    move-exception v3

    :goto_1
    nop

    .line 4431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4429
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 4441
    .end local v1    # "processesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    return-void
.end method

.method public getRemainingAidTableSize()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getRemainingAidTableSize()I

    move-result v0

    return v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    monitor-enter p0

    .line 1338
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/NfcService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .line 886
    monitor-enter p0

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 889
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0002

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 890
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 891
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 893
    :cond_0
    monitor-exit p0

    .line 894
    return-void

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initWiredSe()V
    .locals 2

    .line 3242
    const-string v0, "NfcService"

    const-string v1, "Init wired Se"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 3244
    return-void
.end method

.method isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4480
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4484
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 4481
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 4482
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 4483
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    .line 4485
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 4486
    return v0

    .line 4488
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNfcEnabled()Z
    .locals 2

    .line 2813
    monitor-enter p0

    .line 2814
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 2815
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .line 2807
    monitor-enter p0

    .line 2808
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 2809
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maybeDisconnectTarget()V
    .locals 6

    .line 3028
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3029
    return-void

    .line 3032
    :cond_0
    monitor-enter p0

    .line 3033
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3036
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 3037
    .local v1, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3038
    .end local v0    # "objectValues":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    .line 3040
    .local v3, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NfcService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_1

    .line 3043
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3044
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    goto :goto_1

    .line 3045
    :cond_1
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v4, :cond_2

    .line 3047
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3048
    .local v4, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 3050
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_2

    .line 3045
    .end local v4    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :cond_2
    :goto_1
    nop

    .line 3039
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3057
    :cond_4
    return-void

    .line 3038
    .end local v1    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyRoutingTableFull()V
    .locals 5

    .line 3123
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    const-string v1, "Last installed NFC Service is not enabled due to limited resources. To enable this service, please disable other servives in Settings Menu"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService$ToastHandler;->showToast(Ljava/lang/CharSequence;I)V

    .line 3125
    const-string v0, "NfcService"

    const-string v1, "notify aid routing table full to the user here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getPreviousPreferredPaymentService()Landroid/content/ComponentName;

    move-result-object v1

    .line 3128
    .local v1, "prevPaymentComponent":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 3129
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "PREF_SET_AID_ROUTING_TABLE_FULL"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3130
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3132
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3133
    .local v2, "aidTableFull":Landroid/content/Intent;
    const-string v3, "nfc.intent.action.AID_ROUTING_TABLE_FULL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3135
    const-string v3, "notify aid routing table full to the user"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3138
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setPreviousPreferredPaymentService(Landroid/content/ComponentName;)V

    .line 3139
    return-void
.end method

.method public onETSIReaderModeRestart()V
    .locals 2

    .line 652
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 653
    return-void
.end method

.method public onETSIReaderModeStartConfig(I)V
    .locals 2
    .param p1, "eeHandle"    # I

    .line 624
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v0, "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 630
    return-void
.end method

.method public onETSIReaderModeStopConfig(I)V
    .locals 4
    .param p1, "disc_ntf_timeout"    # I

    .line 636
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    return-void

    .line 639
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$EtsiStopConfigTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EtsiStopConfigTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 640
    .local v0, "task":Lcom/android/nfc/NfcService$EtsiStopConfigTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EtsiStopConfigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 642
    return-void
.end method

.method public onETSIReaderModeSwpTimeout(I)V
    .locals 2
    .param p1, "disc_ntf_timeout"    # I

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 648
    return-void
.end method

.method public onETSIReaderRequestedEvent(ZZ)V
    .locals 3
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v1, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 602
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_0
    if-eqz p2, :cond_1

    .line 604
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_1
    const/16 v2, 0x12

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 607
    return-void
.end method

.method public onETSIReaderRequestedFail(I)V
    .locals 2
    .param p1, "FailCause"    # I

    .line 617
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 618
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 520
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 523
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 539
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData(I[B)V

    .line 542
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 546
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 549
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 576
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 578
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 579
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 558
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 560
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 567
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 569
    return-void
.end method

.method public onNfcTransactionEvent([B[BLjava/lang/String;)V
    .locals 3
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "seName"    # Ljava/lang/String;

    .line 611
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 612
    .local v0, "dataObj":[[B
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 613
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .line 583
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .line 588
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 589
    return-void
.end method

.method public onSeInitialized()V
    .locals 2

    .line 593
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .line 526
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .line 533
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public onSecureElementChangeByUser(IZ)V
    .locals 5
    .param p1, "seID"    # I
    .param p2, "restart"    # Z

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applySelectSecurityElement select to seID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 954
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x2

    const-string v4, "current_selected_uicc_id"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 955
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 957
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "current_selected_uicc_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 958
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 961
    :goto_0
    monitor-enter p0

    .line 962
    :try_start_0
    iget v2, p0, Lcom/android/nfc/NfcService;->mState:I

    if-eq v2, v0, :cond_1

    .line 963
    monitor-exit p0

    return-void

    .line 964
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 967
    const-string v0, "NfcService"

    const-string v2, "reconfigure the routing table with selected seID route"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iput p1, p0, Lcom/android/nfc/NfcService;->reconfigRouteLoc:I

    .line 969
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->isDefaultRouteChanged:Z

    .line 970
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 971
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x5a

    iput v2, v0, Landroid/os/Message;->what:I

    .line 972
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 973
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 974
    if-ne p2, v1, :cond_2

    .line 975
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 976
    .local v1, "msg2":Landroid/os/Message;
    const/16 v2, 0x5b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 977
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 978
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const-wide/16 v3, 0x4b0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 981
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "msg2":Landroid/os/Message;
    :cond_2
    return-void

    .line 964
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playSound(I)V
    .locals 8
    .param p1, "sound"    # I

    .line 1306
    monitor-enter p0

    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when device SilentMode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    monitor-exit p0

    return-void

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 1315
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    monitor-exit p0

    return-void

    .line 1319
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_2

    .line 1320
    const-string v0, "NfcService"

    const-string v1, "Not playing NFC sound when Vr Mode is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    monitor-exit p0

    return-void

    .line 1323
    :cond_2
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 1331
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1328
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1329
    goto :goto_0

    .line 1325
    :cond_5
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1326
    nop

    .line 1334
    :goto_0
    monitor-exit p0

    .line 1335
    return-void

    .line 1334
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reconfigureRoutingTable()V
    .locals 3

    .line 984
    const-string v0, "NfcService"

    const-string v1, "reconfigureRoutingTable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 986
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v1

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 987
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifareDesfireRouteEntry()I

    move-result v1

    const-string v2, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v1

    const-string v2, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 989
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultFelicaCLTRouteEntry()I

    move-result v1

    const-string v2, "PREF_FELICA_CLT_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 991
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 992
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 993
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 994
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 995
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 996
    return-void
.end method

.method public registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 3215
    const-string v0, "NfcService"

    const-string v1, "request to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 3218
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 3219
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3082
    monitor-enter p0

    .line 3083
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    monitor-exit p0

    .line 3085
    return-void

    .line 3084
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .line 897
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 902
    :cond_0
    monitor-exit p0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;III)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "aidInfo"    # I
    .param p4, "power"    # I

    .line 3142
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3143
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3144
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3145
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3146
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3148
    .local v1, "aidbundle":Landroid/os/Bundle;
    const-string v2, "power"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3149
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3150
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3151
    return-void
.end method

.method public routeApduPattern(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "apdu"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/String;
    .param p3, "route"    # I
    .param p4, "powerState"    # I

    .line 3180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3181
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3182
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3183
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 3184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3185
    .local v1, "apduPatternbundle":Landroid/os/Bundle;
    const-string v2, "apduData"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    const-string v2, "apduMask"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3188
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3189
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1298
    monitor-enter p0

    .line 1299
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1300
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1301
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1302
    monitor-exit p0

    .line 1303
    return-void

    .line 1302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .line 3342
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3346
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3347
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3348
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3349
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3350
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 3118
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 3119
    return-void
.end method

.method public setDefaultAidRouteLoc(I)V
    .locals 5
    .param p1, "routeLoc"    # I

    .line 3164
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writing to preferences setDefaultAidRouteLoc  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v2, p1, 0x8

    or-int/2addr v0, v2

    .line 3169
    .local v0, "defaultAidRoute":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3170
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3171
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const/16 v4, 0xff

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3172
    .local v2, "defaultRoute":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading preferences from user  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    return-void
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 3088
    monitor-enter p0

    .line 3089
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    monitor-exit p0

    .line 3091
    return-void

    .line 3090
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .line 3176
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 3177
    return-void
.end method

.method public unrouteApduPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "apdu"    # Ljava/lang/String;

    .line 3192
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3193
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3194
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3195
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3196
    return-void
.end method

.method public updateDefaultAidRouteForNci_1_0(I)V
    .locals 5
    .param p1, "routeLoc"    # I

    .line 4365
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 4366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writing to preferences setDefaultAidRouteLoc  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const/16 v2, 0xff

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 4368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultRoute :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not changed. Returning."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    return-void

    .line 4371
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 4372
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v4, p1, 0x8

    or-int/2addr v0, v4

    .line 4373
    .local v0, "defaultAidRoute":I
    if-nez p1, :cond_1

    .line 4381
    and-int/lit8 v0, v0, 0x11

    .line 4383
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4384
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4385
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4386
    .local v2, "defaultRoute":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading updated preference  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4388
    return-void
.end method

.method public updateLastScreenState()V
    .locals 2

    .line 3354
    const-string v0, "NfcService"

    const-string v1, "updateLastScreenState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3356
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 3357
    .local v0, "screen_state_mask":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 3358
    return-void
.end method

.method updatePackageCache()V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 907
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.NFC_TRANSACTION_EVENT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 910
    .local v1, "packagesNfcEvents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 911
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 912
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateStatusOfServices(Z)V
    .locals 2
    .param p1, "commitStatus"    # Z

    .line 4357
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4359
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setPreviousPreferredPaymentService(Landroid/content/ComponentName;)V

    .line 4361
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->updateStatusOfServices(Z)V

    .line 4362
    return-void
.end method
