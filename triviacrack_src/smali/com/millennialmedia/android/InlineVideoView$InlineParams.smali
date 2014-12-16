.class Lcom/millennialmedia/android/InlineVideoView$InlineParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z

.field n:Z

.field o:Z

.field p:F

.field q:I

.field r:Z

.field s:Z

.field t:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->o:Z

    .line 88
    const-string v0, "x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    .line 90
    :cond_0
    const-string v0, "y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    .line 92
    :cond_1
    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->f:I

    .line 94
    :cond_2
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->g:I

    .line 96
    :cond_3
    const-string v0, "streamVideoURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->i:Ljava/lang/String;

    .line 97
    const-string v0, "cachedVideoURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->j:Ljava/lang/String;

    .line 98
    const-string v0, "cachedVideoID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    .line 99
    const-string v0, "autoPlay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    const-string v0, "autoPlay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    .line 101
    :cond_4
    const-string v0, "showControls"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 102
    const-string v0, "showControls"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->n:Z

    .line 104
    :cond_5
    const-string v0, "bodyWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 105
    const-string v0, "bodyWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->d:I

    .line 106
    :cond_6
    const-string v0, "bodyHeight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 107
    const-string v0, "bodyHeight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->e:I

    .line 109
    :cond_7
    const-string v0, "touchCallback"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->l:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    .line 112
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/millennialmedia/a/a/e;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/e;-><init>()V

    const-class v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, p0, v1}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    return-object v0
.end method


# virtual methods
.method b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    new-instance v0, Lcom/millennialmedia/a/a/e;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/e;-><init>()V

    const-class v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .line 132
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    .line 133
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    .line 134
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->d:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->d:I

    .line 135
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->e:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->e:I

    .line 136
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->f:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->f:I

    .line 137
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->g:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->g:I

    .line 138
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 139
    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->i:Ljava/lang/String;

    .line 140
    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->j:Ljava/lang/String;

    .line 141
    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    .line 142
    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->l:Ljava/lang/String;

    .line 143
    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    .line 144
    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->n:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->n:Z

    .line 145
    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->o:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->o:Z

    .line 146
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    .line 147
    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b:Z

    .line 148
    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->q:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->q:I

    .line 149
    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    .line 151
    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gson*****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAMS*****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    const-string v0, "%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
