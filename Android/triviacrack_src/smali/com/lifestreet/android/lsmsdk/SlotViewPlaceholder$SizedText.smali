.class final Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mText:Ljava/lang/String;

.field private final mTextSize:F

.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;Landroid/graphics/Paint;Ljava/lang/String;F)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->this$0:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mBounds:Landroid/graphics/Rect;

    .line 74
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mText:Ljava/lang/String;

    .line 75
    const/4 v0, 0x2

    #getter for: Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->access$000(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mTextSize:F

    .line 78
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mTextSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->mTextSize:F

    return v0
.end method
