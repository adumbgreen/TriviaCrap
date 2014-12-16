.class Lcom/smartadserver/android/library/ui/SASAdView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View$OnClickListener;)V
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
    .line 1695
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 1697
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v2, v2}, Lcom/smartadserver/android/library/ui/g;->a(II)V

    .line 1699
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    return-void
.end method
