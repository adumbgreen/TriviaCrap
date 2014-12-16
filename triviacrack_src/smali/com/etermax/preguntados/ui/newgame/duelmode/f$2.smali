.class Lcom/etermax/preguntados/ui/newgame/duelmode/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$2;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$2;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Z)Z

    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$2;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
