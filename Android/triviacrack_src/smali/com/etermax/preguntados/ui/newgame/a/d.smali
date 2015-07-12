.class Lcom/etermax/preguntados/ui/newgame/a/d;
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
    .line 136
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/a/d;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/d;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;)Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getRecent_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getRecent_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getRecent_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 145
    new-instance v2, Lcom/etermax/gamescommon/user/a/f;

    invoke-direct {v2}, Lcom/etermax/gamescommon/user/a/f;-><init>()V

    .line 146
    sget-object v3, Lcom/etermax/gamescommon/h/a/e;->b:Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/user/a/f;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 147
    invoke-virtual {v2, v4}, Lcom/etermax/gamescommon/user/a/f;->a(Z)V

    .line 148
    invoke-virtual {v2, v1}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/util/List;)V

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getSuggested_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getSuggested_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->getSuggested_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 155
    new-instance v2, Lcom/etermax/gamescommon/user/a/f;

    invoke-direct {v2}, Lcom/etermax/gamescommon/user/a/f;-><init>()V

    .line 156
    sget-object v3, Lcom/etermax/gamescommon/h/a/e;->a:Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/user/a/f;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 157
    invoke-virtual {v2, v4}, Lcom/etermax/gamescommon/user/a/f;->a(Z)V

    .line 158
    invoke-virtual {v2, v1}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/util/List;)V

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 136
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/d;->a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
