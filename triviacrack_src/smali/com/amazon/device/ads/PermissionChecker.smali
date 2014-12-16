.class Lcom/amazon/device/ads/PermissionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static executor:Lcom/amazon/device/ads/PermissionChecker$PermissionCheckerExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/amazon/device/ads/PermissionChecker$PermissionCheckerExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/PermissionChecker$PermissionCheckerExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/PermissionChecker;->executor:Lcom/amazon/device/ads/PermissionChecker$PermissionCheckerExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hasInternetPermission(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    sget-object v0, Lcom/amazon/device/ads/PermissionChecker;->executor:Lcom/amazon/device/ads/PermissionChecker$PermissionCheckerExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/PermissionChecker$PermissionCheckerExecutor;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasPhonePermission(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    const-string v0, "android.permission.CALL_PHONE"

    invoke-static {p0, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasReadCalendarPermission(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasSmsPermission(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const-string v0, "android.permission.SEND_SMS"

    invoke-static {p0, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasWriteCalendarPermission(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasWriteExternalStoragePermission(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
