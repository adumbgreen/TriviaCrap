.class public Lcom/etermax/widget/slidingtab/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final j:Lcom/etermax/widget/slidingtab/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b:Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->setFillViewport(Z)V

    .line 101
    const/high16 v0, 0x41c0

    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->c:I

    .line 103
    new-instance v0, Lcom/etermax/widget/slidingtab/e;

    iget v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a:I

    invoke-direct {v0, p1, v1}, Lcom/etermax/widget/slidingtab/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    .line 105
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0}, Lcom/etermax/widget/slidingtab/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    return-object v0
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0}, Lcom/etermax/widget/slidingtab/e;->getChildCount()I

    move-result v0

    .line 324
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 332
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 334
    :cond_2
    iget v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->c:I

    sub-int/2addr v0, v1

    .line 337
    :cond_3
    iget-boolean v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b:Z

    if-nez v1, :cond_0

    .line 338
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    sget-object v0, Lcom/etermax/q;->SlidingTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a:I

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b:Z

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 216
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 219
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 222
    iget-boolean v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b:Z

    if-eqz v0, :cond_0

    .line 223
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 226
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    const/4 v0, 0x2

    const/high16 v1, 0x4140

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 233
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 235
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 238
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 243
    :cond_2
    const/high16 v0, 0x4180

    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 244
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    return-object v2
.end method

.method protected a()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 251
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    .line 253
    new-instance v8, Lcom/etermax/widget/slidingtab/b;

    invoke-direct {v8, p0, v6}, Lcom/etermax/widget/slidingtab/b;-><init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;Lcom/etermax/widget/slidingtab/SlidingTabLayout$1;)V

    move v4, v5

    .line 255
    :goto_0
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 261
    iget v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->d:I

    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->d:I

    iget-object v2, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    iget-boolean v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b:Z

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_0
    iget v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->e:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    iget v1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->f:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 274
    iget v2, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->g:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v10, v1

    move-object v1, v7

    move-object v7, v10

    .line 277
    :goto_1
    if-nez v1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    .line 281
    :cond_1
    if-nez v0, :cond_2

    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v1

    .line 282
    check-cast v0, Landroid/widget/TextView;

    .line 285
    :cond_2
    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 286
    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_2
    if-eqz v7, :cond_6

    instance-of v0, v3, Lcom/etermax/widget/slidingtab/d;

    if-eqz v0, :cond_6

    move-object v0, v3

    .line 293
    check-cast v0, Lcom/etermax/widget/slidingtab/d;

    invoke-virtual {v0, v4}, Lcom/etermax/widget/slidingtab/d;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_3
    if-eqz v2, :cond_7

    instance-of v0, v3, Lcom/etermax/widget/slidingtab/d;

    if-eqz v0, :cond_7

    move-object v0, v3

    .line 299
    check-cast v0, Lcom/etermax/widget/slidingtab/d;

    invoke-virtual {v0, v4}, Lcom/etermax/widget/slidingtab/d;->b(I)Landroid/view/View;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, v1}, Lcom/etermax/widget/slidingtab/e;->addView(Landroid/view/View;)V

    .line 255
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 289
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_6
    if-eqz v7, :cond_3

    instance-of v0, v3, Lcom/etermax/widget/slidingtab/d;

    if-nez v0, :cond_3

    .line 295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must use SlidingTabPagerAdapter when setCustomTabView to have tabs with images"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_7
    if-eqz v2, :cond_4

    instance-of v0, v3, Lcom/etermax/widget/slidingtab/d;

    if-nez v0, :cond_4

    .line 304
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must use SlidingTabPagerAdapter when setCustomTabView to have tabs with badges"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_8
    return-void

    :cond_9
    move-object v2, v6

    move-object v7, v6

    move-object v0, v6

    move-object v1, v6

    goto/16 :goto_1
.end method

.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput p1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->d:I

    .line 192
    iput p2, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->e:I

    .line 193
    iput p3, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->f:I

    .line 194
    return-void
.end method

.method public getTabStrip()Lcom/etermax/widget/slidingtab/e;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    return-object v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 317
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(II)V

    .line 320
    :cond_0
    return-void
.end method

.method public setBottomBorderThickness(F)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->setBottomBorderThickness(F)V

    .line 151
    return-void
.end method

.method public setCustomTabColorizer(Lcom/etermax/widget/slidingtab/c;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->setCustomTabColorizer(Lcom/etermax/widget/slidingtab/c;)V

    .line 129
    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->setDividerColors([I)V

    .line 159
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 169
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->setSelectedIndicatorColors([I)V

    .line 137
    return-void
.end method

.method public setSelectedIndicatorThickness(I)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->setSelectedIndicatorThickness(I)V

    .line 144
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->j:Lcom/etermax/widget/slidingtab/e;

    invoke-virtual {v0}, Lcom/etermax/widget/slidingtab/e;->removeAllViews()V

    .line 203
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->h:Landroid/support/v4/view/ViewPager;

    .line 204
    if-eqz p1, :cond_0

    .line 205
    new-instance v0, Lcom/etermax/widget/slidingtab/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/widget/slidingtab/a;-><init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;Lcom/etermax/widget/slidingtab/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a()V

    .line 208
    :cond_0
    return-void
.end method
