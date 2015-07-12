.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->I()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;",
        "Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->b()Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 729
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 733
    if-eqz p2, :cond_4

    .line 734
    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getGifts()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 735
    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getGifts()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v0

    array-length v0, v0

    .line 737
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getAsks()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 738
    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getAsks()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v1

    array-length v1, v1

    .line 741
    :cond_0
    :goto_1
    if-gtz v0, :cond_1

    if-lez v1, :cond_2

    .line 742
    :cond_1
    invoke-static {}, Lcom/etermax/preguntados/d/h;->b()Lcom/etermax/preguntados/d/h;

    move-result-object v0

    .line 743
    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;)V

    .line 744
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)Lcom/etermax/gamescommon/gifting/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/gamescommon/gifting/e;)V

    .line 745
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)Lcom/etermax/gamescommon/gifting/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/gamescommon/gifting/f;)V

    .line 746
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "inbox_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/d/h;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 752
    :goto_2
    return-void

    .line 748
    :cond_2
    invoke-static {}, Lcom/etermax/preguntados/d/a;->a()Lcom/etermax/preguntados/d/a;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)Lcom/etermax/gamescommon/gifting/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/d/a;->a(Lcom/etermax/gamescommon/gifting/e;)V

    .line 750
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "empty_inbox_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/d/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 756
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 720
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 720
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    check-cast p2, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->n:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->i()Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    move-result-object v0

    return-object v0
.end method
