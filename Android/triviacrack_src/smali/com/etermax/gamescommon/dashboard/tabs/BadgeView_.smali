.class public final Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;
.super Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private b:Z

.field private final c:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->b:Z

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->c:Lorg/a/a/b/c;

    .line 37
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->b:Z

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->c:Lorg/a/a/b/c;

    .line 32
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/dashboard/tabs/c;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/dashboard/tabs/c;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->a:Lcom/etermax/gamescommon/dashboard/tabs/a;

    .line 70
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 71
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->b:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->b:Z

    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->onFinishInflate()V

    .line 65
    return-void
.end method
