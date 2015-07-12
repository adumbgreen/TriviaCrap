.class Lcom/mdotm/android/view/MdotMView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView;->a(Lcom/mdotm/android/d/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMView;

.field private final synthetic b:Lcom/mdotm/android/d/b;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView;Lcom/mdotm/android/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMView$2;->b:Lcom/mdotm/android/d/b;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMView;->removeAllViews()V

    .line 209
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->b:Lcom/mdotm/android/d/b;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMView;->b(Lcom/mdotm/android/d/b;)Landroid/view/View;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/view/MdotMView;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->d(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->d(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onReceiveBannerAd()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->d(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$2;->a:Lcom/mdotm/android/view/MdotMView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->d(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveBannerAd()V

    goto :goto_0
.end method
