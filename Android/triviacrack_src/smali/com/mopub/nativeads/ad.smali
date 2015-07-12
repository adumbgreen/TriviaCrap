.class Lcom/mopub/nativeads/ad;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mopub/nativeads/ad;->a:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const-string v0, "nsv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 25
    const-string v0, "/m/pos"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/mopub/nativeads/ad;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/ad;->a(Ljava/lang/String;)V

    .line 29
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ad;->j(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/mopub/nativeads/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/nativeads/ad;->b(Ljava/lang/String;)V

    .line 35
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

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/ad;->a([Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/ad;->l(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ad;->k(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/mopub/nativeads/ad;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/ad;
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mopub/nativeads/ad;->b:Ljava/lang/String;

    .line 20
    return-object p0
.end method
