.class Lcom/smartadserver/android/library/ui/SASAdView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View$OnClickListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1680
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonVisibility(I)V

    .line 1681
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v2, v2}, Lcom/smartadserver/android/library/ui/g;->a(II)V

    .line 1682
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/d/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonPosition(I)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1686
    return-void
.end method
