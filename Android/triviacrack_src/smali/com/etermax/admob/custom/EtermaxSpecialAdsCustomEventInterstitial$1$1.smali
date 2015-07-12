.class Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;


# direct methods
.method constructor <init>(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLoadCompleted(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    const-string v0, "admob ads"

    const-string v1, "finished loading custom image"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #calls: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$400(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    .line 95
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #calls: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->showInterstitialAfterLoad(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$500(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public contentLoadCompleted(Landroid/webkit/WebView;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    const-string v0, "admob ads"

    const-string v1, "finished loading custom web content"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #calls: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$400(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    .line 102
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #calls: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->showInterstitialAfterLoad(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$500(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public contentLoadFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load custom content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #calls: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$400(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    .line 89
    return-void
.end method
