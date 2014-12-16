.class public Lcom/smartadserver/android/library/SASInterstitialView;
.super Lcom/smartadserver/android/library/ui/SASAdView;
.source "SourceFile"


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private n:Ljava/util/Timer;

.field private p:Lcom/smartadserver/android/library/ui/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/SASInterstitialView;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->n()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->n()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/SASInterstitialView;)Lcom/smartadserver/android/library/ui/c;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->p:Lcom/smartadserver/android/library/ui/c;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/SASInterstitialView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView;->n:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/SASInterstitialView;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/SASInterstitialView;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->n:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/smartadserver/android/library/SASInterstitialView;->o:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/SASInterstitialView$1;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->p:Lcom/smartadserver/android/library/ui/c;

    .line 61
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->p:Lcom/smartadserver/android/library/ui/c;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/ui/c;)V

    .line 62
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->n:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->n:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 188
    sget-object v0, Lcom/smartadserver/android/library/SASInterstitialView;->o:Ljava/lang/String;

    const-string v1, "cancel timer"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->a()V

    .line 180
    invoke-virtual {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->h()V

    .line 181
    return-void
.end method

.method protected a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v6, Lcom/smartadserver/android/library/a;

    invoke-direct {v6, p0, p6}, Lcom/smartadserver/android/library/a;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;Lcom/smartadserver/android/library/ui/a;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-super/range {v0 .. v8}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V

    .line 222
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView$2;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/SASInterstitialView$2;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->b()V

    .line 199
    invoke-direct {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->o()V

    .line 200
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView$3;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/SASInterstitialView$3;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 258
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->c()V

    .line 209
    invoke-direct {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->o()V

    .line 210
    return-void
.end method
