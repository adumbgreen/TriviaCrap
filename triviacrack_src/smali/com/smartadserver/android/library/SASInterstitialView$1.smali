.class Lcom/smartadserver/android/library/SASInterstitialView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/SASInterstitialView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$1;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStateChanged(Lcom/smartadserver/android/library/ui/d;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/d;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
