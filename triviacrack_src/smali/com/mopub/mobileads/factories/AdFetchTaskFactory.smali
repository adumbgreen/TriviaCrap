.class public Lcom/mopub/mobileads/factories/AdFetchTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/AdFetchTaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;->a:Lcom/mopub/mobileads/factories/AdFetchTaskFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mopub/mobileads/TaskTracker;Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;I)Lcom/mopub/mobileads/AdFetchTask;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;->a:Lcom/mopub/mobileads/factories/AdFetchTaskFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;->a(Lcom/mopub/mobileads/TaskTracker;Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;I)Lcom/mopub/mobileads/AdFetchTask;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/AdFetchTaskFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12
    sput-object p0, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;->a:Lcom/mopub/mobileads/factories/AdFetchTaskFactory;

    .line 13
    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/TaskTracker;Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;I)Lcom/mopub/mobileads/AdFetchTask;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/mopub/mobileads/AdFetchTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mopub/mobileads/AdFetchTask;-><init>(Lcom/mopub/mobileads/TaskTracker;Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;I)V

    return-object v0
.end method
