.class public Lcom/facebook/ads/InterstitialAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final AD_WEBVIEW_ID:I = 0x186a1

.field private static final DATA_MODEL_KEY:Ljava/lang/String; = "dataModel"

.field private static final LAST_REQUESTED_ORIENTATION_KEY:Ljava/lang/String; = "lastRequestedOrientation"

.field private static final ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field private static final ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

.field private adWebView:Landroid/webkit/WebView;

.field private dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

.field private displayHeight:I

.field private displayWidth:I

.field private isRestart:Z

.field private lastRequestedOrientation:I

.field private placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/InterstitialAdActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    .line 218
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/HtmlAdHandler;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/ads/InterstitialAdActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadAdFromIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 181
    if-eqz p2, :cond_2

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    .line 183
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.facebook.com/"

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getMarkup()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    const-string v0, "lastRequestedOrientation"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    .line 188
    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    const-string v0, "displayWidth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayWidth:I

    .line 194
    const-string v0, "displayHeight"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayHeight:I

    .line 195
    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromIntentExtra(Landroid/content/Intent;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    .line 197
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/HtmlAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.facebook.com/"

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getMarkup()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcastForEvent(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "adInterstitialUniqueId"

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 216
    return-void
.end method

.method private setScreenOrientation(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    if-lt p2, p1, :cond_0

    move v1, v2

    .line 138
    :goto_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 140
    if-eqz v1, :cond_1

    .line 141
    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-virtual {p0, v2}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    .line 161
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 137
    goto :goto_0

    .line 144
    :pswitch_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 151
    :cond_1
    packed-switch v0, :pswitch_data_1

    .line 158
    invoke-virtual {p0, v3}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 154
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 151
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    .line 206
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 208
    const-string v0, "com.facebook.ads.interstitial.dismissed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v1, 0x400

    const/4 v7, -0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 80
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    .line 83
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 84
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/InterstitialAdActivity$1;)V

    new-instance v2, Lcom/facebook/ads/internal/AdWebViewInterface;

    invoke-direct {v2}, Lcom/facebook/ads/internal/AdWebViewInterface;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/AdWebViewUtils;->config(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Lcom/facebook/ads/internal/AdWebViewInterface;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdHandler;

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$1;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    const-wide/16 v3, 0x3e8

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/HtmlAdHandler;-><init>(Landroid/webkit/WebView;Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLandroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->loadAdFromIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 114
    const-string v0, "com.facebook.ads.interstitial.displayed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    .line 178
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->saveToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_0
    const-string v0, "lastRequestedOrientation"

    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v0, "adInterstitialUniqueId"

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 121
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    if-nez v0, :cond_1

    .line 122
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayWidth:I

    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayHeight:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->setScreenOrientation(II)V

    .line 127
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    .line 128
    return-void

    .line 123
    :cond_1
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    if-ltz v0, :cond_0

    .line 124
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 134
    return-void
.end method
