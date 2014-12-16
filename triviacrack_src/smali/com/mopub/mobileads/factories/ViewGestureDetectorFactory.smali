.class public Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;->a:Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/ViewGestureDetector;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;->a:Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;->a(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/ViewGestureDetector;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    sput-object p0, Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;->a:Lcom/mopub/mobileads/factories/ViewGestureDetectorFactory;

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/ViewGestureDetector;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/mopub/mobileads/ViewGestureDetector;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)V

    return-object v0
.end method
