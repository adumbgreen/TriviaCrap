.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->J()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;",
        "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;->b()Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 961
    invoke-static {p2}, Lcom/etermax/preguntados/ui/rankings/m;->a(Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 962
    const-string v1, "Weekly Ranking"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 963
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 952
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/UserRankDTO;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;->a:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->D()Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    move-result-object v0

    return-object v0
.end method
