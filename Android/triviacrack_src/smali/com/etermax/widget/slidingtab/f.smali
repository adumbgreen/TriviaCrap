.class Lcom/etermax/widget/slidingtab/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/widget/slidingtab/c;


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/widget/slidingtab/e$1;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/etermax/widget/slidingtab/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/f;->a:[I

    iget-object v1, p0, Lcom/etermax/widget/slidingtab/f;->a:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs a([I)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/f;->a:[I

    .line 213
    return-void
.end method

.method public final b(I)I
    .locals 2
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/f;->b:[I

    iget-object v1, p0, Lcom/etermax/widget/slidingtab/f;->b:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs b([I)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/f;->b:[I

    .line 217
    return-void
.end method
