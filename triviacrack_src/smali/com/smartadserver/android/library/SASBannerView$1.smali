.class Lcom/smartadserver/android/library/SASBannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASBannerView;->a(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/smartadserver/android/library/SASBannerView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASBannerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smartadserver/android/library/SASBannerView$1;->b:Lcom/smartadserver/android/library/SASBannerView;

    iput-object p2, p0, Lcom/smartadserver/android/library/SASBannerView$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartadserver/android/library/SASBannerView$1;->b:Lcom/smartadserver/android/library/SASBannerView;

    iget-object v1, p0, Lcom/smartadserver/android/library/SASBannerView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method
