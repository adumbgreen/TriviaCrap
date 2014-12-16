.class public Lcom/google/android/gms/internal/bx;
.super Lcom/google/android/gms/internal/cm;


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Lcom/google/android/gms/internal/ci;

.field private d:Lcom/google/android/gms/internal/cd;

.field private e:Lcom/google/android/gms/internal/fz;

.field private f:Lcom/google/android/gms/internal/ca;

.field private g:Lcom/google/android/gms/internal/cg;

.field private h:Z

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/bx;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cm;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->m:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ci;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ew;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/ci;)V

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private c(Z)V
    .locals 13

    const/16 v3, 0x400

    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bx;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/w;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget v1, v1, Lcom/google/android/gms/internal/ci;->k:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bx;->a(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ft;->a(Landroid/view/Window;)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/bz;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v3, v3, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/bz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->m:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->a()Z

    move-result v3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->e()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v5, v5, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v8, v0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v9, v0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v11, v0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;ZLcom/google/android/gms/internal/an;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bx$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bx$1;-><init>(Lcom/google/android/gms/internal/bx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/gc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->loadUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/internal/bx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    sget v1, Lcom/google/android/gms/internal/bx;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->c()V

    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/bx;->a(Z)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/bx;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v6, v0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v7, v0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/fz;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/by;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/by;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->l:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->f:Lcom/google/android/gms/internal/ca;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->f:Lcom/google/android/gms/internal/ca;

    iget-object v0, v0, Lcom/google/android/gms/internal/ca;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->f:Lcom/google/android/gms/internal/ca;

    iget v2, v2, Lcom/google/android/gms/internal/ca;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/bx;->f:Lcom/google/android/gms/internal/ca;

    iget-object v3, v3, Lcom/google/android/gms/internal/ca;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cc;->o()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/bx;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/w;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->m:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/by;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/by;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/by; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->m:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cc;->p()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->l:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/iz;->r()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/by;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/by;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bx;->c(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ca;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/internal/fz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->f:Lcom/google/android/gms/internal/ca;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bx;->c(Z)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bx;->c(Z)V

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-object v2, v2, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ch;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/by; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->j()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bx;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/cg;

    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/cg;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/internal/cg;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/internal/cg;

    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ci;->h:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cg;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public b()Lcom/google/android/gms/internal/cd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    return-object v0
.end method

.method public b(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cd;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/bx;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gb;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bx;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/internal/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cg;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bx;->i:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bx;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->k:Z

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->f:Lcom/google/android/gms/internal/ca;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->a(Landroid/webkit/WebView;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bx;->l()V

    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx;->l()V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/cd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bx;->l()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bx;->h:Z

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->a(Z)V

    return-void
.end method
