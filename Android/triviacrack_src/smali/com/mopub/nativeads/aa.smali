.class Lcom/mopub/nativeads/aa;
.super Lcom/mopub/common/AdUrlGenerator;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "MAGIC_NO"

    iget-object v1, p0, Lcom/mopub/nativeads/aa;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/aa;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/util/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "assets"

    iget-object v1, p0, Lcom/mopub/nativeads/aa;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method a(I)Lcom/mopub/nativeads/aa;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/aa;->f:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method a(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/aa;
    .locals 1
    .parameter

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/aa;->c:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/aa;->d:Landroid/location/Location;

    .line 31
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/aa;->e:Ljava/lang/String;

    .line 33
    :cond_0
    return-object p0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    const-string v0, "nsv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 43
    const-string v0, "/m/ad"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/aa;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/aa;->c(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->d:Landroid/location/Location;

    .line 50
    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->a:Landroid/content/Context;

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v1

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v0

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/aa;->a(Landroid/location/Location;)V

    .line 57
    iget-object v0, p0, Lcom/mopub/nativeads/aa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->b(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->a([Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->l(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->isDoNotTrackSet()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->c(Z)V

    .line 68
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->e(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->a(F)V

    .line 74
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->f(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->g(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->h(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->i(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/aa;->a(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 83
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/aa;->k(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mopub/nativeads/aa;->a()V

    .line 87
    invoke-direct {p0}, Lcom/mopub/nativeads/aa;->d()V

    .line 89
    invoke-direct {p0}, Lcom/mopub/nativeads/aa;->c()V

    .line 91
    invoke-virtual {p0}, Lcom/mopub/nativeads/aa;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/aa;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/aa;

    move-result-object v0

    return-object v0
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/aa;
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mopub/nativeads/aa;->b:Ljava/lang/String;

    .line 24
    return-object p0
.end method
