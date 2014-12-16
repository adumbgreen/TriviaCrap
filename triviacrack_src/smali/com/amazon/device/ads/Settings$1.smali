.class Lcom/amazon/device/ads/Settings$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/Settings;->beginFetch(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Settings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Settings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/device/ads/Settings$1;->this$0:Lcom/amazon/device/ads/Settings;

    iput-object p2, p0, Lcom/amazon/device/ads/Settings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$1;->this$0:Lcom/amazon/device/ads/Settings;

    iget-object v1, p0, Lcom/amazon/device/ads/Settings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Settings;->fetchSharedPreferences(Landroid/content/Context;)V

    .line 74
    return-void
.end method
