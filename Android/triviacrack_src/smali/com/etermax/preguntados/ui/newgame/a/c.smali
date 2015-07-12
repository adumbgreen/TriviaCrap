.class Lcom/etermax/preguntados/ui/newgame/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/h/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/h/a/g",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/a/a;


# direct methods
.method private constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/a/c;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/c;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getFavorites()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getFavorites()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getFavorites()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 178
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/etermax/gamescommon/user/a/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/user/a/f;-><init>()V

    .line 188
    sget-object v4, Lcom/etermax/gamescommon/h/a/e;->c:Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/user/a/f;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 189
    invoke-virtual {v0, v6}, Lcom/etermax/gamescommon/user/a/f;->a(Z)V

    .line 190
    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/util/List;)V

    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    new-instance v0, Lcom/etermax/gamescommon/user/a/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/user/a/f;-><init>()V

    .line 196
    sget-object v2, Lcom/etermax/gamescommon/h/a/e;->e:Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/user/a/f;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 197
    invoke-virtual {v0, v6}, Lcom/etermax/gamescommon/user/a/f;->a(Z)V

    .line 198
    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/util/List;)V

    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 167
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/c;->a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
