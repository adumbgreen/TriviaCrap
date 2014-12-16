.class public Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/tvshow/a/b;
.implements Lcom/etermax/preguntados/ui/tvshow/h;
.implements Lcom/etermax/preguntados/ui/tvshow/m;


# instance fields
.field protected a:I

.field b:Lcom/etermax/preguntados/datasource/d;

.field c:Lcom/etermax/gamescommon/login/datasource/a;

.field protected d:J

.field protected e:I

.field protected f:Landroid/os/Handler;

.field protected g:Landroid/content/SharedPreferences;

.field protected h:Ljava/lang/Runnable;

.field private i:Lcom/etermax/preguntados/ui/tvshow/c;

.field private j:Lcom/etermax/preguntados/ui/tvshow/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    .line 127
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$2;-><init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->j:Lcom/etermax/preguntados/ui/tvshow/c;

    .line 290
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$5;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$5;-><init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/tvshow/f;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x3

    :cond_0
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/tvshow/f;->a(I)Lcom/etermax/preguntados/ui/tvshow/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/f;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_waiting_question"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)Lcom/etermax/preguntados/ui/tvshow/g;

    move-result-object v0

    .line 218
    const/4 v1, 0x0

    const-string v2, "fragment_tv_question"

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 219
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->l()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V

    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/a/b;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 181
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 196
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :sswitch_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->j()V

    goto :goto_0

    .line 186
    :sswitch_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->l()V

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->k()V

    goto :goto_0

    .line 192
    :sswitch_3
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->m()V

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x11a -> :sswitch_1
        0xbc3 -> :sswitch_2
        0xbc4 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Lcom/etermax/preguntados/datasource/a/b;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Lcom/etermax/preguntados/datasource/a/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->n()V

    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 138
    invoke-static {p0}, Lcom/etermax/a/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->d:J

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->e:I

    .line 141
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;-><init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->f()V

    goto :goto_0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/a/a;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 206
    return-void
.end method

.method private l()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->f()V

    .line 210
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 222
    sget v0, Lcom/etermax/o;->next_show:I

    sget v1, Lcom/etermax/o;->next_show_txt:I

    sget v2, Lcom/etermax/f;->yellow_crown:I

    sget v3, Lcom/etermax/f;->brown:I

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/tvshow/a;->a(IIII)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/a;

    .line 227
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->j:Lcom/etermax/preguntados/ui/tvshow/c;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a;->a(Lcom/etermax/preguntados/ui/tvshow/c;)V

    .line 228
    const-string v1, "fragment_participation"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 263
    sget v0, Lcom/etermax/o;->thanks_for_participating:I

    sget v1, Lcom/etermax/o;->thanks_for_participating_txt_plural:I

    sget v2, Lcom/etermax/f;->black:I

    sget v3, Lcom/etermax/f;->white:I

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/tvshow/a;->a(IIII)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/a;

    .line 268
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a;->a(Lcom/etermax/preguntados/ui/tvshow/c;)V

    .line 269
    const-string v1, "fragment_participation"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 270
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/g;->b()Lcom/etermax/preguntados/ui/tvshow/g;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;-><init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->a(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method protected a(J)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/AnswerDTO;JI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-wide p2, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->d:J

    .line 100
    iput p4, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->e:I

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->j()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ShowDTO;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(ILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V

    .line 102
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->g:Landroid/content/SharedPreferences;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->f:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method protected b(J)V
    .locals 2
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tv_question_id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_waiting_question"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/l;

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/l;->b()Lcom/etermax/preguntados/ui/tvshow/l;

    move-result-object v0

    .line 92
    const-string v1, "fragment_waiting_question"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->i()V

    .line 95
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->n()V

    .line 107
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/g;->b()Lcom/etermax/preguntados/ui/tvshow/g;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    const-string v2, "fragment_tv_question"

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 276
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(J)V

    .line 284
    return-void
.end method

.method protected h()J
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->g:Landroid/content/SharedPreferences;

    const-string v1, "tv_question_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onPause()V

    .line 73
    return-void
.end method
