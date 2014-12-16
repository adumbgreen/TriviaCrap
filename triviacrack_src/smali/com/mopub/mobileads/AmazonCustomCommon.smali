.class public Lcom/mopub/mobileads/AmazonCustomCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/AmazonCustomCommon;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static init(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 14
    sget-boolean v0, Lcom/mopub/mobileads/AmazonCustomCommon;->a:Z

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 18
    :cond_0
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amazon Ads - Initializing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    if-eqz p1, :cond_1

    .line 21
    const-string v0, "MoPub"

    const-string v1, "Amazon Ads - Enabling test mode"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 31
    sput-boolean v3, Lcom/mopub/mobileads/AmazonCustomCommon;->a:Z

    goto :goto_0
.end method
