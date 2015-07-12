.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x1

    .line 78
    :try_start_0
    const-string v1, "com.mopub.mobileads.MraidView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 21
    const-string v0, "/m/ad"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v1

    .line 25
    const-string v0, "6"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->j(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->b(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a([Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->l(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->isDoNotTrackSet()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->c(Z)V

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->c(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->d:Landroid/location/Location;

    .line 42
    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v2

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v0

    .line 47
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Landroid/location/Location;)V

    .line 49
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->d(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->e(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(F)V

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Z)V

    .line 57
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->f(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->g(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->h(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->i(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 66
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->k(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->b(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a()V

    .line 72
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
