.class Lcom/millennialmedia/android/NVASpeechKit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/NVASpeechKit;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->a(D)D

    move-result-wide v0

    .line 227
    const-string v2, "NVASpeechKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audiolevel changed: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->b(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->update(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->c(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->c(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onAudioLevelUpdate(D)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->d(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$State;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->RECORDING:Lcom/millennialmedia/android/NVASpeechKit$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->b(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    if-eqz v0, :cond_2

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->f(Lcom/millennialmedia/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v1}, Lcom/millennialmedia/android/NVASpeechKit;->e(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_2
    return-void
.end method
