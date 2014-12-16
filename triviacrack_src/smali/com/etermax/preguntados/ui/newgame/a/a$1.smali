.class Lcom/etermax/preguntados/ui/newgame/a/a$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/a/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/a/a;",
        "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/a$1;->b()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/a/a;->j:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/newgame/a/a;->a(Lcom/etermax/preguntados/ui/newgame/a/a;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/a/a;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a(Lcom/etermax/preguntados/ui/newgame/a/a;Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;)V

    return-void
.end method

.method protected a_(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/etermax/tools/i/a;->a_(Landroid/support/v4/app/FragmentActivity;)V

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/a/a;->j:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/a$1;->a:Lcom/etermax/preguntados/ui/newgame/a/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/a/a;->h:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->l()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    move-result-object v0

    return-object v0
.end method
