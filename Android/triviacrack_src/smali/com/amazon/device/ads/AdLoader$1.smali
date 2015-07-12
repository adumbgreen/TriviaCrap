.class Lcom/amazon/device/ads/AdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoader;->startFetchAdThread()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLoader;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader;->fetchAd()V

    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    #calls: Lcom/amazon/device/ads/AdLoader;->beginFinalizeFetchAd()V
    invoke-static {v0}, Lcom/amazon/device/ads/AdLoader;->access$000(Lcom/amazon/device/ads/AdLoader;)V

    .line 86
    return-void
.end method
