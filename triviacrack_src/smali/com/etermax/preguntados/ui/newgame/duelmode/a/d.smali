.class public Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;
.super Lcom/etermax/tools/widget/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">",
        "Lcom/etermax/tools/widget/a/g",
        "<TT;>;",
        "Lcom/etermax/tools/widget/a/d;"
    }
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;->a:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    .line 20
    iput-boolean p3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;->a:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 26
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;->a:Z

    return v0
.end method
