.class public Lcom/mologiq/analytics/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/ad;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/aj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mologiq/analytics/aj;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/mologiq/analytics/af;->a:Lcom/mologiq/analytics/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/aj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lcom/mologiq/analytics/af;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/mologiq/analytics/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/mologiq/analytics/af;->c:Lcom/mologiq/analytics/aj;

    .line 871
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    iput-object p1, p0, Lcom/mologiq/analytics/af;->b:Ljava/util/List;

    .line 861
    return-void
.end method

.method public b()Lcom/mologiq/analytics/aj;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/mologiq/analytics/af;->c:Lcom/mologiq/analytics/aj;

    return-object v0
.end method
