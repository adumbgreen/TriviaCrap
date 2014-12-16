.class Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/duelmode/j;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/j;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/j;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 113
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/j;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/j;)Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->notifyDataSetChanged()V

    .line 114
    return-void
.end method
