.class Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/BridgeMMMedia$Audio;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 838
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->a:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;

    .line 840
    invoke-interface {v0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;->onUpdate(I)V

    goto :goto_0

    .line 844
    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/MMSDK;->a(Ljava/lang/Runnable;J)V

    .line 846
    :cond_1
    return-void
.end method
