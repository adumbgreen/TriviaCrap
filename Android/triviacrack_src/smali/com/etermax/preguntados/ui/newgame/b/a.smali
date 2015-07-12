.class public Lcom/etermax/preguntados/ui/newgame/b/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:Landroid/widget/GridView;

.field c:Lcom/etermax/tools/widget/CustomFontTextView;

.field d:Lcom/etermax/tools/widget/CustomFontTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/newgame/b/a;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/b/c;->c()Lcom/etermax/preguntados/ui/newgame/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/b/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/newgame/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/b/d;->a()Lcom/etermax/preguntados/ui/newgame/b/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/b/b;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/b/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/b/a$1;-><init>(Lcom/etermax/preguntados/ui/newgame/b/a;)V

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/b/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/b/b;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 71
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->c:Lcom/etermax/tools/widget/CustomFontTextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMaxReward()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->d:Lcom/etermax/tools/widget/CustomFontTextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/b/e;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/b/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 59
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->b:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/a;->b:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 63
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b/a;->a()Lcom/etermax/preguntados/ui/newgame/b/b;

    move-result-object v0

    return-object v0
.end method
