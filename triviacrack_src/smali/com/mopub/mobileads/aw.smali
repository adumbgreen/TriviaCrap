.class Lcom/mopub/mobileads/aw;
.super Lcom/mopub/mobileads/ae;
.source "SourceFile"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field protected a:F

.field protected b:I

.field protected c:I

.field private e:Lcom/mopub/mobileads/MraidView$ViewState;

.field private final f:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

.field private final g:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

.field private h:Lcom/mopub/mobileads/MraidView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/os/Handler;

.field private final k:I

.field private l:Lcom/mopub/mobileads/ay;

.field private m:Landroid/widget/ImageView;

.field private n:Z

.field private o:I

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private final s:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mobileads/aw;->d:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/ae;-><init>(Lcom/mopub/mobileads/MraidView;)V

    .line 88
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->HIDDEN:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->j:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/mopub/mobileads/ay;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/ay;-><init>(Lcom/mopub/mobileads/aw;)V

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->l:Lcom/mopub/mobileads/ay;

    .line 122
    iput v1, p0, Lcom/mopub/mobileads/aw;->b:I

    .line 125
    iput v1, p0, Lcom/mopub/mobileads/aw;->c:I

    .line 140
    iput-object p2, p0, Lcom/mopub/mobileads/aw;->f:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    .line 141
    iput-object p3, p0, Lcom/mopub/mobileads/aw;->g:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    .line 143
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    .line 144
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/mopub/mobileads/aw;->k:I

    .line 148
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->k()V

    .line 150
    new-instance v0, Lcom/mopub/mobileads/aw$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/aw$1;-><init>(Lcom/mopub/mobileads/aw;)V

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->s:Landroid/view/View$OnClickListener;

    .line 157
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    .line 158
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->h()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->r:Landroid/widget/RelativeLayout;

    .line 159
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->i()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->p:Landroid/widget/FrameLayout;

    .line 160
    return-void

    :cond_0
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/mobileads/aw;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/aw;Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/aw;->a(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 773
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 775
    if-nez v0, :cond_1

    .line 776
    const/4 v0, 0x0

    .line 796
    :cond_0
    :goto_0
    return-object v0

    .line 779
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 781
    const-string v1, "Content-Type"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_0

    .line 783
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 784
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 786
    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 784
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->l()V

    .line 200
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/aw;->b:I

    iget v2, p0, Lcom/mopub/mobileads/aw;->c:I

    invoke-static {v1, v2}, Lcom/mopub/mobileads/bb;->createWithSize(II)Lcom/mopub/mobileads/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ba;)V

    .line 202
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 651
    const/high16 v0, 0x4248

    iget v1, p0, Lcom/mopub/mobileads/aw;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 652
    if-ge p2, v0, :cond_0

    move p2, v0

    .line 653
    :cond_0
    if-ge p3, v0, :cond_1

    move p3, v0

    .line 655
    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 656
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 657
    new-instance v1, Lcom/mopub/mobileads/aw$6;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/aw$6;-><init>(Lcom/mopub/mobileads/aw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 663
    iget-object v1, p0, Lcom/mopub/mobileads/aw;->r:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/aw;->a(Landroid/widget/FrameLayout;)V

    .line 671
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 672
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 673
    iget-object v1, p0, Lcom/mopub/mobileads/aw;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/aw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mopub/mobileads/aw;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 610
    packed-switch p1, :pswitch_data_0

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :pswitch_0
    const-string v0, "SU"

    .line 620
    :goto_0
    return-object v0

    .line 612
    :pswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 613
    :pswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 614
    :pswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 615
    :pswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 616
    :pswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 617
    :pswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 462
    const-string v0, "description"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing start and description fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    const-string v0, "title"

    const-string v2, "description"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 469
    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_6

    .line 471
    const-string v2, "beginTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 480
    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_8

    .line 482
    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_2
    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    const-string v0, "eventLocation"

    const-string v2, "location"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_3
    const-string v0, "summary"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    const-string v0, "description"

    const-string v2, "summary"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_4
    const-string v0, "transparency"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 497
    const-string v2, "availability"

    const-string v0, "transparency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "transparent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_5
    const-string v0, "rrule"

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-object v1

    .line 473
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: start is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/mopub/mobileads/aw;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->m()I

    move-result v0

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 626
    if-eqz p1, :cond_0

    const/16 v0, -0x1f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    return-object v0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid day of month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    const-string v0, "frequency"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "frequency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 530
    const-string v1, "interval"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 531
    const-string v1, "interval"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 533
    :goto_0
    const-string v4, "daily"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    const-string v0, "FREQ=DAILY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    if-eq v1, v2, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 538
    :cond_1
    const-string v4, "weekly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 539
    const-string v0, "FREQ=WEEKLY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    if-eq v1, v2, :cond_2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_2
    const-string v0, "daysInWeek"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "daysInWeek"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    if-nez v0, :cond_3

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 550
    :cond_4
    const-string v4, "monthly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 551
    const-string v0, "FREQ=MONTHLY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    if-eq v1, v2, :cond_5

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_5
    const-string v0, "daysInMonth"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "daysInMonth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    if-nez v0, :cond_6

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 560
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 563
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frequency is only supported for daily, weekly, and monthly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->j:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/aw$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/aw$3;-><init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    .line 680
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 681
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 684
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 688
    :goto_1
    return-void

    .line 681
    :cond_0
    iget v1, p0, Lcom/mopub/mobileads/aw;->k:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    const-string v0, "MraidDisplayController"

    const-string v1, "Unable to modify device orientation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->q()Ljava/io/File;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 337
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mopub/mobileads/aw$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/mopub/mobileads/aw$4;-><init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 388
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 391
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    const-string v1, "Save Image"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download image to Picture gallery?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Okay"

    new-instance v2, Lcom/mopub/mobileads/aw$5;

    invoke-direct {v2, p0, p1}, Lcom/mopub/mobileads/aw$5;-><init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 404
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 512
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    sget-object v2, Lcom/mopub/mobileads/aw;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 514
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/mopub/mobileads/aw;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 515
    if-eqz v0, :cond_1

    .line 522
    :cond_0
    return-object v0

    .line 518
    :catch_0
    move-exception v2

    .line 512
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x7

    const/4 v1, 0x0

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    new-array v4, v8, [Z

    .line 572
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 574
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 575
    aget-object v2, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 576
    if-ne v2, v8, :cond_0

    move v2, v1

    .line 577
    :cond_0
    aget-boolean v6, v4, v2

    if-nez v6, :cond_1

    .line 578
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/mopub/mobileads/aw;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/4 v6, 0x1

    aput-boolean v6, v4, v2

    .line 574
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_2
    array-length v0, v5

    if-nez v0, :cond_3

    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least 1 day of the week if specifying repeating weekly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    const/16 v0, 0x3f

    new-array v2, v0, [Z

    .line 592
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 594
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 595
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 596
    add-int/lit8 v5, v4, 0x1f

    aget-boolean v5, v2, v5

    if-nez v5, :cond_0

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4}, Lcom/mopub/mobileads/aw;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    add-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_1
    array-length v0, v3

    if-nez v0, :cond_2

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least 1 day of the month if specifying repeating weekly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->LOADING:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 164
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->l()V

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->l:Lcom/mopub/mobileads/ay;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ay;->register(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v6, 0x4064

    .line 169
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    .line 170
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 172
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mopub/mobileads/aw;->a:F

    .line 176
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 177
    check-cast v0, Landroid/app/Activity;

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 180
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 181
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 182
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 183
    sub-int/2addr v0, v2

    .line 186
    :goto_0
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v2, v4, v2

    sub-int v0, v2, v0

    .line 188
    int-to-double v1, v1

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v4, v4

    div-double v4, v6, v4

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/mopub/mobileads/aw;->b:I

    .line 189
    int-to-double v0, v0

    iget v2, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/mopub/mobileads/aw;->c:I

    .line 190
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private m()I
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 195
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/aw;->a(Z)V

    .line 248
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 250
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    .line 251
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 253
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->requestLayout()V

    .line 255
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/aw;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 257
    iget-object v1, p0, Lcom/mopub/mobileads/aw;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 259
    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 636
    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 640
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 641
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 644
    :cond_1
    iput v1, p0, Lcom/mopub/mobileads/aw;->o:I

    .line 645
    iget-object v2, p0, Lcom/mopub/mobileads/aw;->p:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 647
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 640
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private p()Landroid/content/Context;
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private q()Ljava/io/File;
    .locals 3

    .prologue
    .line 769
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget v1, p0, Lcom/mopub/mobileads/aw;->b:I

    iget v2, p0, Lcom/mopub/mobileads/aw;->c:I

    invoke-static {v1, v2}, Lcom/mopub/mobileads/bb;->createWithSize(II)Lcom/mopub/mobileads/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getIsVisible()Z

    move-result v1

    invoke-static {v1}, Lcom/mopub/mobileads/bg;->createWithViewable(Z)Lcom/mopub/mobileads/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->a(Ljava/util/ArrayList;)V

    .line 220
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 221
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/bc;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ba;)V

    .line 222
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->j()V

    .line 223
    return-void
.end method

.method a(Landroid/widget/FrameLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 739
    const/high16 v0, 0x4248

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 740
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 742
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->s:Landroid/view/View$OnClickListener;

    invoke-static {p1, v1, v0}, Lcom/mopub/mobileads/util/Interstitials;->addCloseEventRegion(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View$OnClickListener;)Z

    .line 743
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->STORE_PICTURE:Lcom/mopub/mobileads/ak;

    const-string v2, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 311
    const-string v0, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "Downloading image to Picture gallery..."

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw;->c(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;IIZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 263
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->f:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    if-ne v0, v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->EXPAND:Lcom/mopub/mobileads/ak;

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->i:Landroid/widget/FrameLayout;

    .line 275
    invoke-virtual {p0, p4}, Lcom/mopub/mobileads/aw;->b(Z)V

    .line 276
    invoke-direct {p0, p5}, Lcom/mopub/mobileads/aw;->c(Z)V

    .line 277
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->o()V

    .line 279
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    .line 280
    if-eqz p1, :cond_3

    .line 281
    new-instance v0, Lcom/mopub/mobileads/MraidView;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getAdConfiguration()Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v4, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v5, Lcom/mopub/mobileads/MraidView$PlacementType;->INLINE:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->h:Lcom/mopub/mobileads/MraidView;

    .line 283
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->h:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/aw$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/aw$2;-><init>(Lcom/mopub/mobileads/aw;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setMraidListener(Lcom/mopub/mobileads/MraidView$MraidListener;)V

    .line 288
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->h:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->h:Lcom/mopub/mobileads/MraidView;

    .line 292
    :cond_3
    int-to-float v1, p2

    iget v2, p0, Lcom/mopub/mobileads/aw;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/mopub/mobileads/aw;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/mobileads/aw;->a(Landroid/view/View;II)V

    .line 293
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->r:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->g:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/mopub/mobileads/aw;->n:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mopub/mobileads/aw;->g:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_5

    .line 299
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/aw;->a(Z)V

    .line 302
    :cond_5
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 303
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/bc;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ba;)V

    .line 304
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getMraidListener()Lcom/mopub/mobileads/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getMraidListener()Lcom/mopub/mobileads/MraidView$MraidListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/MraidView$MraidListener;->onExpand(Lcom/mopub/mobileads/MraidView;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 8
    .parameter
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

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 428
    invoke-static {v2}, Lcom/mopub/mobileads/util/Mraids;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/aw;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 432
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 434
    instance-of v6, v1, Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 435
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    const-string v0, "MraidDisplayController"

    const-string v1, "no calendar app installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

    const-string v2, "Action is unsupported on this device - no calendar app installed"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 458
    :goto_1
    return-void

    .line 436
    :cond_0
    :try_start_1
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 437
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 447
    :catch_1
    move-exception v0

    .line 448
    const-string v1, "MraidDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create calendar: invalid parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/ak;->CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :cond_1
    :try_start_2
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 450
    :catch_2
    move-exception v0

    .line 451
    const-string v0, "MraidDisplayController"

    const-string v1, "could not create calendar event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

    const-string v2, "could not create calendar event"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_2
    const/high16 v0, 0x1000

    :try_start_3
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 455
    :cond_3
    const-string v0, "MraidDisplayController"

    const-string v1, "unsupported action createCalendarEvent for devices pre-ICS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

    const-string v2, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 691
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->i:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    if-eqz p1, :cond_3

    .line 696
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 697
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 698
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/mopub/common/util/Drawables;

    iget-object v3, p0, Lcom/mopub/mobileads/aw;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 699
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/mopub/common/util/Drawables;

    iget-object v3, p0, Lcom/mopub/mobileads/aw;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 700
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    .line 701
    iget-object v1, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 703
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/mopub/mobileads/aw$7;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/aw$7;-><init>(Lcom/mopub/mobileads/aw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    :cond_2
    const/high16 v0, 0x4248

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 711
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 713
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/mopub/mobileads/MraidView;Z)V

    goto :goto_0

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->n()V

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw;->c(Z)V

    .line 233
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 234
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/bc;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ba;)V

    .line 241
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getMraidListener()Lcom/mopub/mobileads/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getMraidListener()Lcom/mopub/mobileads/MraidView$MraidListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-interface {v0, v1, v2}, Lcom/mopub/mobileads/MraidView$MraidListener;->onClose(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ViewState;)V

    .line 244
    :cond_1
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setVisibility(I)V

    .line 237
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->HIDDEN:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 238
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/aw;->e:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/bc;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ba;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getAdConfiguration()Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)V

    .line 408
    return-void
.end method

.method protected b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 725
    iput-boolean p1, p0, Lcom/mopub/mobileads/aw;->n:Z

    .line 727
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    .line 728
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 729
    :goto_0
    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/mopub/mobileads/MraidView;Z)V

    .line 732
    :cond_0
    return-void

    .line 728
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->GET_CURRENT_POSITION:Lcom/mopub/mobileads/ak;

    const-string v2, "Unsupported action getCurrentPosition"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->GET_DEFAULT_POSITION:Lcom/mopub/mobileads/ak;

    const-string v2, "Unsupported action getDefaultPosition"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->l:Lcom/mopub/mobileads/ay;

    invoke-virtual {v0}, Lcom/mopub/mobileads/ay;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    throw v0
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->GET_MAX_SIZE:Lcom/mopub/mobileads/ak;

    const-string v2, "Unsupported action getMaxSize"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->GET_SCREEN_SIZE:Lcom/mopub/mobileads/ak;

    const-string v2, "Unsupported action getScreenSize"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method g()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 735
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCloseOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/mopub/mobileads/aw;->s:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method h()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 746
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method i()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 750
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected j()V
    .locals 4

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/mopub/mobileads/aw;->p()Landroid/content/Context;

    move-result-object v0

    .line 759
    invoke-virtual {p0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    new-instance v2, Lcom/mopub/mobileads/bd;

    invoke-direct {v2}, Lcom/mopub/mobileads/bd;-><init>()V

    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isTelAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/bd;->withTel(Z)Lcom/mopub/mobileads/bd;

    move-result-object v2

    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isSmsAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/bd;->withSms(Z)Lcom/mopub/mobileads/bd;

    move-result-object v2

    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/bd;->withCalendar(Z)Lcom/mopub/mobileads/bd;

    move-result-object v2

    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isInlineVideoAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/bd;->withInlineVideo(Z)Lcom/mopub/mobileads/bd;

    move-result-object v2

    invoke-static {v0}, Lcom/mopub/mobileads/util/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/bd;->withStorePicture(Z)Lcom/mopub/mobileads/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ba;)V

    .line 766
    return-void
.end method
