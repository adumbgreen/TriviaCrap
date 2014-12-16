.class Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;


# direct methods
.method constructor <init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$1;->this$1:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/etermax/adsinterface/f;->a()V

    .line 64
    return-void
.end method
