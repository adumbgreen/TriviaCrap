.class Lcom/millennialmedia/android/BridgeMMCachedVideo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMCachedVideo;->endVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/millennialmedia/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/VideoPlayerActivity;

.field final synthetic b:Lcom/millennialmedia/android/BridgeMMCachedVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;->b:Lcom/millennialmedia/android/BridgeMMCachedVideo;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->l()V

    .line 250
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
