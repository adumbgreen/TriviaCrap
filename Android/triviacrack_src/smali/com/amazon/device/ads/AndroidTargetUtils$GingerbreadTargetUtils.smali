.class Lcom/amazon/device/ads/AndroidTargetUtils$GingerbreadTargetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static editorApply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    return-void
.end method
