.class final Lcom/millennialmedia/a/a/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/millennialmedia/a/a/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 850
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    if-eqz v1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 853
    :cond_0
    return-object v0
.end method

.method a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 770
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 771
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    .line 772
    iput v1, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    .line 773
    iput v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 775
    return-void
.end method

.method a(Lcom/millennialmedia/a/a/b/p;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 779
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 780
    iput v6, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 783
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 784
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    .line 785
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    .line 786
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 790
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 791
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    .line 794
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 795
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    .line 796
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    .line 797
    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    .line 815
    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_5

    .line 816
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    if-nez v1, :cond_3

    .line 819
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 820
    iget-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 821
    iget-object v3, v2, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 822
    iget-object v4, v3, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v4, v2, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 823
    iput-object v2, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 825
    iput-object v3, v2, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 826
    iput-object v1, v2, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 827
    iget v4, v1, Lcom/millennialmedia/a/a/b/p;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 828
    iput-object v2, v3, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 829
    iput-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 815
    :cond_2
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 830
    :cond_3
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    if-ne v1, v6, :cond_4

    .line 833
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 834
    iget-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 835
    iput-object v2, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    .line 837
    iput-object v1, v2, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 838
    iget v3, v1, Lcom/millennialmedia/a/a/b/p;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 839
    iput-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 840
    iput v5, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    goto :goto_1

    .line 841
    :cond_4
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 842
    iput v5, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    goto :goto_1

    .line 845
    :cond_5
    return-void
.end method
