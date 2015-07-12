.class public Lcom/etermax/preguntados/ui/widget/AnswerButtonView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/widget/CustomFontButton;

.field b:Landroid/widget/ViewSwitcher;

.field c:Lcom/etermax/preguntados/g/a;

.field private d:Lcom/etermax/preguntados/ui/widget/b;

.field private e:Lcom/etermax/preguntados/ui/widget/a;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget v0, Lcom/etermax/h;->button_green_background:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->h:I

    .line 41
    sget v0, Lcom/etermax/h;->button_green_background_pressed:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->i:I

    .line 42
    sget v0, Lcom/etermax/h;->button_red_background:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->j:I

    .line 43
    sget v0, Lcom/etermax/h;->button_red_background_pressed:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->k:I

    .line 162
    new-instance v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;-><init>(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->l:Landroid/view/animation/Animation$AnimationListener;

    .line 54
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->b()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget v0, Lcom/etermax/h;->button_green_background:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->h:I

    .line 41
    sget v0, Lcom/etermax/h;->button_green_background_pressed:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->i:I

    .line 42
    sget v0, Lcom/etermax/h;->button_red_background:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->j:I

    .line 43
    sget v0, Lcom/etermax/h;->button_red_background_pressed:I

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->k:I

    .line 162
    new-instance v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$2;-><init>(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->l:Landroid/view/animation/Animation$AnimationListener;

    .line 59
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->b()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->h:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->f:Z

    .line 64
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->i:I

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v2}, Lcom/etermax/tools/widget/CustomFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v3}, Lcom/etermax/tools/widget/CustomFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 151
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomFontButton;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v2}, Lcom/etermax/tools/widget/CustomFontButton;->getTextSize()F

    move-result v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v3}, Lcom/etermax/tools/widget/CustomFontButton;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v3, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextSize(IF)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->j:I

    return v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->k:I

    return v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Lcom/etermax/preguntados/ui/widget/b;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->d:Lcom/etermax/preguntados/ui/widget/b;

    return-object v0
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->g:I

    return v0
.end method

.method static synthetic h(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->c()V

    return-void
.end method

.method static synthetic i(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Lcom/etermax/preguntados/ui/widget/a;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->e:Lcom/etermax/preguntados/ui/widget/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    new-instance v1, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;-><init>(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 140
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->f()Landroid/view/animation/Animation;

    move-result-object v0

    .line 141
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 142
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->l:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->h:I

    .line 109
    iput p2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->i:I

    .line 110
    return-void
.end method

.method public a(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->g:I

    .line 96
    iput-boolean p2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->f:Z

    .line 97
    return-void
.end method

.method public b(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->j:I

    .line 114
    iput p2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->k:I

    .line 115
    return-void
.end method

.method public setAnswerListener(Lcom/etermax/preguntados/ui/widget/b;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->d:Lcom/etermax/preguntados/ui/widget/b;

    .line 101
    return-void
.end method

.method public setButtonAnimationListener(Lcom/etermax/preguntados/ui/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->e:Lcom/etermax/preguntados/ui/widget/a;

    .line 105
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontButton;->setEnabled(Z)V

    .line 160
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontButton;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->c()V

    .line 126
    return-void
.end method
