.class public abstract Lcom/etermax/gamescommon/profile/ui/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/profile/ui/j;
.implements Lcom/etermax/gamescommon/profile/ui/m;
.implements Lcom/etermax/tools/widget/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/etermax/gamescommon/profile/ui/b;",
        ">",
        "Lcom/etermax/tools/navigation/b",
        "<TT;>;",
        "Lcom/etermax/gamescommon/profile/ui/j;",
        "Lcom/etermax/gamescommon/profile/ui/m;",
        "Lcom/etermax/tools/widget/b/b;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/e;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a;

.field protected c:Lcom/etermax/tools/f/a;

.field protected d:Lcom/etermax/gamescommon/datasource/e;

.field protected e:Lcom/etermax/tools/social/a/b;

.field protected f:Lcom/etermax/gamescommon/social/a;

.field protected g:Lcom/etermax/gamescommon/profile/ui/h;

.field protected h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

.field protected i:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

.field protected j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

.field protected k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

.field protected l:Landroid/view/View;

.field protected m:Lcom/etermax/gamescommon/profile/ui/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/a;->q()V

    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$7;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/profile/ui/a$7;-><init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$7;->a(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/profile/ui/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/gamescommon/profile/ui/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/profile/ui/a$1;-><init>(Lcom/etermax/gamescommon/profile/ui/a;)V

    return-object v0
.end method

.method protected a(J)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$2;-><init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;J)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$2;->a(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/profile/ui/h;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 369
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    .line 370
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-interface {p1}, Lcom/etermax/gamescommon/profile/ui/h;->isFriend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setFriendState(Z)V

    .line 371
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-interface {p1}, Lcom/etermax/gamescommon/profile/ui/h;->getFacebookFriendsIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setFacebookFriendsIds(Ljava/util/List;)V

    .line 373
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0, p0, p1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/k;)V

    .line 375
    invoke-interface {p1}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->l:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->c()V

    .line 378
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->i:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setOwnProfile(Z)V

    .line 386
    :goto_0
    invoke-interface {p1}, Lcom/etermax/gamescommon/profile/ui/h;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->c()V

    .line 388
    :cond_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->b()V

    .line 383
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->i:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->setOwnProfile(Z)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 406
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/b/ao;->c:Lcom/etermax/gamescommon/b/ao;

    .line 407
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v1}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/gamescommon/profile/ui/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 408
    sget-object v0, Lcom/etermax/gamescommon/b/ao;->a:Lcom/etermax/gamescommon/b/ao;

    .line 413
    :cond_1
    :goto_1
    new-instance v1, Lcom/etermax/gamescommon/b/am;

    invoke-direct {v1, p1, v0}, Lcom/etermax/gamescommon/b/am;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/b/ao;)V

    .line 414
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v1}, Lcom/etermax/gamescommon/profile/ui/h;->isFriend()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    sget-object v0, Lcom/etermax/gamescommon/b/ao;->b:Lcom/etermax/gamescommon/b/ao;

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->setButtonsListener(Lcom/etermax/gamescommon/profile/ui/j;)V

    .line 97
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->c()V

    .line 98
    return-void
.end method

.method protected b(J)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$3;-><init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;J)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$3;->a(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 211
    new-instance v0, Lcom/etermax/gamescommon/profile/ui/l;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/a;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/a;->c:Lcom/etermax/tools/f/a;

    iget-object v3, p0, Lcom/etermax/gamescommon/profile/ui/a;->a:Lcom/etermax/gamescommon/e;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/etermax/gamescommon/profile/ui/l;-><init>(Landroid/view/View;Lcom/etermax/gamescommon/profile/ui/m;Lcom/etermax/tools/f/a;Lcom/etermax/gamescommon/e;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->m:Lcom/etermax/gamescommon/profile/ui/l;

    .line 213
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->l:Landroid/view/View;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$6;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$6;-><init>(Lcom/etermax/gamescommon/profile/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->d()V

    .line 228
    return-void
.end method

.method protected c(J)V
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$4;-><init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;J)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$4;->a(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method protected d(J)V
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$5;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$5;-><init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;J)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$5;->a(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/profile/ui/a;->a(J)V

    .line 238
    return-void
.end method

.method public f()V
    .locals 5

    .prologue
    .line 243
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    sget v1, Lcom/etermax/o;->are_you_sure_unfriend:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v4}, Lcom/etermax/gamescommon/profile/ui/h;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 248
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "unfriend_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Set \'username\' from Profile"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 258
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    sget v1, Lcom/etermax/o;->are_you_sure_block:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v4}, Lcom/etermax/gamescommon/profile/ui/h;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 263
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "block_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Set \'username\' from Profile"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->a()Lcom/etermax/gamescommon/profile/ui/b;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/profile/ui/a;->d(J)V

    .line 273
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->f:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/profile/ui/a$8;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/profile/ui/a$8;-><init>(Lcom/etermax/gamescommon/profile/ui/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 361
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/profile/ui/a;->a(J)V

    .line 366
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/profile/ui/a;->b(J)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->getConsultedUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/profile/ui/a;->c(J)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 423
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(IILandroid/content/Intent;)V

    .line 424
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onDestroy()V

    .line 75
    return-void
.end method
