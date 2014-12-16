.class public Lcom/etermax/chat/ui/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/etermax/chat/a/a;

.field private i:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/etermax/chat/ui/adapter/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/etermax/gamescommon/dashboard/b;

.field private k:Lcom/etermax/chat/ui/adapter/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/etermax/chat/ui/adapter/a;->c:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/etermax/chat/ui/adapter/a;->d:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/etermax/chat/ui/adapter/a;->e:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/etermax/chat/ui/adapter/a;->f:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/etermax/chat/ui/adapter/a;->g:I

    .line 34
    const/4 v0, 0x5

    sput v0, Lcom/etermax/chat/ui/adapter/a;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 140
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 114
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    .line 117
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/etermax/chat/ui/adapter/a/f;

    iget-object v4, p0, Lcom/etermax/chat/ui/adapter/a;->j:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v5, p0, Lcom/etermax/chat/ui/adapter/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/etermax/chat/ui/adapter/a/f;-><init>(Lcom/etermax/gamescommon/dashboard/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v1, 0x1

    new-instance v3, Lcom/etermax/chat/ui/adapter/a/g;

    iget-object v4, p0, Lcom/etermax/chat/ui/adapter/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/etermax/chat/ui/adapter/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v1, 0x2

    new-instance v3, Lcom/etermax/chat/ui/adapter/a/c;

    invoke-direct {v3}, Lcom/etermax/chat/ui/adapter/a/c;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v1, 0x3

    new-instance v3, Lcom/etermax/chat/ui/adapter/a/a;

    invoke-direct {v3}, Lcom/etermax/chat/ui/adapter/a/a;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v1, 0x4

    new-instance v3, Lcom/etermax/chat/ui/adapter/a/e;

    invoke-direct {v3}, Lcom/etermax/chat/ui/adapter/a/e;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v1, 0x5

    new-instance v3, Lcom/etermax/chat/ui/adapter/a/d;

    iget-object v4, p0, Lcom/etermax/chat/ui/adapter/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/etermax/chat/ui/adapter/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 125
    return-void
.end method


# virtual methods
.method public a(I)Lcom/etermax/chat/a/f;
    .locals 1
    .parameter

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->b:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {p0}, Lcom/etermax/chat/ui/adapter/a;->notifyDataSetChanged()V

    .line 68
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->j:Lcom/etermax/gamescommon/dashboard/b;

    .line 50
    invoke-direct {p0}, Lcom/etermax/chat/ui/adapter/a;->c()V

    .line 52
    return-void
.end method

.method public a(Lcom/etermax/chat/ui/adapter/b;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/etermax/chat/ui/adapter/a;->k:Lcom/etermax/chat/ui/adapter/b;

    .line 136
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/etermax/chat/ui/adapter/a;->notifyDataSetChanged()V

    .line 129
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->k:Lcom/etermax/chat/ui/adapter/b;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->k:Lcom/etermax/chat/ui/adapter/b;

    invoke-interface {v0}, Lcom/etermax/chat/ui/adapter/b;->a()V

    .line 132
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->b:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/adapter/a;->a(I)Lcom/etermax/chat/a/f;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/adapter/a;->a(I)Lcom/etermax/chat/a/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    sget v0, Lcom/etermax/chat/ui/adapter/a;->g:I

    .line 90
    :goto_0
    return v0

    .line 77
    :cond_0
    sget-object v0, Lcom/etermax/chat/ui/adapter/a$1;->a:[I

    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/adapter/a;->a(I)Lcom/etermax/chat/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    sget v0, Lcom/etermax/chat/ui/adapter/a;->c:I

    goto :goto_0

    .line 79
    :pswitch_0
    sget v0, Lcom/etermax/chat/ui/adapter/a;->f:I

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/adapter/a;->a(I)Lcom/etermax/chat/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget v0, Lcom/etermax/chat/ui/adapter/a;->d:I

    goto :goto_0

    .line 84
    :cond_1
    sget v0, Lcom/etermax/chat/ui/adapter/a;->c:I

    goto :goto_0

    .line 86
    :pswitch_2
    sget v0, Lcom/etermax/chat/ui/adapter/a;->e:I

    goto :goto_0

    .line 88
    :pswitch_3
    sget v0, Lcom/etermax/chat/ui/adapter/a;->h:I

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/adapter/a;->getItemViewType(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/ui/adapter/a/b;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/adapter/a;->a(I)Lcom/etermax/chat/a/f;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/etermax/chat/ui/adapter/a/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;

    move-result-object p2

    .line 106
    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a;->i:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method
