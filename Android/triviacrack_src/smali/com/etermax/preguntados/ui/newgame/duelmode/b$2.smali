.class Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/duelmode/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/b;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/b;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/duelmode/c;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/c;->a(Ljava/lang/String;)V

    .line 88
    :cond_1
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
