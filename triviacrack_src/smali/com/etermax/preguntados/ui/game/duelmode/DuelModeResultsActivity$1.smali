.class Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->b:Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;

    iput-wide p3, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->a:J

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->b:Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;

    iput-object p2, v0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->b:Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->f:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {p2, v0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->b:Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;Landroid/support/v4/app/Fragment;Z)V

    .line 118
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    check-cast p1, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->a(Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->b:Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->b:Lcom/etermax/preguntados/datasource/d;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->d(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
