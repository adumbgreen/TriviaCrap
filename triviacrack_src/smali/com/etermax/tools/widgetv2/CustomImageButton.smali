.class public Lcom/etermax/tools/widgetv2/CustomImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->d:I

    .line 26
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->c:I

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widgetv2/CustomImageButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->d:I

    .line 33
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->c:I

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widgetv2/CustomImageButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->c:I

    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->d:I

    iget v4, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->b:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widgetv2/CustomImageButton;->setPadding(IIII)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->c:I

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->d:I

    iget v4, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->a:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widgetv2/CustomImageButton;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->a:I

    .line 41
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widgetv2/CustomImageButton;->b:I

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-direct {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->a()V

    .line 46
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 51
    invoke-direct {p0}, Lcom/etermax/tools/widgetv2/CustomImageButton;->a()V

    .line 52
    return-void
.end method
