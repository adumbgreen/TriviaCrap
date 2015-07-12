.class public final Lcom/etermax/preguntados/ui/newgame/a/f;
.super Lcom/etermax/preguntados/ui/newgame/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final k:Lorg/a/a/b/c;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/a/a;-><init>()V

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->k:Lorg/a/a/b/c;

    .line 91
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 56
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->k()V

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->a:Lcom/etermax/gamescommon/social/a;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->b:Lcom/etermax/tools/social/a/b;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->c:Lcom/etermax/tools/f/a;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->h:Lcom/etermax/preguntados/datasource/d;

    .line 62
    return-void
.end method

.method public static j()Lcom/etermax/preguntados/ui/newgame/a/g;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/newgame/a/g;-><init>(Lcom/etermax/preguntados/ui/newgame/a/f$1;)V

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const-string v1, "mLanguage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "mLanguage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->g:Lcom/etermax/gamescommon/language/Language;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    const v0, 0x7f0a01c3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->i:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a0358

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->j:Landroid/widget/EditText;

    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a/f;->i()V

    .line 80
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->k:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/f;->a(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/a/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->l:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->l:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a/f;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 68
    return-void
.end method
