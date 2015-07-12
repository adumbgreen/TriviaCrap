.class public Lcom/smartadserver/android/library/ui/g;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field public static c:[I


# instance fields
.field private b:Landroid/webkit/WebView;

.field private d:Lcom/smartadserver/android/library/ui/SASCloseButton;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Z

.field private h:Z

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartadserver/android/library/ui/g;->c:[I

    .line 46
    const-class v0, Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/g;->a:Ljava/lang/String;

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/g;->g:Z

    .line 52
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/g;->h:Z

    .line 88
    new-instance v0, Lcom/smartadserver/android/library/ui/g$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/g$1;-><init>(Lcom/smartadserver/android/library/ui/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    .line 103
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 107
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 113
    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 117
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 121
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/smartadserver/android/library/ui/g$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/g$2;-><init>(Lcom/smartadserver/android/library/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 132
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/smartadserver/android/library/ui/g$3;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/g$3;-><init>(Lcom/smartadserver/android/library/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 160
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 161
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 181
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/g;->e()V

    .line 189
    new-instance v0, Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    .line 190
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setVisibility(I)V

    .line 193
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010287

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/g;->e:Landroid/widget/ProgressBar;

    .line 194
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/g;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 201
    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-super {p0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 208
    return-void
.end method

.method public static a([ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 343
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/smartadserver/android/library/ui/g;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 344
    sget-object v1, Lcom/smartadserver/android/library/ui/g;->c:[I

    aget v1, v1, v0

    aget v2, p0, v0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/g;->h:Z

    return v0
.end method

.method public static a(I)[I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    const/4 v1, -0x1

    .line 314
    packed-switch p0, :pswitch_data_0

    .line 334
    :pswitch_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v1, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 339
    :goto_0
    return-object v0

    .line 316
    :pswitch_1
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v1, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 319
    :pswitch_2
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v1, v0, v4

    aput v1, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 322
    :pswitch_3
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v1, v0, v3

    aput v1, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 325
    :pswitch_4
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 328
    :pswitch_5
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v1, v0, v4

    aput v2, v0, v5

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 331
    :pswitch_6
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v1, v0, v6

    const/4 v2, 0x5

    aput v1, v0, v2

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/g;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/g;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/g;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    .line 214
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 220
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 222
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 228
    sget-object v2, Lcom/smartadserver/android/library/g/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    new-instance v2, Lcom/smartadserver/android/library/ui/g$4;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/g$4;-><init>(Lcom/smartadserver/android/library/ui/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 236
    sget-object v3, Lcom/smartadserver/android/library/g/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    new-instance v3, Lcom/smartadserver/android/library/ui/g$5;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/g$5;-><init>(Lcom/smartadserver/android/library/ui/g;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 244
    sget-object v4, Lcom/smartadserver/android/library/g/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    new-instance v4, Lcom/smartadserver/android/library/ui/g$6;

    invoke-direct {v4, p0}, Lcom/smartadserver/android/library/ui/g$6;-><init>(Lcom/smartadserver/android/library/ui/g;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/smartadserver/android/library/ui/g;->i:Landroid/widget/ImageButton;

    .line 253
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/g;->i:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 254
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/g;->i:Landroid/widget/ImageButton;

    sget-object v5, Lcom/smartadserver/android/library/g/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 261
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 264
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 265
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 267
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 275
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-void

    .line 217
    :array_0
    .array-data 0x4
        0x61t 0x62t 0x61t 0xfft
        0x13t 0x13t 0x13t 0xfft
    .end array-data
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 373
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, p1, p2}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/g;->g:Z

    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/g;->bringChildToFront(Landroid/view/View;)V

    .line 290
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 403
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 418
    sget-object v0, Lcom/smartadserver/android/library/ui/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy called on webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/g;->h:Z

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/g;->h:Z

    .line 421
    new-instance v0, Lcom/smartadserver/android/library/ui/g$7;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/g$7;-><init>(Lcom/smartadserver/android/library/ui/g;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/g;->post(Ljava/lang/Runnable;)Z

    .line 434
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseButtonVisibility()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 357
    return-void
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    return-void
.end method

.method public setCloseButtonPosition(I)V
    .locals 2
    .parameter

    .prologue
    .line 306
    invoke-static {p1}, Lcom/smartadserver/android/library/ui/g;->a(I)[I

    move-result-object v1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/ui/g;->a([ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 307
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/g;->forceLayout()V

    .line 308
    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->d:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setVisibility(I)V

    .line 366
    return-void
.end method

.method public setInAppBrowserMode(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 437
    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonVisibility(I)V

    .line 440
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/g;->setUseProgressBar(Z)V

    .line 446
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonVisibility(I)V

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/g;->setUseProgressBar(Z)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    return-void
.end method

.method public setUseProgressBar(Z)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/g;->g:Z

    .line 75
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 411
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 407
    return-void
.end method
