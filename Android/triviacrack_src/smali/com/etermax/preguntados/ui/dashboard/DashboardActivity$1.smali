.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->j:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->b()V

    .line 378
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
