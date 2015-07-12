.class Lcom/etermax/preguntados/ui/newgame/duelmode/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/duelmode/j;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/j;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$2;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$2;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/j;Z)Z

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$2;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/j;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/j;)Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
