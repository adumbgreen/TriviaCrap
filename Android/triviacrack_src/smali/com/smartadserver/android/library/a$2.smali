.class Lcom/smartadserver/android/library/a$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/smartadserver/android/library/a$2;->a:Lcom/smartadserver/android/library/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/smartadserver/android/library/a$2;->a:Lcom/smartadserver/android/library/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->b(Lcom/smartadserver/android/library/SASInterstitialView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/smartadserver/android/library/a$2;->a:Lcom/smartadserver/android/library/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v1, Lcom/smartadserver/android/library/a$2$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/a$2$1;-><init>(Lcom/smartadserver/android/library/a$2;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/smartadserver/android/library/a$2;->a:Lcom/smartadserver/android/library/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->c(Lcom/smartadserver/android/library/SASInterstitialView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 142
    :cond_0
    return-void
.end method
