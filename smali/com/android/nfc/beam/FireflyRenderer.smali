.class public Lcom/android/nfc/beam/FireflyRenderer;
.super Ljava/lang/Object;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/FireflyRenderer$Firefly;,
        Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;
    }
.end annotation


# static fields
.field static final FAR_CLIPPING_PLANE:F = 100.0f

.field private static final LOG_TAG:Ljava/lang/String; = "NfcFireflyThread"

.field static final NEAR_CLIPPING_PLANE:F = 50.0f

.field static final NUM_FIREFLIES:I = 0xc8

.field static final mIndices:[S

.field static final mTextCoords:[F

.field static final mVertices:[F

.field static final sEglConfig:[I


# instance fields
.field final mContext:Landroid/content/Context;

.field mDisplayHeight:I

.field mDisplayWidth:I

.field final mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

.field mFireflyRenderThread:Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

.field final mIndexBuffer:Ljava/nio/ShortBuffer;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field final mTextureBuffer:Ljava/nio/FloatBuffer;

.field final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/beam/FireflyRenderer;->sEglConfig:[I

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/beam/FireflyRenderer;->mVertices:[F

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/beam/FireflyRenderer;->mTextCoords:[F

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/nfc/beam/FireflyRenderer;->mIndices:[S

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x42000000    # 32.0f
        0x0
        0x42000000    # 32.0f
        0x42000000    # 32.0f
        0x0
        0x42000000    # 32.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/nfc/beam/FireflyRenderer;->mContext:Landroid/content/Context;

    .line 104
    sget-object v0, Lcom/android/nfc/beam/FireflyRenderer;->mVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 107
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/android/nfc/beam/FireflyRenderer;->mVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    sget-object v1, Lcom/android/nfc/beam/FireflyRenderer;->mIndices:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 111
    .local v1, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 113
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    sget-object v4, Lcom/android/nfc/beam/FireflyRenderer;->mIndices:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 114
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    sget-object v3, Lcom/android/nfc/beam/FireflyRenderer;->mTextCoords:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 117
    .local v3, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 119
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v5, Lcom/android/nfc/beam/FireflyRenderer;->mTextCoords:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 120
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    const/16 v2, 0xc8

    new-array v4, v2, [Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    iput-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    .line 123
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 124
    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    new-instance v6, Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    invoke-direct {v6, p0}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;-><init>(Lcom/android/nfc/beam/FireflyRenderer;)V

    aput-object v6, v5, v4

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 133
    iput-object p1, p0, Lcom/android/nfc/beam/FireflyRenderer;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 134
    iput p2, p0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    .line 135
    iput p3, p0, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    .line 137
    new-instance v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;-><init>(Lcom/android/nfc/beam/FireflyRenderer;Lcom/android/nfc/beam/FireflyRenderer$1;)V

    iput-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

    .line 138
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

    invoke-virtual {v0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->start()V

    .line 139
    return-void
.end method

.method public stop()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->finish()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

    invoke-virtual {v0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "NfcFireflyThread"

    const-string v2, "Couldn\'t wait for FireflyRenderThread."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;

    .line 155
    :cond_0
    return-void
.end method
