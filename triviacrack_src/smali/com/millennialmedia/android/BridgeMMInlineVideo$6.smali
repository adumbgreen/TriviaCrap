.class Lcom/millennialmedia/android/BridgeMMInlineVideo$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMInlineVideo;->pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
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
.field final synthetic a:Lcom/millennialmedia/android/BridgeMMInlineVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;->a:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;->a:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->h()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->p()V

    .line 148
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->b()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
