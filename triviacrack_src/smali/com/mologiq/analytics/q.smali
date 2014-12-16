.class Lcom/mologiq/analytics/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/p;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mologiq/analytics/p;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mologiq/analytics/q;->a:Lcom/mologiq/analytics/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/mologiq/analytics/q;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput p1, p0, Lcom/mologiq/analytics/q;->b:I

    .line 157
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mologiq/analytics/q;->d:Ljava/util/List;

    .line 177
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/mologiq/analytics/q;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/mologiq/analytics/q;->c:I

    .line 167
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mologiq/analytics/q;->d:Ljava/util/List;

    return-object v0
.end method
