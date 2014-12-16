.class Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c(J)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iput-wide p2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->a:J

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 913
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_1

    .line 918
    :cond_0
    invoke-static {p1}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    .line 922
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 923
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    const-string v3, "rejected"

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 924
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->f(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    .line 925
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->o()V

    .line 926
    return-void

    .line 920
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_date()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 904
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->b:Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->b(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
