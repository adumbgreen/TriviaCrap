.class Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;->adLoadingFailed(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;


# direct methods
.method constructor <init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$2;->this$1:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/etermax/adsinterface/f;->b()V

    .line 78
    return-void
.end method
