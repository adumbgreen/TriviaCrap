.class Lcom/etermax/preguntados/ui/profile/i$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/profile/i;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/profile/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/i;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/i$1;->a:Lcom/etermax/preguntados/ui/profile/i;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/i$1;->a:Lcom/etermax/preguntados/ui/profile/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/i;->h:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/i$1;->a:Lcom/etermax/preguntados/ui/profile/i;

    iget-wide v1, v1, Lcom/etermax/preguntados/ui/profile/i;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->f(J)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/profile/i;Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1f4

    .line 225
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->setList(Ljava/util/List;)V

    .line 228
    :cond_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 229
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->setList(Ljava/util/List;)V

    .line 234
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setIs_app_user(Z)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/i$1;->a:Lcom/etermax/preguntados/ui/profile/i;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/profile/i;->a(Lcom/etermax/preguntados/ui/profile/i;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/profile/i;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 243
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    check-cast p1, Lcom/etermax/preguntados/ui/profile/i;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/i$1;->a(Lcom/etermax/preguntados/ui/profile/i;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    check-cast p1, Lcom/etermax/preguntados/ui/profile/i;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/i$1;->a(Lcom/etermax/preguntados/ui/profile/i;Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;)V

    return-void
.end method
