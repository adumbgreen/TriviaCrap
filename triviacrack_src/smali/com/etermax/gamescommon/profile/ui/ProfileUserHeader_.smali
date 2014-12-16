.class public final Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;
.super Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final A:Lorg/a/a/b/c;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->z:Z

    .line 41
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->A:Lorg/a/a/b/c;

    .line 50
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->e()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->z:Z

    .line 41
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->A:Lorg/a/a/b/c;

    .line 55
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->e()V

    .line 56
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->A:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 83
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 84
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/profile/image/f;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/profile/image/f;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->y:Lcom/etermax/gamescommon/profile/image/a;

    .line 85
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/c/b;->a(Landroid/content/Context;)Lcom/etermax/tools/c/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->w:Lcom/etermax/tools/c/a;

    .line 86
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->v:Lcom/etermax/gamescommon/login/datasource/a;

    .line 87
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    const v0, 0x7f0a03c6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->n:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0a01ac

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->p:Landroid/widget/RelativeLayout;

    .line 106
    const v0, 0x7f0a03be

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->e:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0a03c4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->l:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0a03c0

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->h:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 109
    const v0, 0x7f0a03c2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->j:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0a03c5

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->m:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0a03bd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->d:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    .line 112
    const v0, 0x7f0a03bc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->t:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0a0121

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    .line 114
    const v0, 0x7f0a03ba

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->u:Landroid/view/View;

    .line 115
    const v0, 0x7f0a03b9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->r:Landroid/view/View;

    .line 116
    const v0, 0x7f0a03c1

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->g:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 117
    const v0, 0x7f0a03c3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->k:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0a03c8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->q:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 119
    const v0, 0x7f0a01ad

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->a:Landroid/widget/ViewSwitcher;

    .line 120
    const v0, 0x7f0a03b8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->i:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0a03bf

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->f:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0a01ae

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->b:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0a03c7

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->o:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0a03bb

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->s:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->b()V

    .line 126
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->z:Z

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->z:Z

    .line 75
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300fb

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader_;->A:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->onFinishInflate()V

    .line 79
    return-void
.end method
