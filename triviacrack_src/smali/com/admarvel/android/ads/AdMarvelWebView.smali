.class public Lcom/admarvel/android/ads/AdMarvelWebView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor",
        "SimpleDateFormat",
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final G:Ljava/io/File;

.field private final H:Ljava/lang/String;

.field private final I:Landroid/os/Handler;

.field private J:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelWebView$d;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/admarvel/android/ads/AdMarvelWebView$d;

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field private R:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelInternalWebView;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/admarvel/android/ads/AdMarvelAd;

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:I

.field private W:I

.field private Z:I

.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aa:I

.field private ab:I

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Lcom/admarvel/android/ads/AdMarvelWebView$al;

.field private am:Z

.field private an:Z

.field private ao:Z

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field public f:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private q:Z

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Z

.field private final t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Lcom/admarvel/android/ads/AdMarvelWebView$z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->g:Ljava/lang/String;

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type=\'text/javascript\' src=\'http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js\'></script>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->h:Ljava/lang/String;

    const-string v0, "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0;padding:0;} .bl span{display:table-cell;vertical-align:middle;height:38px;text-align:center;width:500px;} .bl {margin:2px;padding: 2px 15px;display:block;vertical-align:middle;text-align:center;line-height: 15px;font-size:12px;font-family: Helvetica;font-weight: bold;text-decoration: none;color:rgb(%d,%d,%d);text-shadow: #222222 0px 1px 2px; background-color:rgb(%d,%d,%d);background-image: url(\'http://admarvel.s3.amazonaws.com/btn_bg_trns.png\');border: 2px rgb(%d, %d, %d) solid;-webkit-border-radius: 10px;}</style>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->j:Ljava/lang/String;

    const-string v0, "<html><head>%s</head><body><div class=\"bl\"><a href=\"%s\" style=\"text-decoration: none; color: #000;\" ><span>%s</span></a></div>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->k:Ljava/lang/String;

    const-string v0, "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->l:Ljava/lang/String;

    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->p:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->u:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->v:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->w:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->x:Z

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->y:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->A:Z

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->B:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->C:Z

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->L:I

    iput v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->M:I

    iput v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->N:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->P:Z

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->T:Z

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->U:Ljava/lang/String;

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->V:I

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->W:I

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Z:I

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->aa:I

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ab:I

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ac:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ad:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ae:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->af:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ag:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ah:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ai:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->aj:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ak:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->al:Lcom/admarvel/android/ads/AdMarvelWebView$al;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->am:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->an:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ao:Z

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->H:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->s:Z

    iput-boolean p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->t:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->I:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->G:Ljava/io/File;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$d;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$d;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->K:Lcom/admarvel/android/ads/AdMarvelWebView$d;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->L:I

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->K:Lcom/admarvel/android/ads/AdMarvelWebView$d;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->J:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method

.method static synthetic A(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Z:I

    return v0
.end method

.method static synthetic B(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->aa:I

    return v0
.end method

.method static synthetic C(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ab:I

    return v0
.end method

.method static synthetic D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->am:Z

    return v0
.end method

.method static synthetic F(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ae:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$al;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->al:Lcom/admarvel/android/ads/AdMarvelWebView$al;

    return-object v0
.end method

.method static synthetic I(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ah:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ai:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic M(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->aj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic O(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->G:Ljava/io/File;

    return-object v0
.end method

.method static synthetic P(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->A:Z

    return v0
.end method

.method static synthetic Q(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->P:Z

    return v0
.end method

.method static synthetic R(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->L:I

    return v0
.end method

.method static synthetic S(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic T(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->T:Z

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->M:I

    return p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Q:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    return-object v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelWebView$al;)Lcom/admarvel/android/ads/AdMarvelWebView$al;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->al:Lcom/admarvel/android/ads/AdMarvelWebView$al;

    return-object p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelWebView$z;)Lcom/admarvel/android/ads/AdMarvelWebView$z;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->z:Lcom/admarvel/android/ads/AdMarvelWebView$z;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/s;

    return-object v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->R:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/admarvel/android/ads/s;)V
    .locals 2

    const-class v1, Lcom/admarvel/android/ads/AdMarvelWebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->p:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->T:Z

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->V:I

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->R:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static b(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;IIIIIII)V
    .locals 6

    const/16 v5, 0x9

    const/16 v4, 0xc

    const/16 v1, 0xb

    const/16 v3, 0xa

    const/4 v2, 0x0

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    if-ne p5, v0, :cond_0

    move p5, p7

    :cond_0
    const/4 v0, -0x1

    if-ne p6, v0, :cond_1

    move p6, p8

    :cond_1
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    const-string v0, "top-right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v0, p3, p5

    sub-int/2addr v0, p7

    if-nez p3, :cond_2

    if-lez v0, :cond_2

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gez p4, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    if-lez v0, :cond_3

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_3
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_4
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    const-string v0, "top-left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-gez p3, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_6
    :goto_2
    if-gez p4, :cond_9

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_7
    if-nez p3, :cond_8

    sub-int v0, p5, p7

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_6

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_8
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_9
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_a
    const-string v0, "bottom-right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v0, p3, p5

    sub-int/2addr v0, p7

    if-nez p3, :cond_b

    if-lez v0, :cond_b

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_3
    add-int v0, p4, p6

    sub-int v0, p8, v0

    if-gez v0, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_b
    if-lez v0, :cond_c

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_c
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_d
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_e
    const-string v0, "bottom-left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-gez p3, :cond_10

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_f
    :goto_4
    add-int v0, p4, p6

    sub-int v0, p8, v0

    if-gez v0, :cond_12

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_10
    if-nez p3, :cond_11

    sub-int v0, p5, p7

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_f

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_11
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_12
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_13
    const-string v0, "center"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    add-int v0, p3, p5

    if-gt v0, p7, :cond_15

    if-gtz p3, :cond_14

    add-int v0, p3, p5

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_5
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-gez p4, :cond_18

    div-int/lit8 v0, p6, 0x2

    add-int/2addr v0, p4

    if-gez v0, :cond_17

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v1, p6, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    :cond_14
    div-int/lit8 v0, p5, 0x2

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_15
    if-gtz p3, :cond_16

    div-int/lit8 v0, p7, 0x2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_16
    sub-int v0, p7, p3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_17
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    :cond_18
    div-int/lit8 v0, p6, 0x2

    add-int/2addr v0, p4

    sub-int v0, p8, v0

    if-gez v0, :cond_19

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v1, p6, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    :cond_19
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    :cond_1a
    const-string v0, "bottom-center"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    add-int v0, p4, p6

    sub-int v0, p8, v0

    if-gez v0, :cond_1b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_6
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v0, p3, p5

    if-gt v0, p7, :cond_1d

    if-gtz p3, :cond_1c

    add-int v0, p3, p5

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_1b
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_1c
    div-int/lit8 v0, p5, 0x2

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_1d
    if-gtz p3, :cond_1e

    div-int/lit8 v0, p7, 0x2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_1e
    sub-int v0, p7, p3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_1f
    const-string v0, "top-center"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-gez p4, :cond_20

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_7
    add-int v0, p3, p5

    if-gt v0, p7, :cond_22

    if-gtz p3, :cond_21

    add-int v0, p3, p5

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_20
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_7

    :cond_21
    div-int/lit8 v0, p5, 0x2

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_22
    if-gtz p3, :cond_23

    div-int/lit8 v0, p7, 0x2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_23
    sub-int v0, p7, p3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p9, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_24
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v0, p3, p5

    sub-int/2addr v0, p7

    if-lez v0, :cond_25

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_8
    if-gez p4, :cond_26

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_25
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_8

    :cond_26
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_27
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v0, p3, p5

    sub-int/2addr v0, p7

    if-lez v0, :cond_28

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_9
    if-gez p4, :cond_29

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_28
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_9

    :cond_29
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelWebView;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->W:I

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->y:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x134

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v2

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Z:I

    return p1
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->I:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->U:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->I:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$ad;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v1, p1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$ad;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->C:Z

    return p1
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->aa:I

    return p1
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->am:Z

    return p1
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelWebView;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ab:I

    return p1
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ad:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    return v0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->P:Z

    return p1
.end method

.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ae:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->q:Z

    return v0
.end method

.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->A:Z

    return p1
.end method

.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->af:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->v:Z

    return p1
.end method

.method static synthetic i(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->w:Z

    return p1
.end method

.method static synthetic j(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ah:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic j(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->x:Z

    return p1
.end method

.method static synthetic k(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ai:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic k(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->N:Z

    return p1
.end method

.method static synthetic l(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->aj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic l(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic m(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->ak:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic n(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->J:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic n(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->M:I

    return v0
.end method

.method static synthetic p(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->v:Z

    return v0
.end method

.method static synthetic q(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->C:Z

    return v0
.end method

.method static synthetic r(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$z;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->z:Lcom/admarvel/android/ads/AdMarvelWebView$z;

    return-object v0
.end method

.method static synthetic t(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->u:Z

    return v0
.end method

.method static synthetic u(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->x:Z

    return v0
.end method

.method static synthetic v(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->w:Z

    return v0
.end method

.method static synthetic w(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->N:Z

    return v0
.end method

.method static synthetic x(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->V:I

    return v0
.end method

.method static synthetic z(Lcom/admarvel/android/ads/AdMarvelWebView;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->W:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e()V

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->g()V

    :cond_2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    invoke-static {v0}, Lcom/admarvel/android/ads/ak;->b(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/admarvel/android/ads/al;->b(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method a(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    return-void
.end method

.method a(IIIILcom/admarvel/android/ads/AdMarvelView;)V
    .locals 13

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    const/16 v3, 0x131

    const/16 v4, 0x131

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSource()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->o:Ljava/lang/String;

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v1

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->IMAGE:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v1

    if-lez v1, :cond_c

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->isTabletDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->t:Z

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v1

    :goto_1
    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"><img src=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" width=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\" /></a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/admarvel/android/ads/AdMarvelWebView;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/admarvel/android/ads/AdMarvelWebView;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    :goto_2
    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->H:Ljava/lang/String;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->I:Landroid/os/Handler;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/admarvel/android/ads/AdMarvelView;Landroid/widget/RelativeLayout;Lcom/admarvel/android/ads/AdMarvelAd;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Q:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Q:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INTERNAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->I:Landroid/os/Handler;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$1;

    move/from16 v0, p4

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_10

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Q:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-static {v1}, Lcom/admarvel/android/ads/ak;->a(Landroid/webkit/WebView;)V

    :goto_3
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    const/16 v3, 0x131

    const/16 v4, 0x131

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v3

    const/16 v4, 0x13

    if-lt v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v3

    :goto_4
    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Relative Screen Width :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6

    div-float/2addr v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Image Ad Scaling factpr :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    mul-float/2addr v2, v3

    mul-float/2addr v1, v3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"><img src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" width=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" height=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" /></a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/admarvel/android/ads/AdMarvelWebView;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/admarvel/android/ads/AdMarvelWebView;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v3

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    move v4, v1

    :goto_5
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    move v3, v1

    :goto_6
    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->s:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;II)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    :goto_7
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"><img src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" width=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" height=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" /></a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/admarvel/android/ads/AdMarvelWebView;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/admarvel/android/ads/AdMarvelWebView;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v1

    move v4, v1

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v1

    move v3, v1

    goto/16 :goto_6

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v1

    goto/16 :goto_7

    :cond_c
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelWebView;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelWebView;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getXhtml()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v1

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->TEXT:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    move/from16 v0, p3

    and-int/lit16 v6, v0, 0xff

    shr-int/lit8 v7, p2, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, p2, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, p2, 0xff

    sget-object v10, Lcom/admarvel/android/ads/AdMarvelWebView;->j:Ljava/lang/String;

    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v12

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/16 v1, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelWebView;->k:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXhtml()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORMMA_API"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelWebView;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelWebView;->i:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelWebView;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->Q:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-static {v1}, Lcom/admarvel/android/ads/al;->a(Landroid/webkit/WebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method b()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f()V

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    :cond_2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    invoke-static {v0}, Lcom/admarvel/android/ads/ak;->a(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/admarvel/android/ads/al;->a(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method c()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    :cond_0
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$h;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->I:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->R:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->R:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_3
    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->K:Lcom/admarvel/android/ads/AdMarvelWebView$d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->K:Lcom/admarvel/android/ads/AdMarvelWebView$d;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$d;->b()V

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->K:Lcom/admarvel/android/ads/AdMarvelWebView$d;

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->J:Ljava/lang/ref/WeakReference;

    :cond_4
    return-void
.end method

.method d()V
    .locals 8

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->z:Lcom/admarvel/android/ads/AdMarvelWebView$z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->z:Lcom/admarvel/android/ads/AdMarvelWebView$z;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$z;->disable()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_b

    check-cast v0, Landroid/app/Activity;

    :goto_0
    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->N:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->P:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->A:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->L:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->N:Z

    :cond_1
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isAdClosing:Z

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EXPAND_BG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EXPAND_LAYOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget-boolean v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->u:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "BTN_CLOSE"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->u:Z

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "EXPAND_PLACE_HOLDER"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getChildCount()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne v7, v4, :cond_a

    :cond_5
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->removeAllViews()V

    invoke-virtual {p0, v1, v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelWebView;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->O:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->C:Z

    :cond_6
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->invalidate()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/admarvel/android/ads/s;->b()V

    :cond_7
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isAdClosing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    return-void

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getAdMarvelAd()Lcom/admarvel/android/ads/AdMarvelAd;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->S:Lcom/admarvel/android/ads/AdMarvelAd;

    return-object v0
.end method

.method public setEnableClickRedirect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView;->q:Z

    return-void
.end method
