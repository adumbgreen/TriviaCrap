.class Lcom/millennialmedia/android/DTOResizeParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:Z

.field g:I

.field h:I


# direct methods
.method constructor <init>(FIILjava/lang/String;IIZII)V
    .locals 1
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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->a:I

    .line 11
    int-to-float v0, p3

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->b:I

    .line 12
    iput-object p4, p0, Lcom/millennialmedia/android/DTOResizeParameters;->c:Ljava/lang/String;

    .line 13
    int-to-float v0, p5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->d:I

    .line 14
    int-to-float v0, p6

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->e:I

    .line 15
    iput-boolean p7, p0, Lcom/millennialmedia/android/DTOResizeParameters;->f:Z

    .line 16
    iput p8, p0, Lcom/millennialmedia/android/DTOResizeParameters;->g:I

    .line 17
    iput p9, p0, Lcom/millennialmedia/android/DTOResizeParameters;->h:I

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    const-string v0, "width[%d] height[%d] offsetX[%d] offsetY[%d] allowOffScreen[%b] customClosePosition[%s] maxX[%d] maxY[%d]"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
