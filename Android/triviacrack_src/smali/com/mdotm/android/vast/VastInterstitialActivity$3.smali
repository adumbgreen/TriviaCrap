.class Lcom/mdotm/android/vast/VastInterstitialActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->i()Landroid/widget/RelativeLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/vast/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->b(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 292
    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 294
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->c(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/f;->c()V

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->b(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 298
    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 299
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->c(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/f;->b()V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
