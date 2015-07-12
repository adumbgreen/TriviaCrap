.class public final Lcom/etermax/gamescommon/user/UserInfoAvatarView_;
.super Lcom/etermax/gamescommon/user/UserInfoAvatarView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private l:Z

.field private final m:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->l:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->m:Lorg/a/a/b/c;

    .line 50
    invoke-direct {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->a()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->l:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->m:Lorg/a/a/b/c;

    .line 45
    invoke-direct {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->a()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->l:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->m:Lorg/a/a/b/c;

    .line 40
    invoke-direct {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->a()V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;
    .locals 1
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->onFinishInflate()V

    .line 91
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->m:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 78
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 79
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    const v0, 0x7f0a055b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->e:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0a0121

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->c:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a03bf

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->g:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0a01ad

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->a:Landroid/widget/ViewSwitcher;

    .line 100
    const v0, 0x7f0a0381

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->k:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0a055a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->d:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a055d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->h:Landroid/view/View;

    .line 103
    const v0, 0x7f0a0558

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->b:Landroid/view/View;

    .line 104
    const v0, 0x7f0a01dc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->j:Landroid/view/View;

    .line 105
    const v0, 0x7f0a055e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->i:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0a055c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->f:Landroid/widget/TextView;

    .line 107
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->l:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->l:Z

    .line 70
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030147

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->m:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->onFinishInflate()V

    .line 74
    return-void
.end method
