.class final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final mTwoPartCreative:Z

.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    .line 192
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 193
    iput-boolean p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->mTwoPartCreative:Z

    .line 194
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->mTwoPartCreative:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 212
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 216
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 218
    const-string v0, "lfstmedia.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;

    invoke-direct {v0, p1, p0}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    :cond_0
    :goto_0
    return v5

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onClick(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 226
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mMraidController:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$400(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->startActivityWithUrl(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mListener:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$300(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$CustomWebViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onLeaveApplication(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
