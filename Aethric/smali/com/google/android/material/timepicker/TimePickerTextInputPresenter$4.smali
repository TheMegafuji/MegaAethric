.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;
.super Lcom/google/android/material/timepicker/ClickActionDelegate;
.source "TimePickerTextInputPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

.field final synthetic val$time:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    iput-object p4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 145
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/ClickActionDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$string;->material_hour_suffix:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;->val$time:Lcom/google/android/material/timepicker/TimeModel;

    .line 149
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
