.class public Lcom/facebook/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field public static final DISPLAY_HEIGHT_INTENT_EXTRA:Ljava/lang/String; = "displayHeight"

.field public static final DISPLAY_ROTATION_INTENT_EXTRA:Ljava/lang/String; = "displayRotation"

.field public static final DISPLAY_WIDTH_INTENT_EXTRA:Ljava/lang/String; = "displayWidth"

.field public static final IMPRESSION_WILL_LOG:Ljava/lang/String; = "com.facebook.ads.interstitial.impression.logged"

.field public static final INTERSTITIAL_CLICKED:Ljava/lang/String; = "com.facebook.ads.interstitial.clicked"

.field public static final INTERSTITIAL_DISMISSED:Ljava/lang/String; = "com.facebook.ads.interstitial.dismissed"

.field public static final INTERSTITIAL_DISPLAYED:Ljava/lang/String; = "com.facebook.ads.interstitial.displayed"

.field public static final INTERSTITIAL_UNIQUE_ID_EXTRA:Ljava/lang/String; = "adInterstitialUniqueId"


# instance fields
.field private adListener:Lcom/facebook/ads/InterstitialAdListener;

.field private adLoaded:Z

.field private adRequestController:Lcom/facebook/ads/internal/AdRequestController;

.field private adResponse:Lcom/facebook/ads/internal/AdResponse;

.field private final broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private impListener:Lcom/facebook/ads/ImpressionListener;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v4, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    .line 81
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController;

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    sget-object v3, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    sget-object v5, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    new-instance v6, Lcom/facebook/ads/InterstitialAd$1;

    invoke-direct {v6, p0}, Lcom/facebook/ads/InterstitialAd$1;-><init>(Lcom/facebook/ads/InterstitialAd;)V

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    .line 120
    new-instance v0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;-><init>(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$1;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    .line 121
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->register()V

    .line 122
    return-void
.end method

.method static synthetic access$002(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/internal/AdResponse;)Lcom/facebook/ads/internal/AdResponse;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->adResponse:Lcom/facebook/ads/internal/AdResponse;

    return-object p1
.end method

.method static synthetic access$102(Lcom/facebook/ads/InterstitialAd;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/ads/InterstitialAd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/ImpressionListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->impListener:Lcom/facebook/ads/ImpressionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/ads/InterstitialAd;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method private ensureAdRequestController()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No request controller available, has the InterstitialAd been destroyed?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->destroy()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    .line 158
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->unregister()V

    .line 160
    :cond_0
    return-void
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    return v0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/facebook/ads/InterstitialAd;->ensureAdRequestController()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    .line 150
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    .line 151
    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    .line 136
    return-void
.end method

.method public setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->impListener:Lcom/facebook/ads/ImpressionListener;

    .line 144
    return-void
.end method

.method public show()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v2}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    move v0, v1

    .line 200
    :goto_0
    return v0

    .line 186
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    const-class v3, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adResponse:Lcom/facebook/ads/internal/AdResponse;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/HtmlAdDataModel;->addToIntentExtra(Landroid/content/Intent;)V

    .line 188
    iput-boolean v1, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    .line 190
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 191
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    const-string v3, "displayRotation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v0, "displayWidth"

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v0, "displayHeight"

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v0, "adInterstitialUniqueId"

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method
