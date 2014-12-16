.class Lcom/etermax/preguntados/ui/newgame/a/b;
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
        "Ljava/util/List",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/a/a;


# direct methods
.method private constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/a/b;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/ui/newgame/a/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/b;-><init>(Lcom/etermax/preguntados/ui/newgame/a/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 244
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    if-eqz p1, :cond_1

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 254
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 263
    new-instance v0, Lcom/etermax/gamescommon/user/a/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/user/a/f;-><init>()V

    .line 264
    sget-object v4, Lcom/etermax/gamescommon/h/a/e;->f:Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/user/a/f;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 265
    invoke-virtual {v0, v6}, Lcom/etermax/gamescommon/user/a/f;->a(Z)V

    .line 266
    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/util/List;)V

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 271
    new-instance v0, Lcom/etermax/gamescommon/user/a/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/user/a/f;-><init>()V

    .line 272
    sget-object v2, Lcom/etermax/gamescommon/h/a/e;->g:Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/user/a/f;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 273
    invoke-virtual {v0, v6}, Lcom/etermax/gamescommon/user/a/f;->a(Z)V

    .line 274
    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/util/List;)V

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_3
    return-object v1
.end method
