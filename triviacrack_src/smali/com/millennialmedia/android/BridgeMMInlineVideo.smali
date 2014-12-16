.class Lcom/millennialmedia/android/BridgeMMInlineVideo;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    const-string v1, "adjustVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->adjustVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    const-string v1, "insertVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->insertVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_2
    const-string v1, "pauseVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_3
    const-string v1, "playVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_4
    const-string v1, "removeVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->removeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_5
    const-string v1, "resumeVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->resumeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_6
    const-string v1, "setStreamVideoSource"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 216
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->setStreamVideoSource(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_7
    const-string v1, "stopVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->stopVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public adjustVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public insertVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public resumeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public setStreamVideoSource(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$8;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$8;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public stopVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
