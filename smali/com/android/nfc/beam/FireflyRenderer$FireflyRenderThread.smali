.class Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;
.super Ljava/lang/Thread;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/FireflyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FireflyRenderThread"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field volatile mFinished:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mTextureId:I

.field final synthetic this$0:Lcom/android/nfc/beam/FireflyRenderer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;Lcom/android/nfc/beam/FireflyRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/beam/FireflyRenderer;
    .param p2, "x1"    # Lcom/android/nfc/beam/FireflyRenderer$1;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;-><init>(Lcom/android/nfc/beam/FireflyRenderer;)V

    return-void
.end method

.method private checkCurrent()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    .line 282
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_1
    return-void

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 285
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .line 354
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 355
    .local v7, "configsCount":[I
    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 356
    .local v0, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/android/nfc/beam/FireflyRenderer;->sEglConfig:[I

    const/4 v5, 0x1

    move-object v4, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const/4 v1, 0x0

    aget v2, v7, v1

    if-lez v2, :cond_0

    .line 360
    aget-object v1, v0, v1

    return-object v1

    .line 362
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 357
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglChooseConfig failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 358
    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private finishGL()V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 344
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 351
    :cond_2
    return-void

    .line 338
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 247
    return-void
.end method

.method initGL()Z
    .locals 8

    .line 292
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 294
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 295
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    const-string v3, "NfcFireflyThread"

    if-ne v0, v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 297
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v2

    .line 301
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 302
    .local v0, "version":[I
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 304
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v2

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 309
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_2

    .line 310
    const-string v1, "eglConfig not initialized."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v2

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v7, 0x0

    invoke-interface {v4, v5, v1, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 316
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v6, v6, Lcom/android/nfc/beam/FireflyRenderer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 318
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_5

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v4, :cond_3

    goto :goto_0

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v4, v5, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 326
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v2

    .line 330
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 332
    const/4 v1, 0x1

    return v1

    .line 319
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 320
    .local v1, "error":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindowSurface returned error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v2
.end method

.method loadStarTexture()V
    .locals 8

    .line 250
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 251
    .local v1, "textureIds":[I
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 252
    aget v0, v1, v3

    iput v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    .line 254
    const/4 v0, 0x0

    .line 257
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v2, v2, Lcom/android/nfc/beam/FireflyRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "star.png"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 259
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 260
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    const/16 v6, 0xde1

    invoke-interface {v4, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 262
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x2801

    const/16 v7, 0x2601

    invoke-interface {v4, v6, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 263
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x2800

    invoke-interface {v4, v6, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 265
    invoke-static {v6, v3, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 267
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 274
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 269
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "NfcFireflyThread"

    const-string v4, "IOException opening assets."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 274
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 272
    :goto_2
    if-eqz v0, :cond_1

    .line 274
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 275
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_1
    :goto_4
    throw v2
.end method

.method public run()V
    .locals 16

    .line 173
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->initGL()Z

    move-result v0

    const-string v2, "NfcFireflyThread"

    if-nez v0, :cond_0

    .line 174
    const-string v0, "Failed to initialize OpenGL."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->loadStarTexture()V

    .line 179
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-interface {v0, v4, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 181
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v3, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v3, v3, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    iget-object v4, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v4, v4, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    const/4 v5, 0x0

    invoke-interface {v0, v5, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 184
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1701

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 185
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 186
    iget-object v6, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    neg-int v0, v0

    int-to-float v7, v0

    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    int-to-float v8, v0

    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    int-to-float v9, v0

    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    neg-int v0, v0

    int-to-float v10, v0

    const/high16 v11, 0x42480000    # 50.0f

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-interface/range {v6 .. v12}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 189
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1700

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 190
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 192
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xc50

    const/16 v4, 0x1102

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 193
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 196
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    array-length v4, v0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v0, v6

    .line 197
    .local v7, "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    invoke-virtual {v7}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->reset()V

    .line 196
    .end local v7    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x3

    const-string v6, "Could not swap buffers"

    const/16 v7, 0x4000

    if-ge v0, v4, :cond_3

    .line 203
    iget-object v4, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 204
    iget-object v4, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v4, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 205
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-boolean v3, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 200
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "i":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 212
    .local v8, "startTime":J
    :goto_2
    iget-boolean v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    if-nez v0, :cond_6

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 214
    .local v10, "timeElapsedMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->checkCurrent()V

    .line 218
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 219
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 221
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xde1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 222
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xbe2

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 223
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x302

    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 225
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v0, v0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    array-length v4, v0

    move v12, v5

    :goto_3
    if-ge v12, v4, :cond_4

    aget-object v13, v0, v12

    .line 226
    .local v13, "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    invoke-virtual {v13, v10, v11}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->updatePositionAndScale(J)V

    .line 227
    iget-object v14, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v13, v14}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 225
    .end local v13    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 230
    :cond_4
    iget-object v0, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v12, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v4, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-boolean v3, v1, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 235
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    .line 237
    .local v12, "elapsed":J
    const-wide/16 v14, 0x1e

    sub-long/2addr v14, v12

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_4

    .line 238
    :catch_0
    move-exception v0

    .line 241
    .end local v10    # "timeElapsedMs":J
    .end local v12    # "elapsed":J
    :goto_4
    const/4 v3, 0x1

    goto :goto_2

    .line 242
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->finishGL()V

    .line 243
    return-void
.end method
