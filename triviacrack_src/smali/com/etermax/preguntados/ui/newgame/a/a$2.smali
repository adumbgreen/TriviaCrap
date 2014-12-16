.class Lcom/etermax/preguntados/ui/newgame/a/a$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/a/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/a/a;",
        "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/a/a$2;->b:Lcom/etermax/preguntados/ui/newgame/a/a;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/a/a$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/a$2;->b()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a$2;->b:Lcom/etermax/preguntados/ui/newgame/a/a;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/newgame/a/a;->b(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/a/a;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/a/a$2;->a(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a$2;->b:Lcom/etermax/preguntados/ui/newgame/a/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/a/a;->h:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/a/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    return-object v0
.end method
