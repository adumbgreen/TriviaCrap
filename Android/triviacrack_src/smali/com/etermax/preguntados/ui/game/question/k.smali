.class public Lcom/etermax/preguntados/ui/game/question/k;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/question/l;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/g/a;

.field c:Lcom/etermax/preguntados/ui/game/a/a;

.field d:Lcom/etermax/preguntados/c/a/b;

.field e:Lcom/etermax/preguntados/e/c;

.field f:Lcom/etermax/preguntados/sharing/m;

.field g:Lcom/etermax/preguntados/ui/withoutcoins/g;

.field protected h:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

.field protected i:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field protected j:I

.field protected k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field protected l:Ljava/lang/Integer;

.field protected m:Ljava/lang/String;

.field protected n:I

.field protected o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field protected q:Z

.field private r:Landroid/graphics/drawable/ColorDrawable;

.field private s:Landroid/graphics/drawable/ClipDrawable;

.field private t:Lcom/etermax/preguntados/e/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/etermax/f;->white:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->r:Landroid/graphics/drawable/ColorDrawable;

    .line 77
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->r:Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->s:Landroid/graphics/drawable/ClipDrawable;

    .line 141
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/k$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/question/k$2;-><init>(Lcom/etermax/preguntados/ui/game/question/k;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->t:Lcom/etermax/preguntados/e/a;

    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILjava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/GameType;",
            "Lcom/etermax/preguntados/ui/game/duelmode/g;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/m;->i()Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/question/n;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/question/n;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/n;->b(I)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/question/n;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/game/question/n;->a(I)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/etermax/preguntados/ui/game/question/n;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/etermax/preguntados/ui/game/question/n;->a(Ljava/lang/Integer;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/etermax/preguntados/ui/game/question/n;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/n;->a()Lcom/etermax/preguntados/ui/game/question/k;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 105
    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILjava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/m;->i()Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/question/n;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/question/n;->a(I)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/n;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/question/n;->a(Ljava/lang/Integer;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/game/question/n;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/etermax/preguntados/ui/game/question/n;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Lcom/etermax/preguntados/ui/game/question/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/n;->a()Lcom/etermax/preguntados/ui/game/question/k;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    const/4 v2, 0x0

    sget v4, Lcom/etermax/f;->challenge_color:I

    move-object v1, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILjava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/k;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/etermax/preguntados/h/c;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v1

    .line 226
    sget v0, Lcom/etermax/i;->question_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 227
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    sget v0, Lcom/etermax/i;->question_image_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 232
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 5
    .parameter

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/k;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 369
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->p:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    if-ne v0, v2, :cond_0

    .line 370
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->e:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/e/c;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/etermax/preguntados/ui/game/question/k$5;->a:[I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->n:I

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->questionTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/widget/TextView;)V

    .line 191
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_header_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->button_continue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/etermax/o;->continue_:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 193
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->report_question_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 197
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->category_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->i:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/c/a/e;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->countdown_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 202
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->s:Landroid/graphics/drawable/ClipDrawable;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 203
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 204
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->s:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->o()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->h:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->h:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->h()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/k;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->countdown_share_switcher:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 218
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_authors:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/etermax/preguntados/ui/game/question/b;

    invoke-direct {v1}, Lcom/etermax/preguntados/ui/game/question/b;-><init>()V

    .line 220
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAuthor()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getTranslator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/etermax/preguntados/ui/game/question/b;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 221
    return-void

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->e:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/e/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->e:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->t:Lcom/etermax/preguntados/e/a;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/e/a;)V

    goto/16 :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x5

    new-array v2, v0, [I

    sget v0, Lcom/etermax/i;->question_authors:I

    aput v0, v2, v1

    const/4 v0, 0x1

    sget v3, Lcom/etermax/i;->vote_negative_button_container:I

    aput v3, v2, v0

    const/4 v0, 0x2

    sget v3, Lcom/etermax/i;->vote_positive_button_container:I

    aput v3, v2, v0

    const/4 v0, 0x3

    sget v3, Lcom/etermax/i;->button_continue:I

    aput v3, v2, v0

    const/4 v0, 0x4

    sget v3, Lcom/etermax/i;->report_question_textview:I

    aput v3, v2, v0

    move v0, v1

    .line 277
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 279
    invoke-virtual {p0, v3, v1}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/view/View;Z)V

    .line 280
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->j()Landroid/view/animation/Animation;

    move-result-object v4

    .line 281
    mul-int/lit8 v5, v0, 0x64

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 282
    new-instance v5, Lcom/etermax/preguntados/ui/game/question/k$3;

    invoke-direct {v5, p0, v3}, Lcom/etermax/preguntados/ui/game/question/k$3;-><init>(Lcom/etermax/preguntados/ui/game/question/k;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 298
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/l;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/k$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/question/k$1;-><init>(Lcom/etermax/preguntados/ui/game/question/k;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 343
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 344
    check-cast p1, Landroid/view/ViewGroup;

    .line 345
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 347
    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 348
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0, v1, p2}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/view/View;Z)V

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 355
    :cond_2
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->b:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->g:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/etermax/i;->question_authors:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget v4, Lcom/etermax/i;->vote_negative_button_container:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget v4, Lcom/etermax/i;->vote_positive_button_container:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget v4, Lcom/etermax/i;->button_continue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->q:Z

    if-nez v0, :cond_0

    .line 311
    sget v0, Lcom/etermax/i;->report_question_textview:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 315
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0, v2}, Lcom/etermax/preguntados/ui/game/question/k;->a(Landroid/view/View;Z)V

    .line 321
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->k()Landroid/view/animation/Animation;

    move-result-object v5

    .line 322
    mul-int/lit8 v6, v1, 0x64

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 323
    new-instance v6, Lcom/etermax/preguntados/ui/game/question/k$4;

    invoke-direct {v6, p0, v1, v4, p1}, Lcom/etermax/preguntados/ui/game/question/k$4;-><init>(Lcom/etermax/preguntados/ui/game/question/k;IILcom/etermax/preguntados/datasource/dto/GameDTO;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 338
    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    .line 158
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->g:Lcom/etermax/preguntados/ui/withoutcoins/g;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/withoutcoins/g;->a(Lcom/etermax/tools/navigation/BaseFragmentActivity;)V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/k;->i()V

    .line 161
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/k;->j()V

    .line 162
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->o:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/util/ArrayList;)V

    .line 249
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/l;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->l:Ljava/lang/Integer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/k;->o:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/l;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V

    .line 250
    return-void
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->o:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/util/ArrayList;)V

    .line 254
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/l;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->l:Ljava/lang/Integer;

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/Vote;->POSITIVE:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/k;->o:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/l;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V

    .line 255
    return-void
.end method

.method protected e()V
    .locals 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->o:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/util/ArrayList;)V

    .line 259
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/l;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->l:Ljava/lang/Integer;

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/Vote;->NEGATIVE:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/k;->o:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/l;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V

    .line 260
    return-void
.end method

.method protected f()V
    .locals 5

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/k;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/k;->i:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/k;->e:Lcom/etermax/preguntados/e/c;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/sharing/l;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/ui/game/duelmode/g;Lcom/etermax/preguntados/e/c;)Lcom/etermax/preguntados/sharing/k;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->f:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 266
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/l;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k;->k:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/question/l;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    .line 360
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->a()Lcom/etermax/preguntados/ui/game/question/l;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/k;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->report_question_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/k;->q:Z

    .line 365
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    sget v0, Lcom/etermax/k;->game_question_vote_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
