.class public final Lcom/etermax/gamescommon/menu/a/j;
.super Lcom/etermax/gamescommon/menu/a/d;
.source "SourceFile"


# static fields
.field private static f:Lcom/etermax/gamescommon/menu/a/j;


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/d;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/j;->e:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;
    .locals 3
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/etermax/gamescommon/menu/a/j;->f:Lcom/etermax/gamescommon/menu/a/j;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/etermax/gamescommon/menu/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/menu/a/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/menu/a/j;->f:Lcom/etermax/gamescommon/menu/a/j;

    .line 30
    sget-object v1, Lcom/etermax/gamescommon/menu/a/j;->f:Lcom/etermax/gamescommon/menu/a/j;

    invoke-direct {v1}, Lcom/etermax/gamescommon/menu/a/j;->m()V

    .line 31
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/menu/a/j;->f:Lcom/etermax/gamescommon/menu/a/j;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->c:Lcom/etermax/gamescommon/datasource/a;

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/e/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->b:Lcom/etermax/gamescommon/e/a;

    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->a:Lcom/etermax/gamescommon/datasource/e;

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/j;->d:Lcom/etermax/gamescommon/notification/d;

    .line 41
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/j;->a()V

    .line 42
    return-void
.end method
