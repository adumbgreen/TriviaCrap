.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/gifting/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->z()V

    .line 777
    if-eqz p1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 779
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->o()V

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b:Lcom/etermax/gamescommon/menu/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a;->c()V

    goto :goto_0
.end method
