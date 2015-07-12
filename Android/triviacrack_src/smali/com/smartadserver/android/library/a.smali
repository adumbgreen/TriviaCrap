.class Lcom/smartadserver/android/library/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# instance fields
.field a:Lcom/smartadserver/android/library/ui/a;

.field final synthetic b:Lcom/smartadserver/android/library/SASInterstitialView;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView;Lcom/smartadserver/android/library/ui/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    .line 77
    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 5
    .parameter

    .prologue
    .line 82
    invoke-static {}, Lcom/smartadserver/android/library/SASInterstitialView;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adLoadingCompleted in interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/smartadserver/android/library/a/b;

    const-string v1, "Interstitial view could not be displayed. Ensure either that the parent Activity is passed to its constructor or that this interstitial is part of the UI hierarchy "

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/b;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v1, v0}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    .line 99
    iget-object v1, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v2, Lcom/smartadserver/android/library/a$1;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/a$1;-><init>(Lcom/smartadserver/android/library/a;)V

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 105
    iget-object v1, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;)Lcom/smartadserver/android/library/ui/c;

    move-result-object v1

    monitor-enter v1

    .line 108
    if-eqz v0, :cond_2

    .line 113
    :try_start_0
    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->expand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;)Lcom/smartadserver/android/library/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->h()I

    move-result v0

    .line 126
    if-lez v0, :cond_3

    .line 128
    iget-object v1, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 129
    iget-object v1, p0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->c(Lcom/smartadserver/android/library/SASInterstitialView;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/smartadserver/android/library/a$2;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/a$2;-><init>(Lcom/smartadserver/android/library/a;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/a;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/smartadserver/android/library/a;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 157
    :cond_0
    return-void
.end method
