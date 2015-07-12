.class public Lcom/etermax/gamescommon/social/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static g:Landroid/support/v4/app/FragmentActivity;

.field private static h:Lcom/etermax/gamescommon/social/c;


# instance fields
.field protected a:Lcom/etermax/tools/b/a;

.field protected b:Lcom/etermax/tools/social/a/b;

.field protected c:Lcom/etermax/gamescommon/login/datasource/c;

.field protected d:Lcom/etermax/gamescommon/login/datasource/a;

.field protected e:Lcom/etermax/gamescommon/e;

.field protected f:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/social/a;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/a;->e()V

    return-void
.end method

.method static synthetic d()Lcom/etermax/gamescommon/social/c;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/etermax/gamescommon/social/a;->h:Lcom/etermax/gamescommon/social/c;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 102
    sget-object v0, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/social/a$1;

    sget-object v1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/social/a;->b:Lcom/etermax/tools/social/a/b;

    iget-object v4, p0, Lcom/etermax/gamescommon/social/a;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v5, p0, Lcom/etermax/gamescommon/social/a;->d:Lcom/etermax/gamescommon/login/datasource/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/social/a$1;-><init>(Lcom/etermax/gamescommon/social/a;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;)V

    sget-object v1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/social/a$1;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/etermax/o;->facebook_not_logged_in:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->login:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/etermax/o;->no_thanks:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/etermax/gamescommon/social/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/social/a;)Lcom/etermax/gamescommon/social/b;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "display_fb_login"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/b;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    sput-object p1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    .line 170
    sput-object p2, Lcom/etermax/gamescommon/social/a;->h:Lcom/etermax/gamescommon/social/c;

    .line 171
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/a;->e()V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/a;->a()V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/a;->b()V

    goto :goto_0

    .line 182
    :cond_2
    sget-object v0, Lcom/etermax/gamescommon/social/a;->h:Lcom/etermax/gamescommon/social/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->a()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    const-wide/32 v2, 0x240c8400

    .line 189
    iget-object v4, p0, Lcom/etermax/gamescommon/social/a;->e:Lcom/etermax/gamescommon/e;

    sget-object v5, Lcom/etermax/gamescommon/g;->t:Lcom/etermax/gamescommon/g;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;J)J

    move-result-wide v4

    .line 190
    sub-long v4, v0, v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/etermax/gamescommon/social/a;->e:Lcom/etermax/gamescommon/e;

    sget-object v3, Lcom/etermax/gamescommon/g;->t:Lcom/etermax/gamescommon/g;

    invoke-virtual {v2, v3, v0, v1}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;J)V

    .line 192
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a;->b:Lcom/etermax/tools/social/a/b;

    const/4 v1, 0x1

    new-instance v2, Lcom/etermax/gamescommon/social/a$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/etermax/gamescommon/social/a$2;-><init>(Lcom/etermax/gamescommon/social/a;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;ZLcom/etermax/tools/social/a/g;)V

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-interface {p3}, Lcom/etermax/gamescommon/social/d;->a()V

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {p3}, Lcom/etermax/gamescommon/social/d;->a()V

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 162
    sget-object v0, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/etermax/o;->facebook_not_linked:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/etermax/o;->app_name:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->link:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/etermax/gamescommon/social/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/social/a;)Lcom/etermax/gamescommon/social/b;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "display_fb_link"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/b;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    sput-object v0, Lcom/etermax/gamescommon/social/a;->g:Landroid/support/v4/app/FragmentActivity;

    .line 225
    sput-object v0, Lcom/etermax/gamescommon/social/a;->h:Lcom/etermax/gamescommon/social/c;

    .line 226
    return-void
.end method
