.class Lcom/etermax/tools/widget/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/ProfileProgressBar;


# direct methods
.method private constructor <init>(Lcom/etermax/tools/widget/ProfileProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/widget/ProfileProgressBar;Lcom/etermax/tools/widget/ProfileProgressBar$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/etermax/tools/widget/b;-><init>(Lcom/etermax/tools/widget/ProfileProgressBar;)V

    return-void
.end method

.method private a(FF)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    .line 173
    move v3, v1

    move v0, p2

    move v2, p1

    .line 174
    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 175
    sub-float/2addr v2, v6

    .line 176
    sub-float p2, v0, v6

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    float-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    float-to-int v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    iget-object v4, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v4, v4, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    iget-object v4, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v4, v4, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/b;->publishProgress([Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v0, v3, 0x1

    .line 179
    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    move v3, v0

    move v0, p2

    goto :goto_0

    :cond_0
    move v3, v2

    move v2, v0

    move v0, v1

    .line 182
    :goto_1
    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 183
    add-float/2addr v3, v6

    .line 184
    add-float/2addr v2, v6

    .line 185
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Integer;

    float-to-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    float-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v5, v5, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v5, v5, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v4}, Lcom/etermax/tools/widget/b;->publishProgress([Ljava/lang/Object;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 190
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .parameter

    .prologue
    .line 107
    const-wide/16 v1, 0x352

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v2, v2, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    add-int v3, v1, v2

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 112
    if-eqz v3, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v2, v2, Lcom/etermax/tools/widget/ProfileProgressBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v1, v2

    div-int v2, v1, v3

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v4, v4, Lcom/etermax/tools/widget/ProfileProgressBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    mul-int/2addr v1, v4

    div-int/2addr v1, v3

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v3, v3, Lcom/etermax/tools/widget/ProfileProgressBar;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v2

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v3, v3, Lcom/etermax/tools/widget/ProfileProgressBar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v2, v2, Lcom/etermax/tools/widget/ProfileProgressBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 127
    :cond_2
    const/4 v7, 0x0

    .line 129
    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v3, v3, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 130
    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v2, v2, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v5, 0x0

    .line 135
    const/4 v4, 0x0

    .line 136
    const/4 v3, 0x0

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v2, v2, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v2, v2, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 144
    const-wide/16 v8, 0x12c

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    move v9, v7

    .line 145
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v7, v7, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    if-gt v9, v7, :cond_4

    .line 148
    add-float v8, v6, v10

    .line 149
    add-float v7, v5, v11

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v5, v5, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6

    add-float v6, v4, v12

    .line 152
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v4, v4, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    add-float v5, v3, v13

    .line 154
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 158
    sub-long v1, v3, v1

    .line 160
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    float-to-int v0, v8

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    float-to-int v0, v7

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    float-to-int v0, v6

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    float-to-int v0, v5

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/etermax/tools/widget/b;->publishProgress([Ljava/lang/Object;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v14, v14, Lcom/etermax/tools/widget/ProfileProgressBar;->j:I

    int-to-long v14, v14

    cmp-long v14, v1, v14

    if-gez v14, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v14, v14, Lcom/etermax/tools/widget/ProfileProgressBar;->j:I

    int-to-long v14, v14

    sub-long v1, v14, v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_3
    move-wide v1, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    .line 165
    goto :goto_0

    .line 167
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/etermax/tools/widget/b;->a(FF)V

    .line 169
    const/4 v1, 0x0

    return-object v1

    :cond_5
    move v5, v3

    goto :goto_2

    :cond_6
    move v6, v4

    goto :goto_1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    invoke-static {v0}, Lcom/etermax/tools/widget/ProfileProgressBar;->a(Lcom/etermax/tools/widget/ProfileProgressBar;)V

    .line 197
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->d:Landroid/widget/RelativeLayout;

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/etermax/tools/widget/ProfileProgressBar;->a(Lcom/etermax/tools/widget/ProfileProgressBar;Landroid/widget/RelativeLayout;I)V

    .line 201
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v1, v1, Lcom/etermax/tools/widget/ProfileProgressBar;->e:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/etermax/tools/widget/ProfileProgressBar;->a(Lcom/etermax/tools/widget/ProfileProgressBar;Landroid/widget/RelativeLayout;I)V

    .line 202
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/etermax/tools/widget/b;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    iget-object v0, v0, Lcom/etermax/tools/widget/ProfileProgressBar;->c:Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/b;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/b;->a([Ljava/lang/Integer;)V

    return-void
.end method
