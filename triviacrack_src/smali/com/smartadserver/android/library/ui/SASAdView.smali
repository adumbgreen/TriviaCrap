.class public abstract Lcom/smartadserver/android/library/ui/SASAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static C:Landroid/graphics/Bitmap;

.field private static D:Ljava/lang/String;

.field public static a:I

.field public static b:I

.field public static c:Z

.field private static final n:Ljava/lang/String;

.field private static o:Z

.field private static p:Z

.field private static q:I

.field private static r:I

.field private static s:Z


# instance fields
.field private A:Z

.field private B:Lcom/smartadserver/android/library/ui/b;

.field private E:Landroid/view/View;

.field private F:Landroid/os/Handler;

.field private G:I

.field private H:Ljava/lang/Object;

.field private I:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/view/ViewGroup$LayoutParams;

.field private K:Landroid/view/ViewGroup$LayoutParams;

.field private L:Landroid/location/Location;

.field private M:Z

.field protected d:Z

.field public e:Lcom/smartadserver/android/library/b/e;

.field public f:Lcom/smartadserver/android/library/f/a/b;

.field public g:Lcom/smartadserver/android/library/controller/a;

.field public h:Lcom/smartadserver/android/library/controller/d;

.field public i:Lcom/smartadserver/android/library/controller/c;

.field public j:Lcom/smartadserver/android/library/ui/g;

.field public k:Lcom/smartadserver/android/library/ui/g;

.field public l:Lcom/smartadserver/android/library/d/a;

.field public m:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/FrameLayout;

.field private z:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/smartadserver/android/library/ui/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-class v0, Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    .line 63
    sput-boolean v1, Lcom/smartadserver/android/library/ui/SASAdView;->o:Z

    .line 64
    sput-boolean v1, Lcom/smartadserver/android/library/ui/SASAdView;->p:Z

    .line 73
    const/16 v0, 0x1770

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->a:I

    .line 81
    const/16 v0, 0x2710

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->b:I

    .line 89
    sput-boolean v1, Lcom/smartadserver/android/library/ui/SASAdView;->c:Z

    .line 92
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->a:I

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->q:I

    .line 93
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->b:I

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:I

    .line 94
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->c:Z

    sput-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->s:Z

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/graphics/Bitmap;

    .line 257
    const-string v0, "http://mobile.smartadserver.com"

    sput-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 369
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->t:Z

    .line 97
    const/16 v0, -0xa

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->v:I

    .line 156
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:Z

    .line 170
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Z

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Ljava/lang/Object;

    .line 355
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Z

    .line 747
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Z

    .line 370
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/content/Context;)V

    .line 371
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "SASAdview created"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->t:Z

    .line 97
    const/16 v0, -0xa

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->v:I

    .line 156
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:Z

    .line 170
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Z

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Ljava/lang/Object;

    .line 355
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Z

    .line 747
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Z

    .line 381
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/content/Context;)V

    .line 382
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "SASAdview created"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->K:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1407
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "initialize(context)"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/b/e;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/b/e;

    .line 1409
    new-instance v0, Lcom/smartadserver/android/library/f/a/b;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/f/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/f/a/b;

    .line 1412
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/content/Context;)V

    .line 1414
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/content/Context;)V

    .line 1416
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Ljava/util/Vector;

    .line 1418
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->F:Landroid/os/Handler;

    .line 1420
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/controller/a;->a(I)V

    .line 1422
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Z

    if-nez v0, :cond_0

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current SDK Version : 4.2.2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/smartadserver/android/library/h/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 1424
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Z

    .line 1428
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Landroid/view/View;

    .line 1429
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Landroid/view/View;

    const/high16 v1, -0x5600

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1431
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1433
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct/range {p0 .. p8}, Lcom/smartadserver/android/library/ui/SASAdView;->b(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASAdView;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->v:I

    return v0
.end method

.method private b(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    if-eqz p6, :cond_0

    .line 507
    new-instance v1, Lcom/smartadserver/android/library/a/h;

    const-string v2, "An ad request is currently pending on this SASAdView"

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/a/h;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    if-eqz p8, :cond_3

    const/4 v1, 0x2

    .line 516
    :goto_1
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v2, v1}, Lcom/smartadserver/android/library/controller/a;->a(I)V

    .line 519
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->i()V

    .line 521
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLoaderView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:Landroid/view/View;

    .line 522
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View;)V

    .line 526
    :cond_2
    const/4 v1, 0x0

    .line 527
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    if-eqz v2, :cond_4

    .line 529
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :try_start_1
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 531
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 551
    :goto_2
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p5

    move v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/smartadserver/android/library/controller/a;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;Z)V

    goto :goto_0

    .line 515
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 532
    :catch_0
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    .line 533
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 532
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v9, v1

    goto :goto_2
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1528
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$11;

    invoke-direct {v0, p0, p1, p1}, Lcom/smartadserver/android/library/ui/SASAdView$11;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    .line 1558
    new-instance v0, Lcom/smartadserver/android/library/controller/a;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/a;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    .line 1561
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/g;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1562
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/g;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1563
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1564
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/g;->setBackgroundColor(I)V

    .line 1566
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1567
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {p0, v1, v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    return-void
.end method

.method private c(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .parameter

    .prologue
    .line 1173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1175
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1177
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1178
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1181
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1182
    invoke-virtual {v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1185
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1186
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1187
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1188
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, v4, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 1191
    const/4 v1, 0x0

    aget v1, v2, v1

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    .line 1192
    const/4 v4, 0x1

    aget v2, v2, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1193
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1195
    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->K:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1911
    :cond_0
    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1590
    new-instance v0, Lcom/smartadserver/android/library/ui/g;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    .line 1592
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1593
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1594
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1596
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonVisibility(I)V

    .line 1597
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$12;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$12;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setVisibility(I)V

    .line 1613
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1614
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1616
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/g;->setUseProgressBar(Z)V

    .line 1618
    return-void
.end method

.method private d()Z
    .locals 6

    .prologue
    const/16 v0, 0x8

    .line 1230
    const/4 v1, 0x0

    .line 1233
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Landroid/view/ViewGroup$LayoutParams;

    .line 1237
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 1239
    if-eqz v2, :cond_1

    .line 1240
    const/4 v1, 0x1

    .line 1242
    invoke-static {p0}, Lcom/smartadserver/android/library/h/c;->a(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    .line 1246
    iget v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 1247
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1248
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1249
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getVisibility()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 1250
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1253
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1254
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1255
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1256
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/lang/ref/WeakReference;

    .line 1257
    iget v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1262
    :cond_0
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    move v0, v1

    .line 1265
    if-eqz v0, :cond_3

    .line 1266
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v2, "moveViewToForeground succeeded"

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :goto_1
    return v0

    .line 1249
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1268
    :cond_3
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v2, "moveViewToForeground failed"

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/SASAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Landroid/view/View;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->o()V

    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/lang/String;

    return-object v0
.end method

.method public static getCloseButtonBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getDefaultAdLoadingTimeout()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->q:I

    return v0
.end method

.method public static getDefaultAdPrefetchTimeout()I
    .locals 1

    .prologue
    .line 232
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:I

    return v0
.end method

.method static synthetic h(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->q()V

    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1279
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "moveViewToBackground"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1284
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setPadding(IIII)V

    .line 1286
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1287
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1290
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    if-le v0, v3, :cond_2

    .line 1291
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1293
    if-eqz v0, :cond_1

    .line 1294
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1296
    if-eqz v1, :cond_1

    .line 1297
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1301
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/lang/ref/WeakReference;

    .line 1302
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    .line 1304
    :cond_2
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1575
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->b()V

    .line 1576
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setInAppBrowserMode(Z)V

    .line 1577
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setVisibility(I)V

    .line 1579
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1581
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1582
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1643
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWebView size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "         visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSecondaryWebView size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                  visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mViewIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getRootView().findViewById(R.id.content): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "index in parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/smartadserver/android/library/h/c;->a(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/16 v2, -0xa

    .line 1995
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    if-eq v0, v2, :cond_0

    .line 1997
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "restore rotation mode"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2000
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2001
    iput v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    .line 2003
    :cond_0
    return-void
.end method

.method public static setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    if-eqz p0, :cond_0

    .line 274
    sput-object p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/lang/String;

    .line 276
    :cond_0
    return-void
.end method

.method public static setCloseButtonBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    sput-object p0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/graphics/Bitmap;

    .line 292
    return-void
.end method

.method public static setDefaultAdLoadingTimeout(I)V
    .locals 0
    .parameter

    .prologue
    .line 225
    sput p0, Lcom/smartadserver/android/library/ui/SASAdView;->q:I

    .line 226
    return-void
.end method

.method public static setDefaultAdPrefetchTimeout(I)V
    .locals 0
    .parameter

    .prologue
    .line 254
    sput p0, Lcom/smartadserver/android/library/ui/SASAdView;->r:I

    .line 255
    return-void
.end method

.method public static setUseHashedAndroidId(Z)V
    .locals 0
    .parameter

    .prologue
    .line 211
    sput-boolean p0, Lcom/smartadserver/android/library/ui/SASAdView;->p:Z

    .line 212
    return-void
.end method

.method public static setVideoViewZOrderOnTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 239
    sput-boolean p0, Lcom/smartadserver/android/library/ui/SASAdView;->s:Z

    .line 240
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1328
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "collapseImpl()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$7;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$7;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1357
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1748
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Z

    if-eqz v1, :cond_1

    .line 1750
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1754
    :cond_0
    new-instance v1, Lcom/smartadserver/android/library/ui/d;

    invoke-direct {v1, p0, p1, v0}, Lcom/smartadserver/android/library/ui/d;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;ILcom/smartadserver/android/library/ui/SASAdView$1;)V

    .line 1757
    :goto_0
    if-eqz v1, :cond_1

    .line 1758
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/c;

    .line 1759
    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/ui/c;->onStateChanged(Lcom/smartadserver/android/library/ui/d;)V

    goto :goto_1

    .line 1763
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    sget v7, Lcom/smartadserver/android/library/ui/SASAdView;->q:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;I)V

    .line 453
    return-void
.end method

.method public a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V

    .line 469
    return-void
.end method

.method protected a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/smartadserver/android/library/ui/SASAdView$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;IZ)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 493
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 494
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1678
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$3;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$3;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1688
    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public a(Lcom/smartadserver/android/library/ui/c;)V
    .locals 1
    .parameter

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1731
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 1629
    invoke-static {}, Lcom/smartadserver/android/library/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1639
    :goto_0
    return-void

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->F:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1633
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->F:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1636
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 636
    const-string v0, "sas:click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->m()Ljava/lang/String;

    move-result-object p1

    .line 640
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 641
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "open(url) failed: url is empty"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/b/e;

    invoke-virtual {v1, v0, v3}, Lcom/smartadserver/android/library/b/e;->a(Ljava/lang/String;Z)V

    .line 656
    :cond_2
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:Z

    .line 658
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 663
    :try_start_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 665
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 667
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 673
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Z

    if-eqz v0, :cond_4

    .line 681
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->g()V

    goto :goto_0

    .line 683
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    goto :goto_0

    .line 688
    :cond_5
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$5;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$5;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 700
    :cond_6
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "open(url) failed: no internet connection or adElement is null"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    :catch_0
    move-exception v0

    goto :goto_1

    .line 674
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 878
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view.expand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/g;->d()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p8, :cond_0

    const-string v1, "none"

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 887
    :goto_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 888
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 891
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 893
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x81

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 894
    if-eqz v2, :cond_3

    .line 895
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v2, v2, 0x80

    if-lez v2, :cond_3

    .line 898
    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    const/16 v3, -0xa

    if-ne v2, v3, :cond_1

    .line 899
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    .line 900
    sget-object v2, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock rotation, current orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartadserver/android/library/h/c;->h(Landroid/content/Context;)I

    move-result v2

    .line 905
    const-string v3, "none"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 906
    const-string v3, "portrait"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 907
    const/4 v2, 0x1

    .line 912
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_3
    :goto_2
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$6;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView$6;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;IIIIZZZ)V

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1150
    return-void

    .line 884
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 908
    :cond_5
    :try_start_1
    const-string v3, "landscape"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 909
    const/4 v2, 0x0

    goto :goto_1

    .line 915
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V

    .line 849
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    invoke-virtual {p0, p2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1862
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1872
    const-string v0, "if (typeof mraid != \'undefined\') mraid.fire"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    const-string v0, "Event("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1876
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1877
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    const-string v0, "\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1881
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1883
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 1886
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/f/a/b;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/f/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/f/a/b;->a(Landroid/content/Context;)V

    .line 1717
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->h()V

    .line 1718
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->c()V

    .line 1719
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->c()V

    .line 1721
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1695
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$4;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$4;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1702
    return-void
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1512
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$10;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$10;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1520
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1365
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "closeImpl()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$8;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$8;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1391
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1312
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "collapse"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v0

    .line 1314
    const-string v1, "expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "resized"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1317
    :goto_0
    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 1320
    :cond_1
    return-void

    .line 1314
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAdElement()Lcom/smartadserver/android/library/d/a;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    return-object v0
.end method

.method public getCurrentBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0, p0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1211
    .line 1214
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1215
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1216
    if-eqz v0, :cond_0

    .line 1217
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1222
    :goto_0
    return-object v0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpandParentContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getExpandParentView()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 769
    const/4 v1, 0x0

    .line 770
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:Landroid/widget/FrameLayout;

    .line 794
    :goto_0
    return-object v0

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 775
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 784
    :goto_1
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 785
    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 786
    :cond_2
    if-eqz v0, :cond_3

    .line 788
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 789
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 790
    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getExpandPolicy()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->v:I

    return v0
.end method

.method public getLoaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->w:Landroid/view/View;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 1817
    const/4 v0, 0x0

    .line 1818
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 1819
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1821
    :cond_0
    return-object v0
.end method

.method public getMessageHandler()Lcom/smartadserver/android/library/ui/b;
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->B:Lcom/smartadserver/android/library/ui/b;

    return-object v0
.end method

.method public getNeededTopPadding()I
    .locals 4

    .prologue
    .line 1158
    const/4 v0, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1160
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1161
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1162
    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 1165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1166
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1167
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1169
    :cond_0
    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 1400
    const-string v0, "default"

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 1404
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->b()V

    .line 1487
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$9;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$9;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:Z

    .line 1504
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 1665
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$2;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1670
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1671
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1849
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:Z

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->getCloseButtonVisibility()I

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

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 710
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 713
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->a()V

    .line 714
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 754
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 756
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->p()V

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Z

    .line 758
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 721
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 724
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->b()V

    .line 725
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 726
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1832
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1833
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/h/c;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(I)V

    .line 1834
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Z

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->a()V

    .line 1836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Z

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Z)V

    .line 1840
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 1841
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 737
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Z)V

    .line 739
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 741
    :cond_0
    return-void
.end method

.method public setEnableStateChangeEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1771
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Z

    .line 1772
    return-void
.end method

.method public setExpandParentContainer(Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:Landroid/widget/FrameLayout;

    .line 1480
    return-void
.end method

.method public setExpandPolicy(I)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->v:I

    .line 413
    return-void
.end method

.method public setLoaderView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->w:Landroid/view/View;

    .line 1455
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 1802
    if-eqz p1, :cond_0

    .line 1803
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    .line 1804
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->d()V

    .line 1810
    :goto_0
    return-void

    .line 1806
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Landroid/location/Location;

    goto :goto_0
.end method

.method public setMessageHandler(Lcom/smartadserver/android/library/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->B:Lcom/smartadserver/android/library/ui/b;

    .line 2052
    return-void
.end method
