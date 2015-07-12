.class final Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;


# direct methods
.method private constructor <init>(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Lcom/lifestreet/android/lsmsdk/ads/AdWebView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;-><init>(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->getListener()Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    move-result-object v0

    .line 153
    :goto_0
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onReceiveAd(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V

    .line 156
    :cond_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->getListener()Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    move-result-object v0

    .line 162
    :goto_0
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/ads/AdView;Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->getListener()Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    move-result-object v0

    move-object v4, v0

    .line 114
    :goto_0
    if-eqz p2, :cond_1

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "lsm:closeInterstitialAd"

    invoke-static {p2, v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lsm://#close"

    invoke-static {p2, v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 117
    :goto_1
    const-string v3, "lfstmedia.com"

    invoke-static {p2, v3}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "TESTLP.html"

    invoke-static {p2, v3}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    .line 120
    :goto_2
    if-eqz v3, :cond_5

    .line 121
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #setter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z
    invoke-static {v0, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$202(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z

    .line 122
    new-instance v0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mLateCloseInterstitial:Z
    invoke-static {v3}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$300(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Z

    move-result v3

    invoke-direct {v0, p1, p0, v3}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Z)V

    new-array v3, v2, [Ljava/lang/String;

    aput-object p2, v3, v1

    invoke-virtual {v0, v3}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    :cond_1
    :goto_3
    return v2

    .line 112
    :cond_2
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 115
    goto :goto_1

    :cond_4
    move v3, v1

    .line 117
    goto :goto_2

    .line 123
    :cond_5
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 124
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$200(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mLateCloseInterstitial:Z
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$300(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #setter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z
    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$202(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z

    .line 126
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #setter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mLateCloseInterstitial:Z
    invoke-static {v0, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$302(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z

    goto :goto_3

    .line 128
    :cond_6
    invoke-interface {v4}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onClose()V

    goto :goto_3

    .line 130
    :cond_7
    if-eqz v4, :cond_1

    .line 131
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #setter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z
    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$202(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z

    .line 132
    invoke-interface {v4}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onClick()V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onPresentScreen(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V

    .line 138
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    const/4 v1, 0x1

    #setter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mActivityStarted:Z
    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$402(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z

    .line 140
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;->this$0:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    #getter for: Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onLeaveApplication(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
