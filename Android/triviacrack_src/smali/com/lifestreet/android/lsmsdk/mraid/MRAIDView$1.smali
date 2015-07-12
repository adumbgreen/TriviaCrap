.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->evaluateJavaScriptString(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$100(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    move-result-object v0

    .line 103
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z
    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$200(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->val$script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mTwoPartWebView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    move-result-object v0

    goto :goto_0
.end method
