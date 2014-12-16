.class Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;
.super Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 865
    if-eqz v0, :cond_0

    .line 866
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 868
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v1, v0

    .line 872
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p1

    move v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    :cond_0
    monitor-exit p0

    return-void

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
