.class Lcom/android/nfc/beam/FireflyRenderer$Firefly;
.super Ljava/lang/Object;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/FireflyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Firefly"
.end annotation


# static fields
.field static final SPEED:F = 0.5f

.field static final TEXTURE_HEIGHT:F = 30.0f


# instance fields
.field mAlpha:F

.field mScale:F

.field mT:F

.field mX:F

.field mY:F

.field mZ:F

.field mZ0:F

.field final synthetic this$0:Lcom/android/nfc/beam/FireflyRenderer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 398
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 401
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 403
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 404
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 406
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v2, v2, Lcom/android/nfc/beam/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/16 v4, 0x1406

    const/4 v5, 0x3

    invoke-interface {p1, v5, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 407
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v2, v2, Lcom/android/nfc/beam/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    invoke-interface {p1, v5, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 409
    iget v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mX:F

    iget v3, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mY:F

    iget v4, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mZ:F

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v4, v5

    const/high16 v5, -0x3db80000    # -50.0f

    sub-float/2addr v5, v4

    invoke-interface {p1, v2, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 410
    iget v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v3, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 413
    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x0

    invoke-interface {p1, v2, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 414
    iget v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mScale:F

    invoke-interface {p1, v2, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 415
    const/high16 v2, -0x3e900000    # -15.0f

    invoke-interface {p1, v2, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 417
    sget-object v2, Lcom/android/nfc/beam/FireflyRenderer;->mIndices:[S

    array-length v2, v2

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v4, v4, Lcom/android/nfc/beam/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v5, 0x4

    const/16 v6, 0x1403

    invoke-interface {p1, v5, v2, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 420
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 421
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 422
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 423
    return-void
.end method

.method reset()V
    .locals 6

    .line 382
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v2, v2, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v2, v2, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mX:F

    .line 383
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v1, v1, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mY:F

    .line 384
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mZ:F

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mZ0:F

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mT:F

    .line 386
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mScale:F

    .line 387
    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mAlpha:F

    .line 388
    return-void
.end method

.method public updatePositionAndScale(J)V
    .locals 4
    .param p1, "timeElapsedMs"    # J

    .line 391
    iget v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mT:F

    long-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mT:F

    .line 392
    iget v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mZ0:F

    iget v1, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mT:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mZ:F

    .line 393
    iget v0, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mZ:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->mAlpha:F

    .line 394
    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->reset()V

    .line 395
    :cond_0
    return-void
.end method
