.class public Lcom/etermax/preguntados/ui/newgame/duelmode/f;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/a/a;
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/g;",
        ">;",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/a/a;",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/r;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/gamescommon/login/datasource/a;

.field c:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

.field d:Lcom/etermax/gamescommon/e;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;

.field private i:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

.field private l:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 80
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->g()Lcom/etermax/preguntados/ui/newgame/duelmode/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/newgame/duelmode/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a()Lcom/etermax/preguntados/ui/newgame/duelmode/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 342
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMinPlayers()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMaxPlayers()I

    move-result v1

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->count_friends_group_challenge_alert:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 356
    :goto_0
    return-void

    .line 347
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 349
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 350
    new-instance v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>(Ljava/lang/Long;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 353
    :cond_3
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b(Ljava/util/ArrayList;)V

    .line 354
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/duelmode/g;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/g;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 361
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 366
    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->d:Lcom/etermax/gamescommon/e;

    const-string v3, "last_participants"

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->l:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 151
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v5, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 152
    :goto_1
    new-instance v5, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;

    invoke-direct {v5, v0, v2, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;-><init>(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;IZ)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v2

    .line 151
    goto :goto_1

    .line 154
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v1, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v1, v3, v2, v2}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;IZ)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->l:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    invoke-direct {v1, v2, v0, v3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;)V

    iput-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    .line 158
    return-void
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 374
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 376
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIsAppUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_1
    return-object v1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$4;->a(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->new_duel_mode_search_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 202
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->new_duel_mode_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 204
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h:Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 217
    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/newgame/duelmode/a/a;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->i:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    .line 221
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k()V

    .line 222
    return-void
.end method

.method private j()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setId(Ljava/lang/Long;)V

    .line 227
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setUsername(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_id(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_name(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFb_show_name(Z)V

    .line 231
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFb_show_picture(Z)V

    .line 233
    return-object v0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 239
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v6, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 240
    :goto_1
    new-instance v6, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;

    invoke-direct {v6, v0, v3, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;-><init>(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;IZ)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v3

    .line 239
    goto :goto_1

    .line 242
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v1, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v1, v4, v3, v2}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;IZ)V

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMaxPlayers()I

    move-result v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->i:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/etermax/preguntados/ui/newgame/duelmode/a/c;)V

    iput-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h:Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;

    .line 247
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/duelmode/g;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/f$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)V

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->new_duel_mode_search_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 253
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 254
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 256
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 257
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 262
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMaxPlayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k()V

    .line 265
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h()V

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 268
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->notifyDataSetChanged()V

    .line 308
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/tools/widget/a/g;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/g",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 319
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    :goto_0
    if-eqz v0, :cond_1

    .line 325
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h:Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->a(Lcom/etermax/tools/widget/a/g;)V

    .line 328
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h:Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->notifyDataSetChanged()V

    .line 329
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->m:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    invoke-virtual {v0, p0, p1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V

    .line 297
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->b(Ljava/util/List;)V

    .line 195
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->i()V

    .line 197
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h()V

    .line 198
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->m:Z

    .line 274
    const-string v1, ""

    .line 275
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->new_duel_mode_search_edittext:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 276
    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->m:Z

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    .line 282
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->notifyDataSetChanged()V

    .line 291
    return-void

    .line 284
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    invoke-virtual {v1, p0, v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->i()V

    .line 139
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h()V

    .line 140
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->k()V

    .line 143
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->h()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Ljava/util/ArrayList;)V

    .line 334
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Ljava/util/ArrayList;)V

    .line 339
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/duelmode/g;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->j:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 386
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a()Lcom/etermax/preguntados/ui/newgame/duelmode/g;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    sget v0, Lcom/etermax/k;->new_duel_mode_players_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    sget v0, Lcom/etermax/i;->new_duel_header_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v0, Lcom/etermax/i;->new_duel_mode_search_edittext:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 114
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/f$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$2;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    sget v1, Lcom/etermax/i;->new_duel_mode_search_clear_button:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/etermax/preguntados/ui/newgame/duelmode/f$3;

    invoke-direct {v3, p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f$3;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/f;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object v2
.end method
