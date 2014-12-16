.class public final Lcom/etermax/preguntados/ui/newgame/i;
.super Lcom/etermax/preguntados/ui/newgame/g;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final h:Lorg/a/a/b/c;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/g;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->h:Lorg/a/a/b/c;

    .line 120
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 57
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/i;->e()V

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->d:Lcom/etermax/preguntados/datasource/d;

    .line 59
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/i;->b(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "roomDTO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    .line 116
    const-string v0, "timeToClose"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->b:J

    .line 117
    const-string v0, "firstInit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->c:Z

    goto :goto_0
.end method

.method public static d()Lcom/etermax/preguntados/ui/newgame/j;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/newgame/j;-><init>(Lcom/etermax/preguntados/ui/newgame/i$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "mSelectedLanguage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "mSelectedLanguage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->e:Lcom/etermax/gamescommon/language/Language;

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const v0, 0x7f0a0565

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->f:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0564

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->g:Landroid/view/View;

    .line 77
    const v0, 0x7f0a0560

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/i$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/i$1;-><init>(Lcom/etermax/preguntados/ui/newgame/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/i;->b()V

    .line 92
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/i;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/g;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->i:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 50
    const v0, 0x7f03014b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->i:Landroid/view/View;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->i:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "roomDTO"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/i;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    const-string v0, "timeToClose"

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/newgame/i;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    const-string v0, "firstInit"

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/newgame/i;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/i;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    return-void
.end method
