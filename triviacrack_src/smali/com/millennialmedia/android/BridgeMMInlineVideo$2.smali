.class Lcom/millennialmedia/android/BridgeMMInlineVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMInlineVideo;->removeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 49
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;->a:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;->a:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->h()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->m()V

    .line 60
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 63
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
    .line 49
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
