.class public Lcom/android/nfc/beam/SendUi;
.super Ljava/lang/Object;
.source "SendUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/animation/TimeAnimator$TimeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/SendUi$ScreenshotTask;,
        Lcom/android/nfc/beam/SendUi$Callback;
    }
.end annotation


# static fields
.field static final BLACK_LAYER_ALPHA_DOWN_RANGE:[F

.field static final BLACK_LAYER_ALPHA_UP_RANGE:[F

.field static final FADE_IN_DURATION_MS:I = 0xfa

.field static final FADE_IN_START_DELAY_MS:I = 0x15e

.field static final FAST_SEND_DURATION_MS:I = 0x15e

.field public static final FINISH_SCALE_UP:I = 0x0

.field public static final FINISH_SEND_SUCCESS:I = 0x1

.field static final INTERMEDIATE_SCALE:F = 0.6f

.field static final PRE_DURATION_MS:I = 0x15e

.field static final PRE_SCREENSHOT_SCALE:[F

.field static final SCALE_UP_DURATION_MS:I = 0x12c

.field static final SCALE_UP_SCREENSHOT_SCALE:[F

.field static final SEND_SCREENSHOT_SCALE:[F

.field static final SLIDE_OUT_DURATION_MS:I = 0x12c

.field static final SLOW_SEND_DURATION_MS:I = 0x1f40

.field static final STATE_COMPLETE:I = 0x9

.field static final STATE_IDLE:I = 0x0

.field static final STATE_SENDING:I = 0x8

.field static final STATE_W4_NFC_TAP:I = 0x7

.field static final STATE_W4_PRESEND:I = 0x5

.field static final STATE_W4_SCREENSHOT:I = 0x1

.field static final STATE_W4_SCREENSHOT_PRESEND_NFC_TAP_REQUESTED:I = 0x3

.field static final STATE_W4_SCREENSHOT_PRESEND_REQUESTED:I = 0x2

.field static final STATE_W4_SCREENSHOT_THEN_STOP:I = 0x4

.field static final STATE_W4_TOUCH:I = 0x6

.field static final TAG:Ljava/lang/String; = "SendUi"

.field static final TEXT_HINT_ALPHA_DURATION_MS:I = 0x1f4

.field static final TEXT_HINT_ALPHA_RANGE:[F

.field static final TEXT_HINT_ALPHA_START_DELAY_MS:I = 0x12c


# instance fields
.field final mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

.field final mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

.field final mBlackLayer:Landroid/widget/ImageView;

.field final mCallback:Lcom/android/nfc/beam/SendUi$Callback;

.field final mContext:Landroid/content/Context;

.field mDecor:Landroid/view/View;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMatrix:Landroid/graphics/Matrix;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field final mFastSendAnimator:Landroid/animation/ObjectAnimator;

.field final mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

.field final mFrameCounterAnimator:Landroid/animation/TimeAnimator;

.field final mHardwareAccelerated:Z

.field final mHintAnimator:Landroid/animation/ObjectAnimator;

.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final mPreAnimator:Landroid/animation/ObjectAnimator;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRenderedFrames:I

.field final mScaleUpAnimator:Landroid/animation/ObjectAnimator;

.field mScreenshotBitmap:Landroid/graphics/Bitmap;

.field final mScreenshotLayout:Landroid/view/View;

.field final mScreenshotView:Landroid/widget/ImageView;

.field final mSlowSendAnimator:Landroid/animation/ObjectAnimator;

.field mState:I

.field final mStatusBarManager:Landroid/app/StatusBarManager;

.field final mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceHeight:I

.field mSurfaceWidth:I

.field final mTextHint:Landroid/widget/TextView;

.field final mTextRetry:Landroid/widget/TextView;

.field final mTextureView:Landroid/view/TextureView;

.field mToastString:Ljava/lang/String;

.field final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    .line 104
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    .line 108
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    .line 116
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    .line 117
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    .line 119
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/nfc/beam/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/SendUi$Callback;

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 898
    new-instance v2, Lcom/android/nfc/beam/SendUi$1;

    invoke-direct {v2, v0}, Lcom/android/nfc/beam/SendUi$1;-><init>(Lcom/android/nfc/beam/SendUi;)V

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    iput-object v1, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    .line 205
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    .line 207
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 208
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 209
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    .line 210
    const-string v3, "statusbar"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 212
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    .line 214
    nop

    .line 215
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 216
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    const v5, 0x7f090009

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    .line 218
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f07001d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    .line 219
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 221
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f07000b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    .line 222
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f07001a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    .line 223
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f070009

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 224
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f07000d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextureView:Landroid/view/TextureView;

    .line 225
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 230
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    .line 231
    iget-boolean v3, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 232
    const/high16 v3, 0x1000000

    goto :goto_0

    :cond_0
    move v3, v6

    .line 234
    .local v3, "hwAccelerationFlags":I
    :goto_0
    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7d3

    or-int/lit16 v7, v3, 0x400

    or-int/lit16 v13, v7, 0x100

    const/4 v14, -0x1

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v15, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 241
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 246
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "com.android.nfc"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 251
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 253
    new-instance v7, Landroid/animation/TimeAnimator;

    invoke-direct {v7}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v7, v0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    .line 254
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v7, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 256
    sget-object v7, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    const-string v8, "scaleX"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 257
    .local v7, "preX":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    const-string v10, "scaleY"

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 258
    .local v9, "preY":Landroid/animation/PropertyValuesHolder;
    iget-object v11, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v12, 0x2

    new-array v13, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v13, v6

    aput-object v9, v13, v5

    invoke-static {v11, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v11, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-object v11, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x15e

    invoke-virtual {v11, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    iget-object v11, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    sget-object v11, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 264
    .local v11, "postX":Landroid/animation/PropertyValuesHolder;
    sget-object v15, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v10, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 265
    .local v15, "postY":Landroid/animation/PropertyValuesHolder;
    new-array v4, v12, [F

    fill-array-data v4, :array_0

    const-string v13, "alpha"

    invoke-static {v13, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 268
    .local v4, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v14, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    new-array v2, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v11, v2, v6

    aput-object v15, v2, v5

    invoke-static {v14, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    .line 269
    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v16, v13

    const-wide/16 v12, 0x1f40

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v11, v12, v6

    aput-object v15, v12, v5

    const/4 v13, 0x2

    aput-object v4, v12, v13

    invoke-static {v2, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0x15e

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    sget-object v2, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 279
    .local v2, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    sget-object v8, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v10, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 281
    .local v8, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v12, 0x2

    new-array v13, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v13, v6

    aput-object v8, v13, v5

    invoke-static {v10, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 282
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    new-array v10, v5, [F

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v10, v6

    move-object/from16 v14, v16

    invoke-static {v14, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 287
    .local v10, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    new-array v13, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v13, v6

    invoke-static {v12, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iput-object v12, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 288
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v13, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v16, v7

    .end local v7    # "preX":Landroid/animation/PropertyValuesHolder;
    .local v16, "preX":Landroid/animation/PropertyValuesHolder;
    const-wide/16 v6, 0xfa

    invoke-virtual {v12, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 290
    iget-object v6, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    move-object v7, v14

    const-wide/16 v13, 0x15e

    invoke-virtual {v6, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 291
    iget-object v6, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    sget-object v6, Lcom/android/nfc/beam/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 294
    .local v6, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v14, v0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    new-array v13, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v6, v13, v12

    move-object v12, v13

    invoke-static {v14, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iput-object v12, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    .line 295
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 297
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x12c

    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 299
    sget-object v12, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 300
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    new-array v14, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v4, v14, v13

    invoke-static {v12, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iput-object v12, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    .line 301
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x190

    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    sget-object v12, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 305
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    new-array v12, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v7, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    .line 306
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0xc8

    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    .line 310
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v13, 0x2

    new-array v14, v13, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const/4 v12, 0x0

    aput-object v13, v14, v12

    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v12, v14, v5

    invoke-virtual {v7, v14}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 314
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    const v12, 0x103000a

    invoke-virtual {v7, v12}, Landroid/content/Context;->setTheme(I)V

    .line 315
    new-instance v7, Lcom/android/internal/policy/PhoneWindow;

    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 316
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 317
    invoke-virtual {v7, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 318
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    .line 319
    iget-object v5, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v5, v12}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-boolean v5, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v5, :cond_1

    .line 322
    new-instance v5, Lcom/android/nfc/beam/FireflyRenderer;

    invoke-direct {v5, v1}, Lcom/android/nfc/beam/FireflyRenderer;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    goto :goto_1

    .line 324
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    .line 326
    :goto_1
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 327
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .line 566
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 574
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    .line 570
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 568
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    return v0
.end method


# virtual methods
.method createScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    .line 615
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 617
    .local v0, "hasNavBar":Z
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 621
    .local v1, "statusBarHeight":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 622
    :cond_0
    move v3, v2

    :goto_0
    nop

    .line 623
    .local v3, "navBarHeight":I
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105018e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    .line 624
    :cond_1
    move v4, v2

    :goto_1
    nop

    .line 626
    .local v4, "navBarHeightLandscape":I
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050191

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 627
    :cond_2
    move v5, v2

    :goto_2
    nop

    .line 629
    .local v5, "navBarWidth":I
    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 630
    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 632
    .local v6, "smallestWidth":F
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    div-float v7, v6, v7

    .line 634
    .local v7, "smallestWidthDp":F
    iget-object v8, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 640
    .local v8, "rot":I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v9, v2, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v9

    .line 642
    .local v2, "crop":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v9, v10, :cond_3

    .line 644
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 647
    :cond_3
    const v9, 0x4415c000    # 599.0f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_4

    .line 649
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v4

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 652
    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v5

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 656
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 657
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 660
    .local v10, "height":I
    invoke-static {v2, v9, v10, v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 662
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    if-nez v11, :cond_5

    .line 663
    const/4 v12, 0x0

    return-object v12

    .line 667
    :cond_5
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 668
    .local v12, "swBitmap":Landroid/graphics/Bitmap;
    return-object v12
.end method

.method dismiss()V
    .locals 4

    .line 536
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    return-void

    .line 540
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 542
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v2}, Landroid/animation/TimeAnimator;->cancel()V

    .line 543
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 544
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 545
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 546
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 547
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 548
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 549
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 550
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 551
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 552
    iput-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 553
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 554
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 555
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 556
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 557
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    iput-object v1, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 780
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 781
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v1}, Lcom/android/nfc/beam/SendUi$Callback;->onCanceled()V

    .line 783
    const/4 v1, 0x1

    return v1

    .line 784
    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 789
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 787
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/beam/SendUi;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 800
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public finish(I)V
    .locals 11
    .param p1, "finishMode"    # I

    .line 464
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/android/nfc/beam/FireflyRenderer;->stop()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 502
    .local v0, "currentScale":F
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 504
    .local v1, "currentAlpha":F
    const-string v6, "scaleY"

    const-string v7, "scaleX"

    const-string v8, "alpha"

    if-nez p1, :cond_1

    .line 505
    new-array v9, v3, [F

    aput v0, v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v2

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 507
    .local v7, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    new-array v9, v3, [F

    aput v0, v9, v5

    aput v10, v9, v2

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 509
    .local v6, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    new-array v9, v3, [F

    aput v1, v9, v5

    aput v10, v9, v2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 511
    .local v8, "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v4, v5

    aput-object v6, v4, v2

    aput-object v8, v4, v3

    invoke-virtual {v9, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 513
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .end local v6    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    goto :goto_0

    .line 514
    :cond_1
    if-ne p1, v2, :cond_2

    .line 516
    new-array v9, v3, [F

    aput v0, v9, v5

    const/4 v10, 0x0

    aput v10, v9, v2

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 518
    .local v7, "postX":Landroid/animation/PropertyValuesHolder;
    new-array v9, v3, [F

    aput v0, v9, v5

    aput v10, v9, v2

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 520
    .local v6, "postY":Landroid/animation/PropertyValuesHolder;
    new-array v9, v3, [F

    aput v1, v9, v5

    aput v10, v9, v2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 522
    .local v9, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v10, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v4, v5

    aput-object v6, v4, v2

    aput-object v9, v4, v3

    invoke-virtual {v10, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 525
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v8, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 527
    .local v3, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v5

    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 529
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 530
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 514
    .end local v3    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "postY":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "postX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "alpha":Landroid/animation/PropertyValuesHolder;
    :cond_2
    :goto_0
    nop

    .line 532
    :goto_1
    const/16 v2, 0x9

    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 533
    return-void

    .line 481
    .end local v0    # "currentScale":F
    .end local v1    # "currentAlpha":F
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 482
    iput v5, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 483
    return-void

    .line 475
    :cond_4
    const-string v0, "SendUi"

    const-string v1, "Unexpected call to finish() in STATE_W4_SCREENSHOT_THEN_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 472
    :cond_5
    iput v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 473
    return-void

    .line 466
    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public finishAndToast(ILjava/lang/String;)V
    .locals 0
    .param p1, "finishMode"    # I
    .param p2, "toast"    # Ljava/lang/String;

    .line 457
    iput-object p2, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 460
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 896
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 892
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 693
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 676
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 684
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_1

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_4

    .line 686
    iget-boolean v0, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/beam/FireflyRenderer;->start(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 679
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/SendUi;->dismiss()V

    .line 690
    :cond_4
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 696
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 672
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 858
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 849
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 862
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 867
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 871
    invoke-virtual {p0}, Lcom/android/nfc/beam/SendUi;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 732
    iget-boolean v0, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    .line 735
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 736
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 737
    iput p2, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceWidth:I

    .line 738
    iput p3, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceHeight:I

    .line 740
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 751
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 745
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 755
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .line 701
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 709
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 711
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 715
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 716
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 720
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 723
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 724
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 726
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v0}, Lcom/android/nfc/beam/SendUi$Callback;->onSendConfirmed()V

    .line 727
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 845
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 853
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 887
    const/4 v0, 0x0

    return-object v0
.end method

.method public showPreSend(Z)V
    .locals 8
    .param p1, "promptToNfcTap"    # Z

    .line 344
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const-string v1, "SendUi"

    if-eqz v0, :cond_9

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected showPreSend() in state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 363
    :cond_0
    nop

    .line 369
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 374
    .local v0, "statusBarHeight":I
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 376
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 379
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 380
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 382
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 384
    if-eqz p1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 390
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 399
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 401
    .local v1, "orientation":I
    const/4 v2, 0x6

    const/4 v5, 0x7

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 405
    goto :goto_1

    .line 407
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 409
    nop

    .line 416
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 425
    iget-boolean v3, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-nez v3, :cond_4

    .line 426
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 428
    :cond_4
    if-eqz p1, :cond_5

    move v2, v5

    :cond_5
    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 429
    return-void

    .line 359
    .end local v0    # "statusBarHeight":I
    .end local v1    # "orientation":I
    :cond_6
    const-string v0, "Unexpected showPreSend() in STATE_W4_SCREENSHOT_PRESEND_REQUESTED"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 351
    :cond_7
    if-eqz p1, :cond_8

    .line 352
    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_2

    .line 354
    :cond_8
    iput v4, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 356
    :goto_2
    return-void

    .line 346
    :cond_9
    const-string v0, "Unexpected showPreSend() in STATE_IDLE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public showSendHint()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 765
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 766
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 773
    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    aput v2, v0, v1

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 772
    const-string v2, "alpha"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 774
    .local v0, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 775
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 776
    return-void
.end method

.method public showStartSend()V
    .locals 9

    .line 433
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 439
    .local v0, "currentScale":F
    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v6, "scaleX"

    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 441
    .local v2, "postX":Landroid/animation/PropertyValuesHolder;
    new-array v6, v1, [F

    aput v0, v6, v3

    aput v4, v6, v5

    const-string v7, "scaleY"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 444
    .local v6, "postY":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v8, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v3

    aput-object v6, v8, v5

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 446
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v7

    .line 447
    .local v7, "currentAlpha":F
    iget-object v8, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_1

    cmpl-float v8, v7, v4

    if-lez v8, :cond_1

    .line 448
    new-array v1, v1, [F

    aput v7, v1, v3

    aput v4, v1, v5

    const-string v4, "alpha"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 450
    .local v1, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 451
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 453
    .end local v1    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 454
    return-void
.end method

.method public takeScreenshot()V
    .locals 3

    .line 332
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 336
    new-instance v0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;-><init>(Lcom/android/nfc/beam/SendUi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    return-void
.end method
