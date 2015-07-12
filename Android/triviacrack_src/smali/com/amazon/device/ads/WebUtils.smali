.class Lcom/amazon/device/ads/WebUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/amazon/device/ads/WebUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/WebUtils;->LOGTAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/WebUtils;->executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazon/device/ads/WebUtils;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/amazon/device/ads/WebUtils;->executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;->encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/amazon/device/ads/WebUtils;->executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    sget-object v0, Lcom/amazon/device/ads/WebUtils;->executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;->getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/amazon/device/ads/WebUtils;->executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/amazon/device/ads/WebUtils;->executor:Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/WebUtils$WebUtilsExecutor;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
