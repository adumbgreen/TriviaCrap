.class public final Lcom/etermax/preguntados/ui/game/question/m;
.super Lcom/etermax/preguntados/ui/game/question/k;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final r:Lorg/a/a/b/c;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/k;-><init>()V

    .line 34
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->r:Lorg/a/a/b/c;

    .line 216
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 69
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/m;->j()V

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->b:Lcom/etermax/preguntados/g/a;

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->e:Lcom/etermax/preguntados/e/c;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->g:Lcom/etermax/preguntados/ui/withoutcoins/g;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->d:Lcom/etermax/preguntados/c/a/b;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->f:Lcom/etermax/preguntados/sharing/m;

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->a:Lcom/etermax/preguntados/datasource/d;

    .line 76
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->c:Lcom/etermax/preguntados/ui/game/a/a;

    .line 77
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/m;->b(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, "mHasReportedQuestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->q:Z

    goto :goto_0
.end method

.method public static i()Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/question/n;-><init>(Lcom/etermax/preguntados/ui/game/question/m$1;)V

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_8

    .line 173
    const-string v0, "mQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "mQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 176
    :cond_0
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->p:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 179
    :cond_1
    const-string v0, "mUsedPowerUps"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "mUsedPowerUps"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->o:Ljava/util/ArrayList;

    .line 182
    :cond_2
    const-string v0, "mDuelModeTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    const-string v0, "mDuelModeTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->i:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 185
    :cond_3
    const-string v0, "mSelectedAnswer"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    const-string v0, "mSelectedAnswer"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->l:Ljava/lang/Integer;

    .line 188
    :cond_4
    const-string v0, "mHeaderColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    const-string v0, "mHeaderColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->n:I

    .line 191
    :cond_5
    const-string v0, "mGameType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    const-string v0, "mGameType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->h:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 194
    :cond_6
    const-string v0, "mTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    const-string v0, "mTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->m:Ljava/lang/String;

    .line 197
    :cond_7
    const-string v0, "mQuestionsCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    const-string v0, "mQuestionsCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->j:I

    .line 201
    :cond_8
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    const v0, 0x7f0a02b4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/m$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/m$1;-><init>(Lcom/etermax/preguntados/ui/game/question/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_0
    const v0, 0x7f0a02b2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/m$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/m$2;-><init>(Lcom/etermax/preguntados/ui/game/question/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_1
    const v0, 0x7f0a02b3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/m$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/m$3;-><init>(Lcom/etermax/preguntados/ui/game/question/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_2
    const v0, 0x7f0a02b0

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/m$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/m$4;-><init>(Lcom/etermax/preguntados/ui/game/question/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_3
    const v0, 0x7f0a0113

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/m$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/m$5;-><init>(Lcom/etermax/preguntados/ui/game/question/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_4
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/m;->b()V

    .line 168
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->s:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->r:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/m;->a(Landroid/os/Bundle;)V

    .line 50
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/k;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->s:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->s:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    const-string v0, "mHasReportedQuestion"

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/game/question/m;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/m;->r:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 84
    return-void
.end method
