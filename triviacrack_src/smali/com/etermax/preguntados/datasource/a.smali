.class public Lcom/etermax/preguntados/datasource/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation
.end field

.field static d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/etermax/preguntados/datasource/a$1;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/a$1;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/datasource/a;->a:Ljava/util/Comparator;

    .line 28
    new-instance v0, Lcom/etermax/preguntados/datasource/a$2;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/a$2;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/datasource/a;->b:Ljava/util/Comparator;

    .line 53
    new-instance v0, Lcom/etermax/preguntados/datasource/a$3;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/a$3;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/datasource/a;->c:Ljava/util/Comparator;

    .line 60
    new-instance v0, Lcom/etermax/preguntados/datasource/a$4;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/a$4;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/datasource/a;->d:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 82
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isPendingApproval()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 88
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Lcom/etermax/preguntados/datasource/a;->a:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    sget-object v0, Lcom/etermax/preguntados/datasource/a;->b:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    sget-object v0, Lcom/etermax/preguntados/datasource/a;->c:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    sget-object v0, Lcom/etermax/preguntados/datasource/a;->d:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    return-object v1
.end method
