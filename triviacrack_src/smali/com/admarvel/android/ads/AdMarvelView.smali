.class public Lcom/admarvel/android/ads/AdMarvelView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field public static b:Z

.field protected static d:Z

.field private static j:Z

.field private static o:Z

.field private static w:Z

.field private static x:Lcom/admarvel/android/b/c;

.field private static z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/admarvel/android/ads/AdMarvelAd;

.field private B:Z

.field final c:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcom/admarvel/android/ads/r;

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private n:Z

.field private p:Z

.field private final q:Lcom/admarvel/android/ads/AdMarvelView$k;

.field private final r:Lcom/admarvel/android/ads/AdMarvelView$l;

.field private final s:Landroid/os/Handler;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->j:Z

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->o:Z

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->w:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/admarvel/android/ads/AdMarvelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->k:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->p:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->y:Z

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->B:Z

    new-instance v0, Lcom/admarvel/android/ads/r;

    invoke-direct {v0}, Lcom/admarvel/android/ads/r;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/admarvel/android/ads/ac;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setFocusable(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setClickable(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_6

    const-string v1, "backgroundColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    const-string v2, "backgroundColor"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    :cond_0
    :goto_0
    const-string v1, "textBackgroundColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "textBackgroundColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->f:I

    :cond_1
    const-string v1, "textFontColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "textFontColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I

    :cond_2
    const-string v1, "textBorderColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "textBorderColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->h:I

    :cond_3
    const-string v1, "disableAnimation"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "disableAnimation"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z

    :cond_4
    const-string v1, "enableClickRedirect"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "enableClickRedirect"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z

    :cond_5
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setAdMarvelBackgroundColor(I)V

    :cond_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$k;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->q:Lcom/admarvel/android/ads/AdMarvelView$k;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$l;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelView$l;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->r:Lcom/admarvel/android/ads/AdMarvelView$l;

    return-void

    :cond_7
    const-string v1, "backgroundColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/admarvel/android/b/c;)Lcom/admarvel/android/b/c;
    .locals 0

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->d()V

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v1, 0x4000

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    const v0, -0x41666666

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/admarvel/android/ads/aa;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/aa;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/aa;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/admarvel/android/ads/aa;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/aa;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelView$2;-><init>(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/aa;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelView;->a(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->k:Z

    return p1
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V

    const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelView;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z

    return v0
.end method

.method static synthetic c()Lcom/admarvel/android/b/c;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelView;->e()V

    return-void
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static declared-synchronized disableNetworkActivity()V
    .locals 3

    const-class v1, Lcom/admarvel/android/ads/AdMarvelView;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->w:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static declared-synchronized enableNetworkActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xb

    const-class v1, Lcom/admarvel/android/ads/AdMarvelView;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->w:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$g;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelView$g;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView$g;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v2, :cond_2

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$g;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelView$g;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView$g;->run()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->y:Z

    return v0
.end method

.method public static forceCloseFullScreenAd(Landroid/app/Activity;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V

    :cond_1
    :try_start_0
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V

    const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: forceCloseFullScreenAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/AdMarvelAd;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->A:Lcom/admarvel/android/ads/AdMarvelAd;

    return-object v0
.end method

.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z

    return v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->o:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelView$j;->a(Landroid/app/Activity;)V

    :cond_0
    new-instance v0, Lcom/admarvel/android/a/a;

    invoke-direct {v0, p0}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/admarvel/android/a/a;->a()V

    :try_start_0
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: startActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$1;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->m(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method public static initializeOfflineSDK(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->b:Z

    const-string v0, "Offline SDK:initializeOfflineSDK "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->w:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/admarvel/android/b/c;

    invoke-direct {v0, p1, p0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$g;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelView$g;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView$g;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static pause(Landroid/app/Activity;Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/admarvel/android/ads/AdMarvelView;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "CURRENT"

    invoke-virtual {p2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a()V

    :cond_0
    invoke-static {}, Lcom/admarvel/android/ads/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_0
    const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->pause()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    return-void

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method

.method public static resume(Landroid/app/Activity;Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/admarvel/android/ads/AdMarvelView;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "CURRENT"

    invoke-virtual {p2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->b()V

    :cond_0
    invoke-static {}, Lcom/admarvel/android/ads/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_0
    const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->pause()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    return-void

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method

.method public static setEnableHardwareAcceleration(Z)V
    .locals 0

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelView;->o:Z

    return-void
.end method

.method public static uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->c()V

    :cond_0
    invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;)V

    :cond_1
    :try_start_0
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    const-string v0, "ADMARVELGUID"

    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: endActivity"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->stop()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    invoke-static {}, Lcom/admarvel/android/util/e;->a()V

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->m(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 9

    const/4 v8, -0x2

    const-string v0, "CURRENT"

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d()V

    :cond_0
    const/4 v4, 0x0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v4, Ljava/io/File;

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z

    iget-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXml()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView;-><init>(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;)V

    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setBackgroundColor(I)V

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setEnableClickRedirect(Z)V

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->r:Lcom/admarvel/android/ads/AdMarvelView$l;

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/s;)V

    const-string v1, "PENDING"

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getTextFontColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getTextBorderColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getTextBackgroundColor()I

    move-result v3

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getAdMarvelBackgroundColor()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(IIIILcom/admarvel/android/ads/AdMarvelView;)V

    :goto_1
    const-string v1, "PENDING"

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z

    iget-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXml()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView;-><init>(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .locals 9

    const/16 v3, 0x130

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "admarvel"

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/admarvel/android/ads/AdMarvelAd;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/16 v9, 0x130

    if-eqz p2, :cond_0

    :try_start_0
    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView;->A:Lcom/admarvel/android/ads/AdMarvelAd;

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->q:Lcom/admarvel/android/ads/AdMarvelView$k;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    iget v6, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelAdapter;->requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    const-string v0, "PENDING"

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_1

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setGravity(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    const-string v0, "PENDING"

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->isMustBeVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->removeAllViews()V

    invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/AdMarvelView;->addView(Landroid/view/View;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->q:Lcom/admarvel/android/ads/AdMarvelView$k;

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    iget v6, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelAdapter;->requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v9}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_8
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->B:Z

    return v0
.end method

.method public adMarvelViewDisplayed()V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$h;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->p:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$d;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView$d;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public displayAd(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 9

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView;->A:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v3

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->isDisableAdrequest()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getDisableAdDuration()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enableAdFetchedModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->B:Z

    return-void
.end method

.method public fetchNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->enableAdFetchedModel(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fetchNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->enableAdFetchedModel(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public focus()V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$i;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView$i;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdMarvelBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    return v0
.end method

.method getListenerImpl()Lcom/admarvel/android/ads/r;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->f:I

    return v0
.end method

.method public getTextBorderColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->h:I

    return v0
.end method

.method public getTextFontColor()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I

    return v0
.end method

.method public requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "admarvel"

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x130

    const/16 v2, 0x130

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    const/4 v6, 0x0

    const-string v8, ""

    move-object v2, p0

    move-object/from16 v5, p3

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/admarvel/android/a/a;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/admarvel/android/a/a;->a()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->c()V

    :cond_2
    invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView;)V

    const/4 v1, 0x0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    const/4 v6, 0x0

    if-eqz p1, :cond_5

    const-string v0, "UNIQUE_ID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    :cond_5
    iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$b;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, ""

    iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    move-object v3, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v12}, Lcom/admarvel/android/ads/AdMarvelView$b;-><init>(Ljava/io/File;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelView;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    const-string v0, "requestNewAd: AD REQUEST PENDING, IGNORING REQUEST"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x130

    const/16 v2, 0x130

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    const/4 v6, 0x0

    const-string v8, ""

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAdMarvelBackgroundColor(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    :goto_0
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setBackgroundColor(I)V

    return-void

    :cond_0
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I

    goto :goto_0
.end method

.method public setAdmarvelWebViewAsSoftwareLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->p:Z

    return-void
.end method

.method public setDisableAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z

    return-void
.end method

.method public setDisableSDKImpressionTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->y:Z

    return-void
.end method

.method public setEnableAutoScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z

    return-void
.end method

.method public setEnableClickRedirect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z

    return-void
.end method

.method public setEnableFitToScreenForTablets(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z

    return-void
.end method

.method public setExtendedListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;)V

    return-void
.end method

.method public setListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V

    return-void
.end method

.method public setOptionalFlags(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->t:Ljava/util/Map;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "cached_directory"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelView$a;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelView$a;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->j:Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextBackgroundColor(I)V
    .locals 1

    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->f:I

    return-void
.end method

.method public setTextBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->h:I

    return-void
.end method

.method public setTextFontColor(I)V
    .locals 1

    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->requestLayout()V

    return-void
.end method

.method public updateCurrentActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
