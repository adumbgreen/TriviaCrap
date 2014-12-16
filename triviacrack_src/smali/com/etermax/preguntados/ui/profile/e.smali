.class public Lcom/etermax/preguntados/ui/profile/e;
.super Lcom/etermax/gamescommon/profile/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/profile/ui/a",
        "<",
        "Lcom/etermax/preguntados/ui/profile/f;",
        ">;"
    }
.end annotation


# instance fields
.field n:J

.field o:Ljava/lang/String;

.field protected p:Lcom/etermax/preguntados/datasource/d;

.field protected q:Lcom/etermax/preguntados/c/a/b;

.field protected r:Landroid/widget/ImageView;

.field protected s:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

.field protected t:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

.field protected u:Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

.field protected v:Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;

.field private w:Z

.field private x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

.field private y:Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/a;-><init>()V

    .line 79
    return-void
.end method

.method public static a(JLjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/etermax/preguntados/ui/profile/g;->z()Lcom/etermax/preguntados/ui/profile/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/profile/h;->a(J)Lcom/etermax/preguntados/ui/profile/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/profile/h;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/profile/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/profile/h;->a()Lcom/etermax/preguntados/ui/profile/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/e;)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    return-object p1
.end method

.method private a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 394
    new-instance v0, Lcom/etermax/gamescommon/b/v;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/v;-><init>()V

    .line 396
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/v;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 397
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/v;->a(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 400
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    new-instance v0, Lcom/etermax/preguntados/ui/profile/e$5;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/profile/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/profile/e$5;-><init>(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 347
    invoke-virtual {v0, p0}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/gamescommon/profile/ui/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/gamescommon/profile/ui/h;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/profile/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 164
    if-eqz p1, :cond_1

    .line 165
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/e;->w:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setVisibility(I)V

    .line 182
    :goto_1
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/profile/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/profile/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/profile/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/etermax/preguntados/ui/profile/e$4;

    invoke-direct {v1, p0, v0}, Lcom/etermax/preguntados/ui/profile/e$4;-><init>(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/preguntados/ui/profile/e$4;->a(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/etermax/gamescommon/profile/ui/b;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->q()Lcom/etermax/preguntados/ui/profile/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->q()Lcom/etermax/preguntados/ui/profile/f;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 309
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getConsultedUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setId(Ljava/lang/Long;)V

    .line 312
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 313
    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 314
    return-void
.end method

.method public m()V
    .locals 6

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getConsultedUserId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/etermax/gamescommon/b/g;->d:Lcom/etermax/gamescommon/b/g;

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->a(Landroid/content/Context;JLjava/lang/String;ZLcom/etermax/gamescommon/b/g;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/e;->startActivity(Landroid/content/Intent;)V

    .line 356
    :cond_0
    return-void
.end method

.method public n()V
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getConsultedUserId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/e;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getConsultedUserId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 367
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/profile/e;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 381
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 386
    const-string v0, "RESULT_INTENT_BLOCKED_USERS_REMAINING"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 387
    if-eq v0, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setBlockedCount(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/a;->onResume()V

    .line 300
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->s()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/e;->z()V

    goto :goto_0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/e;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public q()Lcom/etermax/preguntados/ui/profile/f;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/etermax/preguntados/ui/profile/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/profile/e$1;-><init>(Lcom/etermax/preguntados/ui/profile/e;)V

    return-object v0
.end method

.method public r()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/profile/e;->n:J

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/e;->w:Z

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->profile_category_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->y:Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;

    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->s:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    sget v1, Lcom/etermax/h;->section_header_aqua:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setSectionBackground(I)V

    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->s:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    sget v1, Lcom/etermax/o;->challenge_performance:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setSectionText(I)V

    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/e$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/e$2;-><init>(Lcom/etermax/preguntados/ui/profile/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->u:Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/e$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/e$3;-><init>(Lcom/etermax/preguntados/ui/profile/e;)V

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-direct {p0, v4}, Lcom/etermax/preguntados/ui/profile/e;->a(Z)V

    .line 127
    return-void

    .line 105
    :cond_0
    iput-boolean v4, p0, Lcom/etermax/preguntados/ui/profile/e;->w:Z

    goto :goto_0
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->x()V

    .line 155
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->y()V

    .line 156
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->u()V

    .line 157
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->t()V

    .line 158
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->v()V

    .line 159
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->w()V

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/profile/e;->a(Z)V

    .line 161
    return-void
.end method

.method protected t()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getRankings()Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getRankings()Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;->getPodium()Lcom/etermax/preguntados/datasource/dto/PodiumDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->v:Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getRankings()Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;->getPodium()Lcom/etermax/preguntados/datasource/dto/PodiumDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->setRankings(Lcom/etermax/preguntados/datasource/dto/PodiumDTO;)V

    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->v:Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/e;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getLevel()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->u:Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->u:Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getLevel()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V

    .line 198
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->u:Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->y:Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getCategory_question()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->q:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a(Ljava/util/List;Lcom/etermax/preguntados/c/a/b;)V

    .line 205
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->y:Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->setVisibility(I)V

    .line 206
    return-void
.end method

.method protected w()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/e;->w:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->i:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setVisibility(I)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getChallenges()Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->s:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;->getWon()I

    move-result v2

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;->getLost()I

    move-result v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a(IIZ)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->t:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    sget v1, Lcom/etermax/h;->section_header_grana:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setSectionBackground(I)V

    .line 222
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->t:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    sget v1, Lcom/etermax/o;->group_challenge_performance:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setSectionText(I)V

    .line 223
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->t:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getDuelGamesWon()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getDuelGamesLost()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a(IIZ)V

    .line 224
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->i:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getVersus()Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;->getWon()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getVersus()Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;->getLost()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a(II)V

    goto :goto_0
.end method

.method protected x()V
    .locals 6

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    sget v1, Lcom/etermax/i;->location:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    sget v1, Lcom/etermax/i;->age:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->showFacebookName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setName(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setSmallName(Ljava/lang/String;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    sget v1, Lcom/etermax/i;->level:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getLevel()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getLevel()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getLast_play_date()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getLast_play_date()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 249
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/etermax/tools/j/d;->a(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->time_ago:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Ljava/lang/String;Z)V

    .line 255
    :goto_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getFriends()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setFriendsCount(I)V

    .line 256
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getBlocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setBlockedCount(I)V

    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getLanguageGames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getLanguageGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;

    .line 262
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;->getLanguage()Lcom/etermax/gamescommon/language/Language;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/etermax/preguntados/ui/profile/e;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v3

    sget-object v4, Lcom/etermax/tools/nationality/Nationality;->PT:Lcom/etermax/tools/nationality/Nationality;

    if-eq v3, v4, :cond_3

    .line 263
    sget-object v3, Lcom/etermax/gamescommon/language/Language;->PT_BR:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;->getQuantity()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :goto_4
    return-void

    .line 236
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setUsernameWithArroba(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->no_games:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 265
    :cond_3
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;->getLanguage()Lcom/etermax/gamescommon/language/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;->getQuantity()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setFlags(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected y()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    invoke-virtual {v0, v4, v5}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setWon(J)V

    .line 281
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    invoke-virtual {v0, v4, v5}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setLooses(J)V

    .line 282
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setResigned(I)V

    .line 295
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getGames_won()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setWon(J)V

    .line 286
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getGames_lost()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setLooses(J)V

    .line 287
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getGames_lost()I

    move-result v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getGames_won()I

    move-result v2

    add-int/2addr v0, v2

    int-to-long v2, v0

    .line 289
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->x:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getGames_resigned()I

    move-result v0

    int-to-float v0, v0

    long-to-float v2, v2

    div-float/2addr v0, v2

    .line 291
    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 293
    :goto_1
    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setResigned(I)V

    .line 294
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
