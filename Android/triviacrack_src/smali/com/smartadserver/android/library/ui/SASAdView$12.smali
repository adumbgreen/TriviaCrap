.class Lcom/smartadserver/android/library/ui/SASAdView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->f(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1603
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->g()V

    goto :goto_0
.end method
