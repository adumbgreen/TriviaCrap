.class Lcom/smartadserver/android/library/ui/SASAdView$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$6;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView$6;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$6$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$6$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$6;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$6$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$6;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$6$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$6;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/controller/mraid/a;->a(II)V

    .line 1144
    return-void
.end method
