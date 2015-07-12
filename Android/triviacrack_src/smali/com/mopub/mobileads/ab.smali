.class Lcom/mopub/mobileads/ab;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubConversionTracker;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/MoPubConversionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mopub/mobileads/ab;->a:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/MoPubConversionTracker;Lcom/mopub/mobileads/MoPubConversionTracker$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/ab;-><init>(Lcom/mopub/mobileads/MoPubConversionTracker;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 55
    const-string v0, "/m/open"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "6"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ab;->j(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/ab;->a:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->a(Lcom/mopub/mobileads/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/ab;->a(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/ab;->a:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->b(Lcom/mopub/mobileads/MoPubConversionTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/ab;->l(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->isDoNotTrackSet()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/ab;->c(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ab;->k(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/mopub/mobileads/ab;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
