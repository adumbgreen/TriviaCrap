.class public Lcom/etermax/gamescommon/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:[Lcom/etermax/gamescommon/menu/navigation/e;


# instance fields
.field a:Landroid/support/v4/app/FragmentActivity;

.field b:Lcom/etermax/gamescommon/menu/a/m;

.field c:Lcom/etermax/gamescommon/datasource/e;

.field d:Lcom/etermax/gamescommon/menu/a/d;

.field e:Lcom/etermax/tools/f/a;

.field f:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

.field g:Lcom/etermax/gamescommon/menu/a/a;

.field h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 100
    const/16 v0, 0xd

    new-array v7, v0, [Lcom/etermax/gamescommon/menu/navigation/e;

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->a:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v2, Lcom/etermax/gamescommon/b/n;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v0, v7, v6

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->d:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v2, Lcom/etermax/gamescommon/b/n;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v0, v7, v4

    const/4 v0, 0x2

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->e:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v7, v0

    const/4 v0, 0x3

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->f:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->n:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v7, v0

    const/4 v0, 0x4

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->b:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v7, v0

    const/4 v0, 0x5

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->c:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->h:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->o:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v7, v0

    const/4 v0, 0x7

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    invoke-direct {v1, v2, v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Z)V

    aput-object v1, v7, v0

    const/16 v8, 0x8

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v2, "com.etermax.preguntados."

    sget v3, Lcom/etermax/o;->preguntados_app_name:I

    sget v4, Lcom/etermax/h;->dashboard_games_preguntados:I

    sget-object v5, Lcom/etermax/gamescommon/b/n;->s:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v2, "com.etermax.triviafans.fcb."

    sget v3, Lcom/etermax/o;->fcbarcelona_app_name:I

    sget v4, Lcom/etermax/h;->dashboard_games_fcbarcelona:I

    sget-object v5, Lcom/etermax/gamescommon/b/n;->t:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v2, "com.etermax.bingocrack."

    sget v3, Lcom/etermax/o;->bingocrack_app_name:I

    sget v4, Lcom/etermax/h;->dashboard_games_bingocrack:I

    sget-object v5, Lcom/etermax/gamescommon/b/n;->r:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v2, "com.etermax.wordcrack."

    sget v3, Lcom/etermax/o;->wordcrack_app_name:I

    sget v4, Lcom/etermax/h;->dashboard_games_mezcladitos:I

    sget-object v5, Lcom/etermax/gamescommon/b/n;->p:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v2, "com.etermax.apalabrados."

    sget v3, Lcom/etermax/o;->apalabrados_app_name:I

    sget v4, Lcom/etermax/h;->dashboard_games_apalabrados:I

    sget-object v5, Lcom/etermax/gamescommon/b/n;->q:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v0, v7, v8

    sput-object v7, Lcom/etermax/gamescommon/menu/a;->i:[Lcom/etermax/gamescommon/menu/navigation/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a;->h:Landroid/os/Handler;

    .line 90
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenusHelper debe ser inyectado en un Activity que extienda de FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/etermax/tools/navigation/f;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenusHelper debe ser inyectado en un Activity que implemente SlidingMenusHost"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/b;)V
    .locals 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a$1;-><init>(Lcom/etermax/gamescommon/menu/a;Lcom/etermax/gamescommon/menu/b;)V

    new-instance v2, Lcom/etermax/gamescommon/menu/a$2;

    invoke-direct {v2, p0, p1}, Lcom/etermax/gamescommon/menu/a$2;-><init>(Lcom/etermax/gamescommon/menu/a;Lcom/etermax/gamescommon/menu/b;)V

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/a;->a(Landroid/content/Context;Lcom/etermax/gamescommon/menu/a/b;Lcom/etermax/gamescommon/menu/a/c;)Lcom/etermax/gamescommon/menu/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    .line 273
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    invoke-interface {v0, v1, v2}, Lcom/etermax/tools/navigation/f;->b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 274
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/etermax/gamescommon/menu/navigation/d;Lcom/etermax/gamescommon/menu/c;[Lcom/etermax/gamescommon/menu/navigation/e;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$3;

    invoke-direct {v1, p0, p3}, Lcom/etermax/gamescommon/menu/a$3;-><init>(Lcom/etermax/gamescommon/menu/a;Lcom/etermax/gamescommon/menu/c;)V

    invoke-static {v0, p4, p2, v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Landroid/support/v4/app/FragmentActivity;[Lcom/etermax/gamescommon/menu/navigation/e;Lcom/etermax/gamescommon/menu/navigation/d;Lcom/etermax/gamescommon/menu/navigation/b;)Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a;->f:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    .line 333
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a;->f:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/etermax/tools/navigation/f;->a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 334
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a;->d()V

    .line 338
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a;->c()V

    .line 339
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->f:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->f:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a()V

    .line 345
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a;->a()V

    .line 351
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a;->g:Lcom/etermax/gamescommon/menu/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a;->b()V

    .line 357
    :cond_0
    return-void
.end method
