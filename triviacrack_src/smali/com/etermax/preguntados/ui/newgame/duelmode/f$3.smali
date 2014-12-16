.class Lcom/etermax/preguntados/ui/newgame/duelmode/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/duelmode/f;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$3;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 129
    return-void
.end method
