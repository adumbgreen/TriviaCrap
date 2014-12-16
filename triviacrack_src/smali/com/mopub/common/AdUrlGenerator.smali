.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# static fields
.field private static e:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->UNKNOWN:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    sput-object v0, Lcom/mopub/common/AdUrlGenerator;->e:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private m(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static setTwitterAppInstalledStatus(Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    sput-object p0, Lcom/mopub/common/AdUrlGenerator;->e:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    .line 125
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/mopub/common/AdUrlGenerator;->e:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    sget-object v1, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->UNKNOWN:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->getTwitterAppInstallStatus()Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/AdUrlGenerator;->e:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    .line 113
    :cond_0
    sget-object v0, Lcom/mopub/common/AdUrlGenerator;->e:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    sget-object v1, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    if-ne v0, v1, :cond_1

    .line 114
    const-string v0, "ts"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    return-void
.end method

.method protected a(F)V
    .locals 3
    .parameter

    .prologue
    .line 71
    const-string v0, "sc_a"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected a(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string v0, "ll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "lla"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected a(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    const-string v0, "ct"

    invoke-direct {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->a(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 98
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 75
    if-eqz p1, :cond_0

    const-string v0, "mr"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const-string v0, "nv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const-string v0, "z"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    const-string v0, "o"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_0

    const-string v0, ""

    .line 80
    :goto_0
    const-string v1, "mcc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->m(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    if-nez p1, :cond_0

    const-string v0, ""

    .line 85
    :goto_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->m(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTwitterAppInstallStatus()Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/IntentUtils;->canHandleTwitterUrl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->NOT_INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    goto :goto_0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const-string v0, "cn"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->b:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->c:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->d:Landroid/location/Location;

    .line 40
    return-object p0
.end method
