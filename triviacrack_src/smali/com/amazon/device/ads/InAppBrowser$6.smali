.class Lcom/amazon/device/ads/InAppBrowser$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$6;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$6;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    #getter for: Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$000(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 239
    return-void
.end method
