.class Lcom/millennialmedia/android/NVASpeechKit$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/NVASpeechKit$Listener;


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
    .line 354
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioLevelUpdate(D)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/NVASpeechKit;->a(D)V

    .line 412
    return-void
.end method

.method public onAudioSampleUpdate(D)V
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/NVASpeechKit;->b(D)V

    .line 406
    return-void
.end method

.method public onCustomWordsAdded()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onCustomWordsDeleted()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onResults()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v1}, Lcom/millennialmedia/android/NVASpeechKit;->getResults()[Lcom/millennialmedia/android/NVASpeechKit$Result;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit;[Lcom/millennialmedia/android/NVASpeechKit$Result;)Lorg/json/JSONArray;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public onStateChange(Lcom/millennialmedia/android/NVASpeechKit$State;)V
    .locals 2
    .parameter

    .prologue
    .line 359
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$8;->a:[I

    invoke-virtual {p1}, Lcom/millennialmedia/android/NVASpeechKit$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->e()V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->c()V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->a()V

    goto :goto_0

    .line 370
    :pswitch_3
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->b()V

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->a:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->d()V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
