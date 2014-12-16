.class public Lcom/facebook/ads/AdSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_ID_HASH_PREFS_KEY:Ljava/lang/String; = "deviceIdHash"

.field private static final PREFS_NAME:Ljava/lang/String; = "FBAdPrefs"

.field public static final TAG:Ljava/lang/String;

.field private static childDirected:Z

.field private static deviceIdHash:Ljava/lang/String;

.field private static final emulatorProducts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile testDeviceNoticeDisplayed:Z

.field private static final testDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static urlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    const-class v0, Lcom/facebook/ads/AdSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AdSettings;->TAG:Ljava/lang/String;

    .line 42
    sput-object v1, Lcom/facebook/ads/AdSettings;->urlPrefix:Ljava/lang/String;

    .line 43
    sput-boolean v2, Lcom/facebook/ads/AdSettings;->childDirected:Z

    .line 44
    sput-object v1, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    .line 50
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    const-string v1, "sdk"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    const-string v1, "google_sdk"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    const-string v1, "vbox86p"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    const-string v1, "vbox86tp"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    sput-boolean v2, Lcom/facebook/ads/AdSettings;->testDeviceNoticeDisplayed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTestDevice(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public static addTestDevices(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method public static clearTestDevices()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 87
    return-void
.end method

.method public static getUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/facebook/ads/AdSettings;->urlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static isChildDirected()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/facebook/ads/AdSettings;->childDirected:Z

    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    sget-object v2, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    sget-object v2, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 100
    const-string v2, "FBAdPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    const-string v3, "deviceIdHash"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    .line 102
    sget-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    .line 104
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "deviceIdHash"

    sget-object v4, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :cond_2
    sget-object v2, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    sget-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object v0, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->printTestDeviceNotice(Ljava/lang/String;)V

    move v0, v1

    .line 115
    goto :goto_0
.end method

.method private static printTestDeviceNotice(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    sget-boolean v0, Lcom/facebook/ads/AdSettings;->testDeviceNoticeDisplayed:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/AdSettings;->testDeviceNoticeDisplayed:Z

    .line 124
    sget-object v0, Lcom/facebook/ads/AdSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test mode device hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/facebook/ads/AdSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When testing your app with Facebook\'s ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIsChildDirected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 151
    sput-boolean p0, Lcom/facebook/ads/AdSettings;->childDirected:Z

    .line 152
    return-void
.end method

.method public static setUrlPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    sput-object p0, Lcom/facebook/ads/AdSettings;->urlPrefix:Ljava/lang/String;

    .line 136
    return-void
.end method
