.class public final Lcom/etermax/preguntados/ui/game/question/i;
.super Lcom/etermax/preguntados/ui/game/question/h;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private A:Landroid/os/Handler;

.field private final y:Lorg/a/a/b/c;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/h;-><init>()V

    .line 40
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->y:Lorg/a/a/b/c;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->A:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 80
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/i;->j()V

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->h:Lcom/etermax/gamescommon/e;

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->g:Lcom/etermax/preguntados/c/a/b;

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->f:Lcom/etermax/preguntados/ui/d/i;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->e:Lcom/etermax/tools/f/a;

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->j:Lcom/etermax/preguntados/ui/withoutcoins/g;

    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->c:Lcom/etermax/preguntados/ui/game/a/a;

    .line 88
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->b:Lcom/etermax/preguntados/datasource/d;

    .line 89
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->i:Lcom/etermax/preguntados/e/c;

    .line 90
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->d:Lcom/etermax/preguntados/g/a;

    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->b()V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/i;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/c;->a(J)V

    return-void
.end method

.method public static i()Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/question/j;-><init>(Lcom/etermax/preguntados/ui/game/question/i$1;)V

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_c

    .line 172
    const-string v0, "mHeaderColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "mHeaderColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->q:I

    .line 175
    :cond_0
    const-string v0, "mGameId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "mGameId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/etermax/preguntados/ui/game/question/i;->k:J

    .line 178
    :cond_1
    const-string v0, "mQuestionsCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "mQuestionsCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->n:I

    .line 181
    :cond_2
    const-string v0, "mUsedPowerUps"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string v0, "mUsedPowerUps"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->s:Ljava/util/ArrayList;

    .line 184
    :cond_3
    const-string v0, "mSpinType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    const-string v0, "mSpinType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    .line 187
    :cond_4
    const-string v0, "mTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    const-string v0, "mTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->p:Ljava/lang/String;

    .line 190
    :cond_5
    const-string v0, "mCountDownElapsedTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    const-string v0, "mCountDownElapsedTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/etermax/preguntados/ui/game/question/i;->t:J

    .line 193
    :cond_6
    const-string v0, "mDuelModeTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    const-string v0, "mDuelModeTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->m:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 196
    :cond_7
    const-string v0, "mGameType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 197
    const-string v0, "mGameType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 199
    :cond_8
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 202
    :cond_9
    const-string v0, "mQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 203
    const-string v0, "mQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 205
    :cond_a
    const-string v0, "mUsername"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 206
    const-string v0, "mUsername"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->x:Ljava/lang/String;

    .line 208
    :cond_b
    const-string v0, "mFacebookId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 209
    const-string v0, "mFacebookId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->w:Ljava/lang/String;

    .line 212
    :cond_c
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->A:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/game/question/i$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/i$5;-><init>(Lcom/etermax/preguntados/ui/game/question/i;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    const v0, 0x7f0a0291

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/i$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/i$1;-><init>(Lcom/etermax/preguntados/ui/game/question/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    const v0, 0x7f0a028b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/i$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/i$2;-><init>(Lcom/etermax/preguntados/ui/game/question/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_1
    const v0, 0x7f0a028e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/i$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/i$3;-><init>(Lcom/etermax/preguntados/ui/game/question/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_2
    const v0, 0x7f0a0294

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/i$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/question/i$4;-><init>(Lcom/etermax/preguntados/ui/game/question/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/i;->c()V

    .line 167
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->z:Landroid/view/View;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->z:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->y:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 60
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/i;->a(Landroid/os/Bundle;)V

    .line 61
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/h;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->z:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->z:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/i;->y:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 98
    return-void
.end method
