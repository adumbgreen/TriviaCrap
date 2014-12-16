.class Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->notifyFailure()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$3;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Lcom/etermax/adsinterface/f;->b()V

    .line 170
    return-void
.end method
