.class public final Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;
.super Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private d:Z

.field private final e:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->d:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->e:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->c()V

    .line 43
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 71
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const v0, 0x7f0a0105

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->b:Lcom/etermax/tools/widget/RoundedRelativeLayout;

    .line 83
    const v0, 0x7f0a0106

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->a:Landroid/widget/ProgressBar;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->b()V

    .line 85
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->d:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->d:Z

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030051

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->onFinishInflate()V

    .line 66
    return-void
.end method
