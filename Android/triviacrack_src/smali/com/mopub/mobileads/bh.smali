.class Lcom/mopub/mobileads/bh;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/bi;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xf

    const/high16 v2, 0x40a0

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 118
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->a(Lcom/mopub/mobileads/bi;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/mopub/mobileads/bi;->b(Lcom/mopub/mobileads/bi;)F

    move-result v1

    invoke-direct {v0, v7, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->c(Lcom/mopub/mobileads/bi;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bh;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {p0}, Lcom/mopub/mobileads/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/bh;->c:I

    .line 125
    invoke-virtual {p0}, Lcom/mopub/mobileads/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/bh;->d:I

    .line 126
    const/high16 v0, 0x4214

    invoke-virtual {p0}, Lcom/mopub/mobileads/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/bh;->e:I

    .line 128
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->d(Lcom/mopub/mobileads/bi;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bh;->setVisibility(I)V

    .line 130
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->e(Lcom/mopub/mobileads/bi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->f(Lcom/mopub/mobileads/bi;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 135
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mobileads/bh;->e:I

    iget v2, p0, Lcom/mopub/mobileads/bh;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->g(Lcom/mopub/mobileads/bi;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mopub/mobileads/bh;->d:I

    iget v3, p0, Lcom/mopub/mobileads/bh;->d:I

    iget v4, p0, Lcom/mopub/mobileads/bh;->d:I

    iget v5, p0, Lcom/mopub/mobileads/bh;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 144
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 145
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 146
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/mopub/mobileads/bi;->f(Lcom/mopub/mobileads/bi;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/bh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_0
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->h(Lcom/mopub/mobileads/bi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mopub/mobileads/bi;->i(Lcom/mopub/mobileads/bi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/mopub/mobileads/bh;->c:I

    iget v3, p0, Lcom/mopub/mobileads/bh;->c:I

    iget v4, p0, Lcom/mopub/mobileads/bh;->c:I

    iget v5, p0, Lcom/mopub/mobileads/bh;->c:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    iget-object v1, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/bh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_1
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->k(Lcom/mopub/mobileads/bi;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->k(Lcom/mopub/mobileads/bi;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    :cond_2
    return-void

    .line 163
    :cond_3
    invoke-static {p1}, Lcom/mopub/mobileads/bi;->j(Lcom/mopub/mobileads/bi;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/bi;Lcom/mopub/mobileads/bh$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/bh;-><init>(Lcom/mopub/mobileads/bi;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/bh;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/resource/TextDrawable;

    .line 185
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/resource/TextDrawable;->updateText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v0, "Unable to update ToolbarWidget text."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
