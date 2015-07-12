.class Lcom/amazon/device/ads/AdContainer$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdContainer$2;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$2$1;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2$1;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    iget-object v0, v0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->adController:Lcom/amazon/device/ads/AdController;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$500(Lcom/amazon/device/ads/AdContainer;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 519
    return-void
.end method
