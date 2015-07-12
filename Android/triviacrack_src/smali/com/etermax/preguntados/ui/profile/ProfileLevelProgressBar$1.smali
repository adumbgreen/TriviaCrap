.class Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;
.super Landroid/view/animation/TranslateAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->a(II)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;IFIFIFIFIF)V
    .locals 10
    .parameter
    .parameter
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
    .line 54
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->c:Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;

    move/from16 v0, p10

    iput v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->a:I

    move/from16 v0, p11

    iput v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->b:F

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/view/animation/TranslateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 58
    iget v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->b:F

    mul-float/2addr v0, v1

    .line 59
    const/high16 v1, 0x447a

    div-float v1, v0, v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->c:Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;->c:Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->b:Landroid/widget/ProgressBar;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    return-void
.end method
