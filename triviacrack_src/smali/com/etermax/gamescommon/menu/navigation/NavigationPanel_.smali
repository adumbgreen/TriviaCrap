.class public final Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;
.super Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private b:Z

.field private final c:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b:Z

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->c:Lorg/a/a/b/c;

    .line 33
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b:Z

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->c:Lorg/a/a/b/c;

    .line 38
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b:Z

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->c:Lorg/a/a/b/c;

    .line 43
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b()V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;
    .locals 1
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->onFinishInflate()V

    .line 49
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->a:Lcom/etermax/tools/f/a;

    .line 71
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 72
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->b:Z

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->onFinishInflate()V

    .line 66
    return-void
.end method
