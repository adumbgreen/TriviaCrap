.class Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/f;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->f(J)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 175
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Ljava/util/List;)V

    .line 181
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 185
    invoke-static {p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/duelmode/g;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/g;->c()V

    .line 186
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;)V

    return-void
.end method
