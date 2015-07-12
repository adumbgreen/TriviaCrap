.class public Lcom/etermax/gamescommon/user/b/d;
.super Lcom/etermax/gamescommon/user/b/a;
.source "SourceFile"


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/h/a/e;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/etermax/gamescommon/user/b/c;->b:Lcom/etermax/gamescommon/user/b/c;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/user/b/a;-><init>(Lcom/etermax/gamescommon/user/b/c;Lcom/etermax/gamescommon/h/a/e;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/b/d;->c:Ljava/util/List;

    .line 17
    iput p2, p0, Lcom/etermax/gamescommon/user/b/d;->d:I

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/user/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/user/b/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/etermax/gamescommon/user/b/d;->d:I

    return v0
.end method
