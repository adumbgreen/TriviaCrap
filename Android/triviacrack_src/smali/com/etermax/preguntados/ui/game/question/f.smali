.class public final Lcom/etermax/preguntados/ui/game/question/f;
.super Lcom/etermax/preguntados/ui/game/question/c;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final w:Lorg/a/a/b/c;

.field private x:Landroid/view/View;

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;-><init>()V

    .line 40
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->w:Lorg/a/a/b/c;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->y:Landroid/os/Handler;

    .line 220
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 78
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/f;->j()V

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->f:Lcom/etermax/preguntados/ui/d/i;

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->h:Lcom/etermax/gamescommon/e;

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->e:Lcom/etermax/tools/f/a;

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->j:Lcom/etermax/preguntados/ui/withoutcoins/g;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->d:Lcom/etermax/preguntados/g/a;

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->g:Lcom/etermax/preguntados/c/a/b;

    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->i:Lcom/etermax/preguntados/e/c;

    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->b:Lcom/etermax/preguntados/datasource/d;

    .line 88
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->c:Lcom/etermax/preguntados/ui/game/a/a;

    .line 89
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->b()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/f;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c;->a(J)V

    return-void
.end method

.method public static i()Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/question/g;-><init>(Lcom/etermax/preguntados/ui/game/question/f$1;)V

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_a

    .line 170
    const-string v0, "mCountDownElapsedTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "mCountDownElapsedTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/etermax/preguntados/ui/game/question/f;->t:J

    .line 173
    :cond_0
    const-string v0, "mDuelModeTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "mDuelModeTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->m:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 176
    :cond_1
    const-string v0, "mGameId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    const-string v0, "mGameId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/etermax/preguntados/ui/game/question/f;->k:J

    .line 179
    :cond_2
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 182
    :cond_3
    const-string v0, "mTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    const-string v0, "mTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->p:Ljava/lang/String;

    .line 185
    :cond_4
    const-string v0, "mGameType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    const-string v0, "mGameType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 188
    :cond_5
    const-string v0, "mQuestionsCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    const-string v0, "mQuestionsCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->n:I

    .line 191
    :cond_6
    const-string v0, "mUsedPowerUps"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    const-string v0, "mUsedPowerUps"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->s:Ljava/util/ArrayList;

    .line 194
    :cond_7
    const-string v0, "mSpinType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    const-string v0, "mSpinType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    .line 197
    :cond_8
    const-string v0, "mQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    const-string v0, "mQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 200
    :cond_9
    const-string v0, "mHeaderColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    const-string v0, "mHeaderColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->q:I

    .line 204
    :cond_a
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/game/question/f$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/f$5;-><init>(Lcom/etermax/preguntados/ui/game/question/f;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    const v0, 0x7f0a0291

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/f$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/f$1;-><init>(Lcom/etermax/preguntados/ui/game/question/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    const v0, 0x7f0a028b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/f$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/f$2;-><init>(Lcom/etermax/preguntados/ui/game/question/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_1
    const v0, 0x7f0a028e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/f$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/f$3;-><init>(Lcom/etermax/preguntados/ui/game/question/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_2
    const v0, 0x7f0a0294

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/f$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/f$4;-><init>(Lcom/etermax/preguntados/ui/game/question/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/f;->c()V

    .line 165
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->x:Landroid/view/View;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->w:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/f;->a(Landroid/os/Bundle;)V

    .line 59
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->x:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->x:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f;->w:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 96
    return-void
.end method
