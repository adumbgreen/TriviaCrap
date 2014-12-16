.class final enum Lcom/facebook/ads/internal/AdSdkCapability;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdSdkCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum APP_AD:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum APP_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum JS_TRIGGER:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum LINK_AD:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

.field private static final supportedCapabilities:[Lcom/facebook/ads/internal/AdSdkCapability;

.field private static final supportedCapabilitiesStr:Ljava/lang/String;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 28
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "APP_AD"

    invoke-direct {v1, v2, v0, v0}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 29
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "LINK_AD"

    invoke-direct {v1, v2, v5, v5}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 30
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "APP_AD_V2"

    invoke-direct {v1, v2, v6, v6}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 31
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "LINK_AD_V2"

    invoke-direct {v1, v2, v7, v7}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 32
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "APP_ENGAGEMENT_AD"

    invoke-direct {v1, v2, v8, v8}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 33
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "AD_CHOICES"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 34
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "JS_TRIGGER"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 35
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    const-string v2, "JS_TRIGGER_NO_AUTO_IMP_LOGGING"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

    .line 26
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/facebook/ads/internal/AdSdkCapability;

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v0

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v5

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v6

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v7

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/ads/internal/AdSdkCapability;->AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v3, v1, v2

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->$VALUES:[Lcom/facebook/ads/internal/AdSdkCapability;

    .line 47
    new-array v1, v8, [Lcom/facebook/ads/internal/AdSdkCapability;

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v0

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v5

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v6

    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

    aput-object v2, v1, v7

    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilities:[Lcom/facebook/ads/internal/AdSdkCapability;

    .line 57
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 58
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilities:[Lcom/facebook/ads/internal/AdSdkCapability;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 59
    invoke-virtual {v4}, Lcom/facebook/ads/internal/AdSdkCapability;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilitiesStr:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/facebook/ads/internal/AdSdkCapability;->value:I

    .line 41
    return-void
.end method

.method public static getSupportedCapabilitiesAsJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilitiesStr:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdSdkCapability;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/facebook/ads/internal/AdSdkCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/AdSdkCapability;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdSdkCapability;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/ads/internal/AdSdkCapability;->$VALUES:[Lcom/facebook/ads/internal/AdSdkCapability;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdSdkCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/AdSdkCapability;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/facebook/ads/internal/AdSdkCapability;->value:I

    return v0
.end method
