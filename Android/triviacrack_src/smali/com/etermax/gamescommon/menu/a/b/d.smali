.class public final Lcom/etermax/gamescommon/menu/a/b/d;
.super Lcom/etermax/gamescommon/menu/a/b/c;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private a:Z

.field private final b:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/c;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/d;->a:Z

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/d;->b:Lorg/a/a/b/c;

    .line 32
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/b/d;->a()V

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/c;
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/d;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/d;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/d;->onFinishInflate()V

    .line 38
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/d;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 61
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/d;->a:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/d;->a:Z

    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008d

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/a/b/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/d;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/b/c;->onFinishInflate()V

    .line 56
    return-void
.end method
